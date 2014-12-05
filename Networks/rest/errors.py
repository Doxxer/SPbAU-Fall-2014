LOCATION_IS_INCORRECT = 'Location LAT=%s LONG=%s is incorrect'
TASK_NOT_EXIST_IN_DATABASE = 'Task with ID = %s does not exist in database'
WRONG_PARAMETERS = 'Incorrect input data'


class TaskNotFoundError(ValueError):
    pass


class IncorrectLocationError(ValueError):
    pass