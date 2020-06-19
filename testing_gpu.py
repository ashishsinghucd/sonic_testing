import tensorflow as tf
import numpy as np
layers = tf.keras.layers

print(tf.__version__)
tf.test.is_gpu_available(
    cuda_only=False, min_cuda_compute_capability=None
)


mnist = tf.keras.datasets.fashion_mnist
class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat', 'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train/255.0, x_test/255.0

model = tf.keras.Sequential()
model.add(layers.Flatten())
model.add(layers.Dense(64, activation='relu'))
model.add(layers.Dense(64, activation='relu'))
model.add(layers.Dense(10, activation='softmax'))
model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])

model.fit(x_train, y_train, epochs=100)

model.evaluate(x_test, y_test)
predictions = model.predict(x_test)


predicted_label = class_names[np.argmax(predictions[0])]
print('Actual label:', class_names[y_test[0]])
print('Predicted label:', predicted_label)

"""

rsync -avzhe 'ssh -J 19205522@resit-ssh.ucd.ie' --exclude '.git' --exclude '.idea' /Users/ashishsingh/PycharmProjects/sonic_testing/  19205522@login.ucd.ie:/home/people/19205522/Research/Codes/sonic_testing/



"""