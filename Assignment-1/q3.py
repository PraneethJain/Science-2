import numpy as np
import matplotlib.pyplot as plt
from itertools import product


def gen_matrix(S: int, C: float, d: float, sigma: float) -> np.ndarray[np.float64]:
    m = np.zeros((S, S))
    for i, j in product(range(S), repeat=2):
        if i == j:
            m[i][j] = -d
        else:
            if np.random.uniform() < C:
                m[i][j] = np.random.normal(0, sigma * sigma)
            else:
                m[i][j] = 0
    return m


def plot_eigs(m: np.ndarray[np.float64]) -> None:
    vals = np.linalg.eigvals(m)
    x = np.real(vals)
    y = np.imag(vals)
    plt.scatter(x, y)
    plt.show()


m = gen_matrix(100, 0.4, 93, 10)
plot_eigs(m)
