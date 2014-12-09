import threading

import requests
from application.forecastio.models import Forecast


def load_forecast(key, lat, lng, time=None, units="auto", callback=None,
                  exclude='minutely,currently,hourly,alerts,flags', lang=None):
    """
        This function builds the request url and loads some or all of the
        needed json depending on lazy is True

        inLat:  The latitude of the forecast
        inLong: The longitude of the forecast
        time:   A datetime.datetime object representing the desired time of
                the forecast
        units:  A string of the preferred units of measurement, "auto" id
                default. also us,ca,uk,si is available
        lazy:   Defaults to false.  The function will only request the json
                data as it is needed. Results in more requests, but
                probably a faster response time (I haven't checked)
    """

    if time is None:
        url = 'https://api.forecast.io/forecast/%s/%s,%s' \
              '?units=%s' % (key, lat, lng, units,)
    else:
        url_time = str(int(time.mktime(time.timetuple())))
        url = 'https://api.forecast.io/forecast/%s/%s,%s,%s' \
              '?units=%s' % (key, lat, lng, url_time,
                             units,)

    if exclude:
        baseURL = "%s&exclude=%s" % (url, exclude)
    else:
        baseURL = url

    if lang:
        baseURL = "%s&lang=%s" % (baseURL, lang)

    return manual(baseURL, callback=callback)


def manual(requestURL, callback=None):
    """
        This function is used by load_forecast OR by users to manually
        construct the URL for an API call.
    """

    if callback is None:
        return get_forecast(requestURL)
    else:
        thread = threading.Thread(target=load_async,
                                  args=(requestURL, callback))
        thread.start()


def get_forecast(requestURL):
    forecastio_response = requests.get(requestURL)

    json = forecastio_response.json()
    headers = forecastio_response.headers

    return Forecast(json, forecastio_response, headers)


def load_async(url, callback):
    callback(get_forecast(url))
