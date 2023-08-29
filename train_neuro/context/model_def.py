# For Data Processing
import numpy as np
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
from PIL import Image, ImageEnhance

# For ML Models
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.layers import *
from tensorflow.keras.losses import *
from tensorflow.keras.models import *
from tensorflow.keras.metrics import *
from tensorflow.keras.optimizers import *
from tensorflow.keras.applications import *
from tensorflow.keras.preprocessing.image import load_img
from determined.keras import InputData, TFKerasTrial, TFKerasTrialContext

# For Data Visualization
import matplotlib.pyplot as plt
import seaborn as sns

# Miscellaneous
from tqdm import tqdm
import os
import random
import data
from packaging import version


class NeuroTrial(TFKerasTrial):
    def __init__(self, context: TFKerasTrialContext) -> None:
        self.context = context

    def build_model(self):

        IMAGE_SIZE = int(self.context.get_hparam("image_zise"))

        base_model = tf.keras.applications.vgg16.VGG16(input_shape=(IMAGE_SIZE, IMAGE_SIZE, 3),
                                                       include_top=False, weights='imagenet')
        # Set all layers to non-trainable
        for layer in base_model.layers:
            layer.trainable = False
        # Set the last vgg block to trainable
        base_model.layers[-2].trainable = True
        base_model.layers[-3].trainable = True
        base_model.layers[-4].trainable = True

        dense_layer_num = int(self.context.get_data_config()["unique_labels"])

        model = tf.keras.Sequential()
        model.add(tf.keras.layers.Input(shape=(IMAGE_SIZE, IMAGE_SIZE, 3)))
        model.add(base_model)
        model.add(tf.keras.layers.Flatten())
        model.add(tf.keras.layers.Dropout(0.3))
        model.add(tf.keras.layers.Dense(128, activation='relu'))
        model.add(tf.keras.layers.Dropout(0.2))
        model.add(tf.keras.layers.Dense(dense_layer_num, activation='softmax'))

        # Wrap the model.
        model = self.context.wrap_model(model)
        optimizer = tf.keras.optimizers.legacy.Adam(
            learning_rate=float(self.context.get_hparam("learning_rate")))

        optimizer = self.context.wrap_optimizer(optimizer)


        model.compile(
            optimizer=optimizer,
            loss=tf.keras.losses.SparseCategoricalCrossentropy(
                from_logits=True),
            metrics=[tf.keras.metrics.SparseCategoricalAccuracy(
                name="accuracy")],
        )

        return model

    def build_training_data_loader(self) -> InputData:
        train_images, train_labels = data.load_training_data(
            self.context.get_data_config(), self.context.get_hparam("image_zise"))

        return train_images, train_labels

    def build_validation_data_loader(self) -> InputData:
        test_images, test_labels = data.load_validation_data(
            self.context.get_data_config(), self.context.get_hparam("image_zise"))

        return test_images, test_labels
