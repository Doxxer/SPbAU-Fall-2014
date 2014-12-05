import httplib
import xml.etree.ElementTree as ElementTree

from flask import Flask
import flask

from errors import *


BASE_URL = '/'
TASK_URL = '/task'
TASK_ID_URL = '/task/<id>'

DEBUG = True
DATABASE = 'data/base'
FORECAST_API = "1635d2e3b522c741c8d3589d68387b78"

app = Flask(__name__)
app.config.from_object(__name__)

import forecasts


def get_coordinates(args):
    if len(args) != 2:
        raise ValueError()
    return float(args['lat']), float(args['lon'])


def plain_text_representation(data):
    def to_day(day_data):
        return "date: %s\n" \
               "day_length: %s\n" \
               "min temperature: %s\n" \
               "max temperature: %s\n" \
               "summary: %s" % (day_data['date'], day_data['day_length'], day_data['t_min'], day_data['t_max'], day_data['summary'])

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


@app.route(TASK_ID_URL, methods=['GET'])
def task_get(id):
    id = str(id)
    try:
        data = forecasts.read_forecast_from_database(id)
        content_type = flask.request.headers.get('Content-Type')
        if content_type:
            content_type = content_type.split(':')[0]

        if not content_type or content_type == 'text/html':
            return flask.render_template('task.html', id=id, latitude=data[0], longitude=data[1], data=data[2])
        if content_type == 'text/plain':
            return flask.Response(plain_text_representation(data), content_type=content_type)
        if content_type == 'application/json':
            return flask.jsonify(json_representation(data))
        if content_type in ['application/xml', 'text/xml']:
            return flask.Response(xml_representation(data), content_type=content_type)

        flask.abort(httplib.NOT_ACCEPTABLE)
    except KeyError:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % id)


@app.route(TASK_URL, methods=['PUT'])
def task_put():
    try:
        lat, lon = get_coordinates(flask.request.form)
    except:
        flask.abort(httplib.BAD_REQUEST)

    try:
        id = forecasts.create_forecast(lat, lon)
        return flask.Response(id, content_type='text/plain', status=httplib.CREATED)
    except IncorrectLocationError:
        flask.abort(httplib.BAD_REQUEST, LOCATION_IS_INCORRECT % (lat, lon))
    except Exception as e:
        flask.abort(httplib.INTERNAL_SERVER_ERROR, e.message)


@app.route(TASK_ID_URL, methods=['POST'])
def task_post(id):
    id = str(id)
    try:
        lat, lon = get_coordinates(flask.request.form)
    except:
        flask.abort(httplib.BAD_REQUEST, WRONG_PARAMETERS)

    try:
        forecasts.update_forecast(id, lat, lon)
        return flask.Response(id, content_type='text/plain', status=httplib.ACCEPTED)
    except TaskNotFoundError:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % id)
    except IncorrectLocationError:
        flask.abort(httplib.BAD_REQUEST, LOCATION_IS_INCORRECT % (lat, lon))
    except Exception as e:
        flask.abort(httplib.INTERNAL_SERVER_ERROR, e.message)


@app.route(TASK_ID_URL, methods=['DELETE'])
def task_delete(id):
    id = str(id)
    try:
        forecasts.remove_forecast(id)
        return flask.Response('DELETED', content_type='text/plain', status=httplib.ACCEPTED)
    except TaskNotFoundError:
        flask.abort(httplib.BAD_REQUEST, TASK_NOT_EXIST_IN_DATABASE % id)


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000)