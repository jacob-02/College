from this import d
from turtle import color
import numpy as np 
import tensorflow as tf
import matplotlib.pyplot as plt

NUM_FEATURES = 2
NUM_ITERATIONS = 1000
LEARNING_RATE = 0.01

x = np.array([[0, 0],[1, 0],[0, 1],[1, 1]], dtype=np.float32)
y = np.array([0,1,1,0], dtype=np.float32)
W = np.zeros(shape=(NUM_FEATURES, 1), dtype=np.float32)
b = np.zeros(shape=(1), dtype=np.float32)

N,d = np.shape(x)

print("N: ", N)
print("d: ", d)

for i in range(NUM_ITERATIONS):
    for j in range(N):
        v = x[j,:].dot(W) + b
        y_hat = 1/(1 + np.exp(-v))
        e = y[j] - y_hat
        W += LEARNING_RATE * e * y_hat * (1 - y_hat) * x[j,:].reshape(NUM_FEATURES, 1)
        b += LEARNING_RATE * e * y_hat * (1 - y_hat)

plot_x = np.array([np.min(x[:,0] - 0.2), np.max(x[:,1] + 0.2)])
plot_y = -1/W[1] * (W[0] * plot_x + b)

print("W: ", str(W))
print("b: ", str(b))
print("plot_y: ", str(plot_y))

plt.scatter(x[:,0], x[:,1], c=y, s=100, cmap='viridis')
plt.plot(plot_x, plot_y, color='k', linewidth=2)
plt.xlim([-0.2, 1.2])
plt.ylim([-0.2, 1.2])
plt.title("Perceptron for AND GATE")
plt.xlabel("x1", color='#1C2833')
plt.ylabel("x2", color='#1C2833')
plt.show()