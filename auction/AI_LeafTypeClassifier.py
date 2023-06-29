import tensorflow as tf
from tensorflow.keras import models

#class_names = ['Lug White', 'Cutter White', 'Cutter Red', 'Leaf Red', 'Leaf Deep Red']

model = models.load_model("AI_LeafTypeClassifier.h5")

model.summary()

"""model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

model.save("AI_LeafTypeClassifier.h5")"""
