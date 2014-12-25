import os
import struct
from array import array as pyarray

import numpy as np
from numpy import array, int8, uint8, zeros


def load_mnist(dataset="training", digits=np.arange(10), path="."):
    if dataset == "training":
        images_filename = os.path.join(path, 'train-images.idx3-ubyte')
        labels_filename = os.path.join(path, 'train-labels.idx1-ubyte')
    elif dataset == "testing":
        images_filename = os.path.join(path, 't10k-images.idx3-ubyte')
        labels_filename = os.path.join(path, 't10k-labels.idx1-ubyte')
    else:
        raise ValueError("dataset must be 'testing' or 'training'")

    labels_dataset = open(labels_filename, 'rb')
    struct.unpack(">II", labels_dataset.read(8))
    lbl = pyarray("b", labels_dataset.read())
    labels_dataset.close()

    images_dataset = open(images_filename, 'rb')
    magic_nr, size, rows, cols = struct.unpack(">IIII", images_dataset.read(16))
    img = pyarray("B", images_dataset.read())
    images_dataset.close()

    ind = [k for k in range(size) if lbl[k] in digits]
    N = len(ind)

    images = zeros((N, rows, cols), dtype=uint8)
    labels = zeros((N, 1), dtype=int8)
    for i in range(len(ind)):
        images[i] = array(img[ind[i] * rows * cols: (ind[i] + 1) * rows * cols]).reshape((rows, cols))
        labels[i] = lbl[ind[i]]

    return images, labels