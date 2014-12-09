BASE_URL = '/'
TASK_URL = '/task'
TASK_ID_URL = '/task/<id>'
ACCEPTED_MIME_TYPES = ['text/plain', 'text/html', 'text/xml', 'application/xml', 'application/json']

from application import app
from application import views

app.add_url_rule(BASE_URL, 'index', view_func=views.index)

app.add_url_rule(TASK_URL, 'task_put', view_func=views.task_put, methods=['PUT'])
app.add_url_rule(TASK_ID_URL, 'task_get', view_func=views.task_get, methods=['GET'])
app.add_url_rule(TASK_ID_URL, 'task_post', view_func=views.task_post, methods=['POST'])
app.add_url_rule(TASK_ID_URL, 'task_delete', view_func=views.task_delete, methods=['DELETE'])

app.config.from_object(__name__)