#align(center, text(17pt)[*Science-2*])
#align(center, text(16pt)[Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022101093])

#show raw: it => block(
  fill: rgb("#000000"),
  inset: 16pt,
  radius: 5pt,
  text(fill: rgb("#ffffff"), it)
)

= Question 1
== (a)
Singular Value Decomposition (SVD) of an $m times n$ matrix $X$ is given by $X = U Sigma V^T$ where $U$ is $m times m$ orthogonal matrix, $V$ is $n times n$ orthogonal matrix and $Sigma$ is $m times n$ diagonal matrix.

The steps to find SVD of a matrix $A$ are as follows:
- Calculate the eigenvalues and eigenvectors of $A A^T$ and $A^T A$. Sort them in descending order of their eigenvalues
- Both of these will have the same eigenvalues (may have different eigenvectors)
- Say $lambda_1 >= lambda_2 >= lambda_3 >= ... >= lambda_k > 0$ are the non-zero eigenvalues
- Construct the matrix 
  $ 
  Sigma = mat(sqrt(lambda_1), 0, 0, dots, 0, 0; 
              0, sqrt(lambda_2), 0 , dots, 0, 0;
              0, 0, sqrt(lambda_3), dots, 0, 0;
              0, 0, dots, sqrt(lambda_r), dots, 0;
              dots.v, dots.v, dots.v, dots.v, dots.down, dots.v;
              0, 0, 0, dots, 0, 0;
              )
  $
  by placing the square roots of the positive eigenvalues as the diagonal entries, and the rest of the values as $0$.

- Construct $U$: The columns of $U$ are the normalized eigenvectors of $A A^T$.
- Construct $V$: The columns of $V$ are the normalized eigenvectors of $A^T A$

Following these steps for the required matrix $ A = mat(9, 3, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12) $

$ B = A A^T = mat(99,   69,  114,  159;
  69,   77,  122,  167;
 114,  122,  194,  266;
 159,  167,  266,  365;) $

$ C = A^T A  = mat(
246,  213,  234;
 213,  219,  243;
 234,  243,  270;
) $

$ lambda_1 = 706.335, lambda_2 = 28.569, lambda_3 = 0.096, lambda_4 = 0 $

With corresponding eigenvectors
$ b_1 = mat(-0.32;-0.33;-0.52;-0.72), b_2 = mat(0.94; -0.21; -0.2; -0.18), b_3 = mat(0.11; 0.83; 0.15; -0.53), b_4 = mat(0; 0.41; -0.82; 0.41) $
$ c_1 = mat(-0.57; -0.55; -0.61), c_2 = mat(0.82; -0.34; -0.45), c_3 = mat(0.04; -0.76; 0.65) $
$ Sigma = mat(26.57695941,  0,          0;
  0,         5.34498755 , 0  ;
  0,          0,          0.31038172;
  0,          0,          0,        ;) $
$ U =  mat(-0.32,   0.94,   0.11, 0;
 -0.33,  -0.21,   0.83, 0.41;
 -0.52,  -0.2 ,   0.15, -0.82;
 -0.72,  -0.18,  -0.53, 0.41;) $


$ V^T = mat(-0.57,  -0.55,  -0.61;
  0.82,  -0.34,  -0.45;
  0.04,  -0.76,   0.65;) $

The calculation can alternatively be performed through the following code snipped:

```py
import numpy as np
inp = np.matrix([[9, 3, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])

U, d, V_T = np.linalg.svd(inp)
D = np.vstack(
    (*np.diag(d), *[np.zeros(V_T.shape[0]) for _ in range(U.shape[0] - V_T.shape[0])])
)

print(U)
print(D)
print(V_T)
print(U.dot(D).dot(V_T))
```
== (b)

Consider a matrix $A$ that has a standard diagonalization ($A$ is diagonalizable). $A$ must be a square matrix. 
$ A = P D P^(-1) $
$ A = U Sigma V^T $
For this matrix to have the same decompositions, we must have $ P = U space space space D = Sigma space space space P^(-1) = V^T $

Now, consider 
$ A^T = (U Sigma V^T)^T $
$ A^T = V^T^T Sigma^T U^T $
Since $Sigma$ is a diagonal matrix, we have $Sigma = Sigma^T$
$ A^T = V^T^T Sigma U^T $
$ A^T = (P^(-1))^T D P^T $
Since $U$ is orthogonal, we have $U^T = U^(-1)$, and since $U = P$, $P^T = P^(-1)$
$ A^T = P^T^T D P^(-1) $
$ A^T = P D P^(-1) $
$ A^T = A $

Therefore, for SVD and standard diagonalization of a matrix to give the same results, the matrix must by *symmetric*


The Spectral Theorem states that if $A$ is a real symmetric matrix, then there exists an orthogonal matrix $P$ such that $P^T A P$ is a diagonal matrix.

$ A = P D P^T $
with $P^T = P^(-1)$. Since $A$ is symmetric, for its SVD, we have $U = V$,
$ A = U Sigma U^T $


Assume the SVD decomposition is different from the diagonalization. The spectral theorem guarantees a unique diagonalization for a symmetric matrix. But if the SVD is not the same, then it means there are multiple diagonalizations. This is a contradiction. Therefore, both the decompositions are the same.

Therefore, for a symmetric matrix, the SVD and standard diagonalization of a matrix give the same results.

Since we have proven both ways, we can conclude:

*The SVD and Standard Diagonalization are same if and only if the matrix is symmetric.*

= Question 2
== (a)
Kinetic Energy T = $1/2 m_1 dot(x)^2 + 1/2 m_2 dot(y)^2$

Potential Energy V = $1/2 k_1 x^2 + 1/2 k_1 y^2 + 1/2 k_2 (x-y)^2$

Lagragian $L = T - V$
$ L = 1/2 m_1 dot(x)^2 + 1/2 m_2 dot(y)^2 - 1/2 k_1 x^2 - 1/2 k_1 y^2 - 1/2 k_2 (x-y)^2 $

Lagrange Equation
$ d/(d t) (diff L)/(diff dot(q_i)) - (diff L)/(diff q_i) = 0 $

For $q_i = x$
$ m_1 dot.double(x) - (-k_1 x - k_2(x - y)) = 0 $
$ m_1 dot.double(x) = (-k_1 - k_2)x + k_2 y $

For $q_i = y$
$ m_2 dot.double(y) - (-k_1 y + k_2(x - y)) = 0 $
$ m_2 dot.double(y) = (-k_1 - k_2)y + k_2 x $

These are the equations of motion for the system.

== (b)
Yes, the solutions of this system can be mapped through eigenvalue analysis.

We can represent the above system of equations in matrix form as follows:
$ mat(m_1, 0; 0, m_2) mat(dot.double(x); dot.double(y)) = mat(-k_1-k_2, k_2; k_2, -k_1 - k_2) mat(x; y) $

$ mat(dot.double(x); dot.double(y)) = mat((-k_1-k_2)/m_1, k_2/m_1; k_2/m_2, (-k_1 - k_2)/m_2) mat(x; y) $

let $A = mat((-k_1-k_2)/m_1, k_2/m_1; k_2/m_2, (-k_1 - k_2)/m_2)$. The modal frequencies 

We now find eigenvalues of A
$ A = mat(-(k_1 + k_2)/m_1, k_2/m_1; k_2/m_2, -(k_1 + k_2)/m_2) $
$ |A - lambda I| = 0 $
By calculating eigenvalues, we find the frequencies as $ omega_1 = sqrt(-lambda_1) space space space w_2 = sqrt(-lambda_2) $
For the case of $k_1 = k_2 = k, m_1 = m_2 = m$
$ |mat(-(2k)/m - lambda, k/m; k/m, -(2k)/m - lambda)|  = 0 $
$ ((2k)/m + lambda)^2  = k^2/m^2 $
$ (2k)/m + lambda  = plus.minus k/m $
$ lambda_1 = -k/m space space space lambda_2 = -(3k)/m $

Therefore, the frequencies are
$ omega_1 = sqrt(k/m) space space space omega_2 = sqrt((3k)/m) $

== (c)
```py
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
from scipy.integrate._ivp.ivp import OdeResult

class Plotter:
    def __init__(self, r: range, x_start: float, y_start: float) -> None:
        self.t_span = (r.start, r.stop)
        self.t_eval = np.linspace(r.start, r.stop, r.step)
        self.initial_conditions = [x_start, 0.0, y_start, 0.0]

    @staticmethod
    def equations(_, y) -> list[np.float64]:
        x, v1, y, v2 = y
        return [
            v1,
            ((-2 * k) * x + k * y) / m,
            v2,
            ((-2 * k) * y + k * x) / m,
        ]

    def solve(self) -> OdeResult:
        return solve_ivp(
            self.equations,
            self.t_span,
            self.initial_conditions,
            args=(),
            t_eval=self.t_eval,
        )

    def plot(self) -> None:
        sol = self.solve()
        x1, _, x2, _ = sol.y
        plt.plot(x1, label="Mass 1")
        plt.plot(x2, label="Mass 2")
        plt.xlabel("time")
        plt.ylabel("displacement")
        plt.legend()
        plt.show()


if __name__ == "__main__":
    m = 1.0
    k = 1.0
    C = 13.0
    p = Plotter(range(0, 20, 1000), -C / 2, -C)
    p.plot()

```
=== (i)
Since both the masses start from opposite ends, they have opposite phase
#figure(
  image("i.png", height: 43%)
)

=== (ii)
Both the masses have the same displacement at the start, so their graphs overlap
#figure(
  image("ii.png", height: 43%)
)

=== (iii)
#figure(
  image("iii.png", height: 43%)
)

= Question 3
== (i)
The distribution is approaching an ellipse (a circle with proper values of $C$). For just a diagonal matrix, its diagonal entries are the eigenvalues. In this case, all the diagonal entries are $-d$. Now, if we sample points from the normal distribution for the other entries, the eigenvalues will start to deviate from $-d$. As is evident from the figures below, the values are scattering around $x=-d$, and their variations from the other paramters leads to the ellipse shape.

== (ii) (iii)
#figure(
    grid(
        columns: 2,
        gutter: 2mm,
  image("100.png", height: 28%),
  image("500.png", height: 28%),
    ),
    caption: "left: S = 100, right: S = 200"
)

== (iv)
- $d$ is responsible for shifting the entire figure in the $x$ axis. The diagonal values represent the center of the figure on the $x$ axis. In this case, since $d = 93$, the image is centered at $x = -93$
- $C$ is responsible for stretching the image along the y-axis. A larger $C$ value leads to the image being stretched along the y-axis (larger maximum y and smaller minimum y), while a smaller $C$ value leads to compression in the y-axis.
- $S$ controls the density of the points. As $S$ increases, the number of points in the matrix increases, so the image appears denser. As $S$ decreases, the points appear less dense.
- $sigma$ controls the spread of the points. Larger $sigma$ causes the values to spread out (equally) in all directions, causing the image to zoom out, while smaller $sigma$ causes the image to zoom in.

```py
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
```