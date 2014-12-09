from google.appengine.api import memcache


def get_value(key, default=None):
    value = memcache.get(key)
    return value if value else default


def set_value(ket, value):
    memcache.set(ket, value)


def del_value(key):
    memcache.delete(key)


def contains(key):
    return memcache.get(key) is not None