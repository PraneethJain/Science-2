import numpy as np

np.set_printoptions(suppress=True)

inp = np.matrix([[9, 3, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])

U, d, V_T = np.linalg.svd(inp)
D = np.vstack(
    (*np.diag(d), *[np.zeros(V_T.shape[0]) for _ in range(U.shape[0] - V_T.shape[0])])
)

print(U)
print(D)
print(V_T)
print(U.dot(D).dot(V_T))
