import httplib
import xml.etree.ElementTree as ElementTree

import flask

from urls import ACCEPTED_MIME_TYPES

from forecasts import read_forecast_from_database, create_forecast, update_forecast, remove_forecast
from errors import *


def get_coordinates(args):
    try:
        assert len(args) == 2
        return float(args['lat']), float(args['lon'])
    except:
        raise IncorrectParams()


def index():
    return flask.render_template('index.html')


def task_get(id):
    def plain_text_representation(data):
        def to_day(day_data):
            return "date: %s\n" \
                   "day_length: %s\n" \
                   "min temperature: %s\n" \
                   "max temperature: %s\n" \
                   "summary: %s" % (
                       day_data['date'], day_data['day_length'], day_data['t_min'], day_data['t_max'],
                       day_data['summary'])

        template = "latitude: %s\n" \
                   "longitude: %s\n"

        days = "\n".join([to_day(x) for x in data[2]])
        return (template + days) % (data[0], data[1])

    def json_representation(data):
        return dict(latitude=data[0], longitude=data[1], data=data[2])

    def xml_representation(data):
        forecast = ElementTree.Element('forecast')
        ElementTree.SubElement(forecast, 'latitude').text = str(data[0])
        ElementTree.SubElement(forecast, 'longitude').text = str(data[1])
        days = ElementTree.SubElement(forecast, 'data')
        for day in data[2]:
            day_element = ElementTree.SubElement(days, 'day', {'date': day['date']})
            ElementTree.SubElement(day_element, 'day_length').text = day['day_length']
            ElementTree.SubElement(day_element, 't_min').text = str(day['t_min'])
            ElementTree.SubElement(day_element, 't_max').text = str(day['t_max'])
            ElementTree.SubElement(day_element, 'summary').text = day['summary']
        return ElementTree.tostring(forecast)

    try:
        id = str(id)
        forecast_data = read_forecast_from_database(id)
        mime_type = flask.request.accept_mimetypes.best_match(ACCEPTED_MIME_TYPES)
        if mime_type == 'text/html':
            return flask.render_template('task.html', id=id, latitude=forecast_data[0], longitude=forecast_data[1],
                                         data=forecast_data[2])
        if mime_type == 'text/plain':
            return flask.Response(plain_text_representation(forecast_data), content_type=mime_type)
        if mime_type == 'application/json':
            return flask.jsonify(json_representation(forecast_data))
        if mime_type in ['application/xml', 'text/xml']:
            return flask.Response(xml_representation(forecast_data), content_type=mime_type)
        flask.abort(httplib.NOT_ACCEPTABLE)
    except TaskNotFoundError as e:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % e.id)


def task_put():
    try:
        lat, lon = get_coordinates(flask.request.form)
        id = create_forecast(lat, lon)
        return flask.Response(id, content_type='text/plain', status=httplib.CREATED)
    except IncorrectParams:
        flask.abort(httplib.BAD_REQUEST)
    except IncorrectLocationError as e:
        flask.abort(httplib.BAD_REQUEST, LOCATION_IS_INCORRECT % (e.latitude, e.longitude))
    except Exception as e:
        flask.abort(httplib.INTERNAL_SERVER_ERROR, e.message)


def task_post(id):
    try:
        id = str(id)
        lat, lon = get_coordinates(flask.request.form)
        update_forecast(id, lat, lon)
        return flask.Response(id, content_type='text/plain', status=httplib.ACCEPTED)
    except IncorrectParams:
        flask.abort(httplib.BAD_REQUEST, WRONG_PARAMETERS)
    except TaskNotFoundError as e:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % e.id)
    except IncorrectLocationError as e:
        flask.abort(httplib.BAD_REQUEST, LOCATION_IS_INCORRECT % (e.latitude, e.longitude))
    except Exception as e:
        flask.abort(httplib.INTERNAL_SERVER_ERROR, e.message)


def task_delete(id):
    try:
        id = str(id)
        remove_forecast(id)
        return flask.Response('DELETED', content_type='text/plain', status=httplib.ACCEPTED)
    except TaskNotFoundError as e:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % e.id)
