import httplib
import unittest
import urlparse

import requests

from main import TASK_URL, ACCEPTED_MIME_TYPES


BASE_URL = 'http://127.0.0.1:5000'


class TestRestAPI(unittest.TestCase):
    def setUp(self):
        self.tests_count = 5
        self.tasks = []
        self.task_url = urlparse.urljoin(BASE_URL, TASK_URL)
        self.task_id_url = urlparse.urljoin(BASE_URL, TASK_URL + '/%s')
        self.base_url = urlparse.urljoin(BASE_URL, BASE_URL)

    def tearDown(self):
        self.delete_all_tasks()

    def spb_location(self):
        return {'lat': 59.6, 'lon': 30.4}

    def create_task(self, **data):
        request = requests.put(self.task_url, data)
        if request.status_code == httplib.CREATED:
            id = request.json()
            self.assertIsInstance(id, int)
            self.tasks.append(str(id))
        return request.status_code

    def run_task(self, id, content_type):
        headers = {'Accept': content_type}
        request = requests.get(self.task_id_url % id, headers=headers)
        if request.status_code == httplib.OK:
            self.assertTrue(request.headers['content-type'].startswith(content_type))
        return request.status_code

    def update_task(self, id, **data):
        return (requests.post(self.task_id_url % id, data)).status_code

    def delete_task(self, id):
        return (requests.delete(self.task_id_url % id)).status_code

    # -----------

    def create_all_tasks(self):
        for id in range(self.tests_count):
            self.assertEqual(self.create_task(**self.spb_location()), httplib.CREATED)

    def update_all_tasks(self):
        for id in self.tasks:
            self.assertEqual(self.update_task(id, **self.spb_location()), httplib.ACCEPTED)

    def run_all_tasks(self):
        for id in self.tasks:
            for c in ACCEPTED_MIME_TYPES:
                self.assertEqual(self.run_task(id, c), httplib.OK)

    def delete_all_tasks(self):
        for id in self.tasks:
            self.assertEqual(self.delete_task(id), httplib.ACCEPTED)
        self.tasks = []

    def test_all_correct(self):
        self.create_all_tasks()
        self.update_all_tasks()
        self.run_all_tasks()
        self.delete_all_tasks()

    def test_fail_put(self):
        self.assertEqual((requests.get(self.task_url)).status_code, httplib.METHOD_NOT_ALLOWED)
        self.assertEqual((requests.delete(self.task_url)).status_code, httplib.METHOD_NOT_ALLOWED)
        self.assertEqual((requests.post(self.task_url, self.spb_location())).status_code, httplib.METHOD_NOT_ALLOWED)
        self.assertEqual((requests.put(self.task_url, {'lat': 90, 'long': 90})).status_code, httplib.BAD_REQUEST)
        self.assertEqual(self.create_task(id=2, lat=0, lon=90), httplib.BAD_REQUEST)
        self.assertEqual(self.create_task(lat=0, long=90), httplib.BAD_REQUEST)
        self.assertEqual(self.create_task(lat=1000, lon=90), httplib.BAD_REQUEST)

    def test_fail_post(self):
        self.assertEqual(self.update_task('q', **self.spb_location()), httplib.BAD_REQUEST)

        self.create_task(**self.spb_location())
        self.assertEqual(self.update_task(self.tasks[0], lat=1000, lon=90), httplib.BAD_REQUEST)
        self.assertEqual(self.update_task(self.tasks[0] * 2, lat=100, lon=90), httplib.BAD_REQUEST)

    def test_fail_delete(self):
        self.assertEqual(self.delete_task('q'), httplib.BAD_REQUEST)

        self.create_task(**self.spb_location())
        self.assertEqual(self.delete_task(self.tasks[0] * 2), httplib.BAD_REQUEST)