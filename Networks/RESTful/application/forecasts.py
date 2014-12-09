from application import database
from forecastio import load_forecast
from errors import TaskNotFoundError, IncorrectLocationError


FORECAST_API = "1635d2e3b522c741c8d3589d68387b78"


def get_forecast_from_internet(latitude, longitude):
    forecast = load_forecast(FORECAST_API, latitude, longitude, units="si", lang='ru')

    # forecast = load(open(os.path.join(app.root_path, 'f.txt'), 'r'))
    # dump(forecast, open(os.path.join(app.root_path, 'f.txt'), 'w'))

    if 'code' in forecast.json and forecast.json['code'] == 400:
        raise IncorrectLocationError(latitude, longitude)

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
    last_task_id = database.get_value('last_task_id', default=0)
    id = str(last_task_id + 1)
    database.set_value('last_task_id', last_task_id + 1)

    forecast = get_forecast_from_internet(latitude, longitude)
    database.set_value(id, (latitude, longitude, forecast))
    return id


def update_forecast(id, latitude, longitude):
    if not database.contains(id):
        raise TaskNotFoundError(str(id))
    forecast = get_forecast_from_internet(latitude, longitude)
    database.set_value(id, (latitude, longitude, forecast))


def remove_forecast(id):
    if not database.contains(id):
        raise TaskNotFoundError(str(id))
    database.del_value(id)


def read_forecast_from_database(id):
    if not database.contains(id):
        raise TaskNotFoundError(str(id))
    return database.get_value(id)