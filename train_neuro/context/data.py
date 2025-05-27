# For Data Processing
import numpy as np
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
from PIL import Image, ImageEnhance

# For ML Models
from tensorflow import keras
from tensorflow.keras.layers import *
from tensorflow.keras.losses import *
from tensorflow.keras.models import *
from tensorflow.keras.metrics import *
from tensorflow.keras.optimizers import *
from tensorflow.keras.applications import *
from tensorflow.keras.preprocessing.image import load_img
from tensorflow.python.keras.utils.data_utils import get_file

# For Data Visualization
import matplotlib.pyplot as plt
import seaborn as sns

# Miscellaneous
from tqdm import tqdm
import os
import os.path
import random
import gzip
import tempfile
from typing import Any, Dict


def encode_label(labels, train_dir):
    meta_labels = os.listdir(train_dir)
    encoded = []
    for x in labels:
        label = meta_labels.index(x)
        encoded.append(label)
    return np.array(encoded)


def decode_label(labels, train_dir):
    meta_labels = os.listdir(train_dir)
    decoded = []
    for x in labels:
        label = meta_labels[x]
        decoded.append(label)
    return np.array(decoded)


def open_images(paths, IMAGE_SIZE):
    """
    Given a list of paths to images, this function returns the images as arrays (after augmenting them)
    """
    images = []
    for path in paths:
        # Fix for Synology NAS
        if "@eaDir" in path:
            continue
        image = load_img(path, target_size=(IMAGE_SIZE, IMAGE_SIZE))
        image = augment_image(image)
        images.append(image)
    return np.array(images)


def augment_image(image):
    image = Image.fromarray(np.uint8(image))
    image = ImageEnhance.Brightness(image).enhance(random.uniform(0.8, 1.2))
    image = ImageEnhance.Contrast(image).enhance(random.uniform(0.8, 1.2))
    image = np.array(image) / 255.0
    return image


def load_training_data(data_config: Dict[str, Any], IMAGE_SIZE: int):
    print("Training Data Path {}".format(data_config["trainpath"]))
    train_dir = data_config["trainpath"]

    train_paths = []
    train_labels = []

    print("Load labels from {}".format(train_dir))
    for label in os.listdir(train_dir):
        for image in os.listdir(os.path.join(train_dir, label)):
            train_paths.append(os.path.join(train_dir, label, image))
            train_labels.append(label)

    train_paths, train_labels = shuffle(train_paths, train_labels)

    train_images = open_images(train_paths, IMAGE_SIZE)

    return train_images, encode_label(train_labels, train_dir)


def load_validation_data(data_config: Dict[str, Any], IMAGE_SIZE: int):
    print("Test Data Path {}".format(data_config["testpath"]))
    test_dir = data_config["testpath"]

    test_paths = []
    test_labels = []

    for label in os.listdir(test_dir):
        for image in os.listdir(os.path.join(test_dir, label)):
            test_paths.append(os.path.join(test_dir, label, image))
            test_labels.append(label)

    test_paths, test_labels = shuffle(test_paths, test_labels)
    test_images = open_images(test_paths, IMAGE_SIZE)

    return test_images, encode_label(test_labels, test_dir)
