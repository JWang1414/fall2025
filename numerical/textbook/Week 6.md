### Vector Norms
In this course, the vector norms will be exclusively $p$-norms. For some integer $p>0$ and some vector $\vec{x}$. A $p$-norm is defined by:
$$
\lvert \vec{x} \rvert _{p} = \left( \sum_{i=1}^{n} \lvert x_{i} \rvert ^{p} \right)^{1/p}
$$
- Norms are typically notated with the double bars, however, I do not know how to type those. Just figure it out with context.

The important cases in this course are the 1-norm, 2-norm, and $\infty$-norm. The 2-norm is the familiar Euclidean norm. The 1-norm and $\infty$-norms, are:
$$
\lvert \vec{x} \rvert _{1} = \sum_{i=1}^{n} \lvert x_{i} \rvert \qquad \lvert \vec{x} \rvert _{\infty} = \max_{1\leq i\leq n} \lvert x_{i} \rvert
$$
The $\infty$-norm can be understood as the limiting case for $p\to \infty$.

For any vector,
$$
\lvert \vec{x} \rvert _{1} \geq \lvert \vec{x} \rvert _{2} \geq \lvert \vec{x} \rvert _{\infty}
$$
$$
\lvert \vec{x} \rvert _{1} \leq \sqrt{ n }\lvert \vec{x} \rvert _{2} \qquad \lvert \vec{x} \rvert _{2} \leq \sqrt{ n } \lvert \vec{x} \rvert _{\infty} \qquad \lvert \vec{x} \rvert _{1} \leq n\lvert \vec{x} \rvert _{\infty}
$$
These properties are held for all $p$-norms. Where $\vec{x}$ and $\vec{y}$ are arbitrary vectors.
1. $\lvert \vec{x} \rvert>0$ if $\vec{x}\neq \vec{0}$
2. $\lvert \gamma \vec{x} \rvert=\lvert \gamma \rvert \lvert \vec{x} \rvert$ for any scalar $\gamma$
3. $\lvert \vec{x}+\vec{y} \rvert\leq \lvert \vec{x} \rvert+\lvert \vec{y} \rvert$ or $\left| \lvert \vec{x} \rvert - \lvert \vec{y} \rvert \right|\leq \lvert \vec{x}-\vec{y} \rvert$
### Matrix Norms
The corresponding matrix norm of an $m\times n$ matrix $\hat{A}$ is,
$$
\lvert \hat{A} \rvert = \max_{\vec{x}\neq \vec{0}} \frac{\lvert \hat{A}\vec{x} \rvert }{\lvert \vec{x} \rvert }
$$
The 2-norm here is very challenging to compute. The 1-norm and $\infty$-norms, however, are simply,
$$
\lvert \hat{A} \rvert  = \max_{j} \sum_{i=1}^{m} \lvert a_{ij} \rvert \qquad \lvert \hat{A} \rvert _{\infty} = \max_{i} \sum_{j=1}^{n} \lvert a_{ij} \rvert
$$
Where the 1-norm is the maximum absolute column sum of the matrix, and the $\infty$-norm is the maximum absolute row rum of the matrix.

The matrix norms agree with the corresponding vector norms for a $n\times 1$ matrix.
- Helps as a tool to remember

Matrix norms have the properties
1. $\lvert \hat{A} \rvert>0$ if $\hat{A}\neq \hat{O}$
2. $\lvert \gamma \hat{A} \rvert=\lvert \gamma \rvert\lvert \hat{A} \rvert$ for any scalar $\gamma$
3. $\lvert \hat{A}+\hat{B} \rvert\leq \lvert \hat{A} \rvert+\lvert \hat{B} \rvert$
4. $\lvert \hat{A}\hat{B} \rvert\leq \lvert \hat{A} \rvert\lvert \hat{B} \rvert$
5. $\lvert \hat{A}\vec{x} \rvert\leq \lvert \hat{A} \rvert\lvert \vec{x} \rvert$ for any vector $\vec{x}$
### Matrix Condition Number
The condition number of an invertible square matrix $\hat{A}$ with respect to a given matrix norm is defined to be
$$
\text{cond}(\hat{A}) = \lvert \hat{A} \rvert \lvert \hat{A}^{-1} \rvert
$$
By convention, $\text{cond}(\hat{A})=\infty$ if $\hat{A}$ is singular.

The condition number of a matrix measures the ratio of the maximum relative stretching to the maximum relative shrinking that the matrix does to any nonzero vectors.

For any matrix $\vec{A}$
$$
\text{cond}(\hat{A})\geq 1
$$
For the identity matrix
$$
\text{cond}(\hat{I}) = 1
$$
For some non-zero scalar $\gamma$
$$
\text{cond}(\gamma \hat{A}) = \text{cond}(\hat{A})
$$
For some diagonal matrix $\hat{D}=\text{diag}(d_{i})$
$$
\text{cond}(\hat{D}) = \frac{\max\lvert d_{i} \rvert }{\min \lvert d_{i} \rvert }
$$

In a sense, the condition number is a measure of how close a matrix is to being singular. The larger the number, the closer.
### Error Bounds
If $x$ is the solution to the invertible linear system $Ax=b$ and $\hat{x}$ is the solution to the system $A\hat{x}=b+\Delta b$ with some perturbed RHS. Define $\Delta x=\hat{x}-x$.
$$
\frac{\lvert \Delta \vec{x} \rvert }{\lvert \vec{x} \rvert } \leq \text{cond}(\hat{A}) \frac{\lvert \Delta \vec{b} \rvert }{\lvert \vec{b} \rvert }
$$
- I have dropped the matrix and vector notations in the statement of definitions to make it less crowded. But you can get the point from here

The condition number of the matrix is an “amplification factor” that bounds the maximum relative change in the solution due to a given relative change in the RHS vector.

A similar result holds for the entries of the matrix $A$. If $Ax=b$ and $(A+E)\hat{x}=b$ then,
$$
\frac{\lvert \Delta \vec{x} \rvert }{\lvert \vec{x} \rvert } \leq \text{cond}(\hat{A}) \frac{\lvert \hat{E} \rvert }{\lvert \hat{A} \rvert }
$$
With input data accurate to machine precision, then the relative error in an approximate solution $\hat{x}$ to a linear system $Ax=b$ is approximately bounded by,
$$
\frac{\lvert \hat{x}-\vec{x} \rvert }{\vec{x}} \leq \text{cond}(\vec{A}) \epsilon _\text{mach}
$$
In terms of backward error analysis, a computed solution can be expected to lose $\log_{10}(\text{cond}(\hat{A}))$ decimal digits of accuracy relative to the accuracy of the input.
- For a condition number $10^{4}$, for example, we would expect no correct digits in the solution to a linear system unless the input data is accurate to more than four decimal digits and the working precision carries more than four decimal digits
### Residual
One way to verify a solution to an equation is to substitute it into the equation and see how closely the left and right sides match. For some approximate solution $\hat{x}$ to a linear system, the *residual* is,
$$
\vec{r} = \vec{b} - \hat{A}\vec{x}
$$
Recall that if a linear system is multiplied by some non-zero constant, the solution remains unaffected. Therefore, it is possible to make the residual arbitrarily large or small. The *relative residual* is,
$$
\frac{\lvert \vec{r} \rvert }{\lvert \hat{A} \rvert \lvert \hat{x} \rvert }
$$
Furthermore, we have,
$$
\frac{\lvert \Delta \vec{x} \rvert }{\lvert \vec{x} \rvert }\leq \text{cond}(\hat{A}) \frac{\lvert \vec{r} \rvert }{\lvert \hat{A} \rvert \lvert \hat{x} \rvert }
$$
So a small relative residual implies a small relative error only when $\hat{A}$ is well-conditioned
