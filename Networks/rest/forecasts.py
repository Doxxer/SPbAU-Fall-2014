import os
from pickle import HIGHEST_PROTOCOL
import shelve

import forecastio

from forecastio.models import Forecast

from errors import TaskNotFoundError, IncorrectLocationError
from main import app, FORECAST_API


def open_database():
    return shelve.open(os.path.join(app.root_path, app.config['DATABASE']), protocol=HIGHEST_PROTOCOL, writeback=True)


def get_forecast_from_internet(latitude, longitude):
    forecast = forecastio.load_forecast(FORECAST_API, latitude, longitude, units="si", lang='ru')
    # forecast = load(open(os.path.join(app.root_path, 'f.txt'), 'r'))

    # dump(forecast, open(os.path.join(app.root_path, 'f.txt'), 'w'))

    if 'code' in forecast.json and forecast.json['code'] == 400:
        raise IncorrectLocationError()

    assert isinstance(forecast, Forecast)
    result = []
    for daily_data in forecast.daily().data:
        d = {'date': daily_data.time.__str__().split()[0],
             't_min': daily_data.temperatureMin, 't_max': daily_data.temperatureMax,
             'summary': daily_data.summary}
        if daily_data.sunsetTime and daily_data.sunriseTime:
            d['day_length'] = (daily_data.sunsetTime - daily_data.sunriseTime).__str__()
        else:
            d['day_length'] = 'undefined'
        result.append(d)
    return result


def create_forecast(latitude, longitude):
    database = open_database()
    last_task_id = database.get('last_task_id', 0)
    id = str(last_task_id + 1)
    database['last_task_id'] = last_task_id + 1

    forecast = get_forecast_from_internet(latitude, longitude)

    database[id] = (latitude, longitude, forecast)
    database.close()
    return id


def update_forecast(id, latitude, longitude):
    database = open_database()
    if id not in database:
        raise TaskNotFoundError()

    forecast = get_forecast_from_internet(latitude, longitude)
    database[id] = (latitude, longitude, forecast)
    database.close()


def remove_forecast(id):
    database = open_database()
    if id not in database:
        raise TaskNotFoundError()

    del database[id]
    database.close()


def read_forecast_from_database(id):
    database = open_database()
    data = database[id]
    database.close()
    return data