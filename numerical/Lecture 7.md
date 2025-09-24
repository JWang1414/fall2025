### Elementary Elimination Matrices
Consider the 2-vector $\vec{a}=\begin{bmatrix}a_{1} & a_{1}\end{bmatrix}^{T}$. If $a_{1}\neq 0$ then,
$$
\begin{bmatrix}
1 & 0 \\
-a_{2} /a_{1} & 1
\end{bmatrix} \begin{bmatrix}
a_{1} \\
a_{2}
\end{bmatrix} = \begin{bmatrix}
a_{1} \\
0
\end{bmatrix}
$$
This suggests the possibility of creating a matrix to annihilate all the entries below some $k$th position, provided $a_{k}\neq 0$. These are what we call *elementary elimination matrices*.

Define $m_{i}=a_{i} /a_{k}$ where $i=k+1, \dots, n$. For some $n$-vector. Then, the matrix has the properties:
1. $\hat{M}_{k}=\hat{I}-\vec{m}_{k}\vec{e}^{T}_{k}$, where $\vec{m}_{k}=\left[ 0, \dots, m_{k+1}, \dots, m_{n} \right]^{T}$ and $\vec{e}_{k}$ is the $k$th column of the identity matrix
2. $\hat{M}^{-1}_{k}=\hat{I}+\vec{m}_{k}\vec{e}^{T}_{k}$, which means that $\hat{M}^{-1}_{k}$ is the same as $\hat{M}_{k}$ except the sign of the multipliers are reversed
	- This inverse is often labelled $\hat{L}_{k}$
3. $\hat{M}_{k}$ is a lower triangular matrix with a unit diagonal. Therefore is must be invertible
4. For $\hat{M}_{j}$ such that $j>k$ is another elementary elimination matrix, then $\hat{M}_{k}\hat{M}_{j}=\hat{I}-\vec{m}_{k}\vec{e}^{T}_{k}-\vec{m}_{j}\vec{e}^{T}_{j}$. You can imagine this as the union between the two matrices. Note that the order of multiplication matters. A similar result holds for the inverses $\hat{L}_{k}\hat{L}_{j}$.

---

Example elementary elimination matrices
$$
M_{1}\vec{a} = \begin{bmatrix}
1 & 0 & 0 \\
-2 & 1 & 0 \\
1 & 0 & 1
\end{bmatrix} \begin{bmatrix}
2 \\
4 \\
-2
\end{bmatrix} = \begin{bmatrix}
2 \\
0 \\
0
\end{bmatrix}
$$
And,
$$
M_{2}\vec{a} = \begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0.5 & 1
\end{bmatrix} \begin{bmatrix}
2 \\
4 \\
-2
\end{bmatrix} = \begin{bmatrix}
2 \\
4 \\
0
\end{bmatrix}
$$
The inverse is simply,
$$
L_{1} = M_{1}^{-1} = \begin{bmatrix}
1 & 0 & 0 \\
2 & 1 & 0 \\
-1 & 0 & 1
\end{bmatrix}
$$
Matrix multiplication is,
$$
M_{1}M_{2} = \begin{bmatrix}
1 & 0 & 0 \\
-2 & 1 & 0 \\
1 & 0.5 & 1
\end{bmatrix}
$$
Where we have this result because the column in $M_{2}$ is higher than in $M_{1}$.

---

### Gaussian Elimination and LU Factorization
Say we would like to reduce some linear system $A\vec{x}=\vec{b}$ into general upper triangular form. First, choose an elementary elimination matrix $M_{1}$ such that the first column of $A$ becomes zero below the first row. We can continue this pattern until $A$ is upper triangular until we have,
$$
MA\vec{x} = M\vec{b}
$$
Where $M=M_{n-1}\dots M_{1}$ is a whole sequence of elementary elimination matrices. This process is known as *Gaussian elimination* or *LU decomposition*.

Now, the inverse of $M$ will also be lower triangular. And, we have,
$$
L = M^{-1} = (M_{n-1}\dots M_{1})^{-1} = M_{1}^{-1} \dots M_{n-1}^{-1} = L_{1}\dots L_{n-1}
$$
Is an easy matrix to compute. Furthermore, we may define $U=MA$ as the upper triangular matrix. Which gives us,
$$
A = M^{-1}MA = LU \implies LU\vec{x}=\vec{b}
$$
We have reduced this problem into first solving $L\vec{y}=\vec{b}$ by forward-substitution and then $U\vec{x} = MA\vec{x}=M\vec{b}=\vec{y}$ by back substitution

During technical implementation...
- Typically we have the diagonal and super-diagonal entries of $U$ replace those of $A$. Afterwards, we store the values of $\vec{L}$ within the bottom triangle of $A$
- While solving $A\vec{x}=\vec{b}$, the necessary transformation of $\vec{b}$ could included as part of the LU factorization process, or it could be done separately.
	- Perhaps when solving the lower triangular system $L\vec{y}=\vec{b}$ after $L$ has been obtained
- The solution for $\vec{x}$ is naturally found while solving $U\vec{x}=\vec{y}$

---

Example:
Say we would like to solve the system,
$$
A\vec{x} = \begin{bmatrix}
1 & 2 & 2 \\
4 & 4 & 2 \\
4 & 6 & 4
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3}
\end{bmatrix} = \begin{bmatrix}
3 \\
6 \\
10
\end{bmatrix} = \vec{b}
$$
First, annihilate the subdiagonal entries in the first column,
$$
\begin{bmatrix}
1 & 0 & 0 \\
-4 & 1 & 0 \\
-4 & 0 & 1
\end{bmatrix} A = \begin{bmatrix}
1 & 2 & 2 \\
0 & -4 & -6 \\
0 & -2 & -4
\end{bmatrix}
$$
Notice how the row reduction operations have been applied to the other rows. The transformed matrices do not simply lose their subdiagonal quantities, but they are sent to 0.

Now solve for $M_{2}$,
$$
M_{2}M_{1}A = \begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & -0.5 & 1
\end{bmatrix} M_{1}A = \begin{bmatrix}
1 & 2 & 2 \\
0 & -4 & -6 \\
0 & 0 & -1
\end{bmatrix}
$$
And the transformed version of $\vec{b}$ is,
$$
M_{2}M_{1}\vec{b} = \begin{bmatrix}
3 \\
-6 \\
1
\end{bmatrix}
$$
Now, solve for $\vec{x}$ with the new reduced system,
$$
U\vec{x} = \begin{bmatrix}
1 & 2 & 2 \\
0 & -4 & -6 \\
0 & 0 & -1
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3}
\end{bmatrix} = \begin{bmatrix}
3 \\
-6 \\
1
\end{bmatrix} = M\vec{b} = \vec{y}
$$
Solved using back-substitution we find that $\vec{x}=\left[ -1, 3, -1 \right]$. For completion, we also have,
$$
L_{1}L_{2} = \begin{bmatrix}
1 & 0 & 0 \\
4 & 1 & 0 \\
4 & 0 & 1
\end{bmatrix} \begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0.5 & 1
\end{bmatrix} = \begin{bmatrix}
1 & 0 & 0 \\
4 & 1 & 0 \\
4 & 0.5 & 1
\end{bmatrix} = \hat{L}
$$
And of course,
$$
\begin{bmatrix}
1 & 0 & 0 \\
4 & 1 & 0 \\
4 & 0.5 & 1
\end{bmatrix} \begin{bmatrix}
1 & 2 & 2 \\
0 & -4 & -6 \\
0 & 0 & -1
\end{bmatrix} = \hat{L} \hat{U} = \hat{A}
$$

---

### Complexity of Solving Linear Systems
- Complete this later