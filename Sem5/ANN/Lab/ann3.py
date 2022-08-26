import numpy as np 
import numpy.linalg as la

def is_pos_def(x):
    return np.all(np.linalg.eigvals(x) > 0)

Rx = np.array([[1, 0.818], [0.818]])