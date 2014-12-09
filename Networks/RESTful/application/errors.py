LOCATION_IS_INCORRECT = 'Location LAT=%s LONG=%s is incorrect'
TASK_NOT_EXIST_IN_DATABASE = 'Task with ID = %s does not exist in database'
WRONG_PARAMETERS = 'Incorrect input data'


class IncorrectParams(ValueError):
    pass


class TaskNotFoundError(ValueError):
    def __init__(self, id):
        assert isinstance(id, str)
        self.id = id


class IncorrectLocationError(ValueError):
    def __init__(self, latitude, longitude):
        self.latitude = latitude
        self.longitude = longitude