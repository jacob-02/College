import numpy as np
inputs = [1, 2, 3, 2.5]
weights = [0.2, 0.8, -0.5, 1.0]
bias = 2

output = np.dot(weights, inputs) + bias
print(output)

if output > 0:
    activation = 1

else:
    activation = 0

print("Using hard limit activation function: ", activation)

output_logistic = 1 / (1 + np.exp(-output))
print("Using logistic activation function: ", output_logistic)

output_tanh = (np.exp(output) - np.exp(-output)) / \
    (np.exp(output) + np.exp(-output))
print("Using tanh activation function: ", output_tanh)

inputs = [[1, 2, 3, 2.5],
          [2.0, 5.0, -1.0, 2.0],
          [-1.5, 2.7, 3.3, -0.8]]

weights = [[0.2, 0.8, -0.5, 1.0],
           [0.5, -0.91, 0.26, -0.5],
           [-0.26, -0.27, 0.17, 0.87]]

biases = [2, 3, 0.5]

output_layer1 = np.dot(inputs, np.array(weights).T) + biases    # Is done for transposing the matrix in numpy

print(output_layer1)
