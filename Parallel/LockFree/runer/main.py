#!/usr/bin/python

from os import times
import os
from subprocess import Popen

BASE_DIR = os.path.dirname(os.path.abspath(__file__))


def run(readers, writers, operations, list_type):
    start = times()[4]
    process = Popen(
        ["/usr/bin/java -cp {0}/../out/production/LockFree Main {1} {2} {3} {4}".format(BASE_DIR, readers, writers,
                                                                                        operations, list_type)],
        shell=True)
    process.wait()
    return times()[4] - start

with open("./result.txt", 'w') as f:
    for list_type in (0, 1):
        for actors in (1, 3, 4):
            for operations in (6, 7, 8):
                elapsed = run(2 ** actors, 2 ** actors, 10 ** operations, list_type)
                f.write("{0} {1} {2} {3} - {4:.3f} sec\n".format(2 ** actors, 2 ** actors, 10 ** operations, list_type, elapsed))
                f.flush()