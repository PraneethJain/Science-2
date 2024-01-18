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

Now, consider a symmetric matrix $A$. The spectral theorem states implies $A$ is orthogonally diagonalizable.
$ A = P D P^T $
with $P^T = P^(-1)$. Since $A$ is symmetric, for its SVD, we have $U = V$,
$ A = U Sigma U^T $
Assume the SVD decomposition is different from the diagonalization. The spectral theorem guarantees a unique diagonalization for a symmetric matrix. But if the SVD is not the same, then it means there are multiple diagonalizations. This is a contradiction. Therefore, both the decompositions are the same.

Therefore, for a symmetric matrix, the SVD and standard diagonalization of a matrix give the same results.

Since we have proven both ways, we can conclude:

*The SVD and Standard Diagonalization are same if and only if the matrix is symmetric.*

= Question 2
== (a)
Kinetic Energy T = $1/2 m dot(x)^2 + 1/2 m dot(y)^2$

Potential Energy V = $1/2 k_1 x^2 + 1/2 k_1 y^2 + 1/2 k_2 (x-y)^2$

Lagragian $L = T - V$
$ L = 1/2 m dot(x)^2 + 1/2 m dot(y)^2 - 1/2 k_1 x^2 - 1/2 k_1 y^2 - 1/2 k_2 (x-y)^2 $

Lagrange Equation
$ d/(d t) (diff L)/(diff dot(q_i)) - (diff L)/(diff q_i) = 0 $

For $q_i = x$
$ m dot.double(x) - (-k_1 x - k_2(x - y)) = 0 $
$ m dot.double(x) = (-k_1 - k_2)x + k_2 y $

For $q_i = y$
$ m dot.double(y) - (-k_1 y + k_2(x - y)) = 0 $
$ m dot.double(y) = (-k_1 - k_2)y + k_2 x $

These are the equations of motion for the system.