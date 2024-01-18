#align(center, text(17pt)[*Science-2*])
#align(center, text(16pt)[Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 20221010193])

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
  by placing the non-zero eigenvalues as the diagonal entries, and the rest of the values as $0$.

- Construct $U$: The columns of $U$ are the eigenvectors of $A A^T$ divided by the root of their corresponding eigenvalues.
- Construct $V$: The columns of $V$ are the eigenvectors of $A^T A$

Following these steps for the required matrix $ A = mat(9, 3, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12) $

We get the following decomposition:
$ U =  mat(-0.32321119,  0.93939789,  0.11430716, 0;
 -0.32723941, -0.21299656,  0.82515463,  0.40824829;
 -0.522567,   -0.19752899,  0.14573731, -0.81649658;
 -0.71789458, -0.18206142, -0.53368,     0.40824829;) $
$ Sigma = mat(26.57695941,  0,          0;
  0,         5.34498755 , 0  ;
  0,          0,          0.31038172;
  0,          0,          0,        ;) $

$ V^T = mat(-0.56645958, -0.55247881, -0.61146603;
  0.82306601, -0.34232011, -0.45318791;
  0.0410596,  -0.75998954,  0.64863704;) $
== (b)
