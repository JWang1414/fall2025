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
The LU factorisation of an $n\times n$ matrix by Gaussian elimination requires about:
- $n^{3} /3$ floating-point multiplications and a similar number of additions
- $n^{2}$ multiplications and a similar number of additions
Where the second line is from solving the resulting triangular system for a single RHS vector.

Lets compare these numbers to using a difference approach. How about instead of factorising the matrix we find the inverse to compute $x=A^{-1}b$?

Inverting $A$ requires:
- An LU factorisation
- $n$ forward- and backward substitutions for each column of the identity matrix
- $n^{3}$ flops in total
And so we find that it is far more expensive than factorisation.

---
Example:
Inversion often also gives a less accurate answer. Lets take the linear system
$$
3x=18
$$
As an example. By division, we simply obtain,
$$
x = \frac{18}{3} = 6
$$
However, inverting one side we instead have,
$$
x = 3^{-1} (18) = 0.333(18) = 5.99
$$
Which arises because of truncation errors.

---

In practice, although inversion often appears in formulae, often times it typically indicates that you should factorise as opposed to explicitly invert the matrix.

$A^{-1}B$ for example, should be computed with an LU factorisation of $A$, followed by forward- back-substitution using each column of $B$.

### Special Linear Systems
A symmetric matrix is one such that $A=A^{T}$. That is $a_{ij}=a_{ji}$ for all $i$, $j$

*Positive definite* means that $\vec{x}^{T}A\vec{x}>0$ for all $\vec{x}\neq 0$

$A$ is a *banded matrix* if $a_{ij}=0$ for all $|i-j|>\beta$ where $\beta$ is the bandwidth of $A$. If $\beta=0$, then $A$ is called a tridiagonal matrix.

If most entries in $A$ are zero, we say that it is *sparse*.

Recall that for complex numbers, the conjugate transpose is given by $A^{H}$ where we have taken the transpose and complex conjugate of all values in the matrix. A complex matrix is called *Hermitian* if $A=A^{H}$, and positive definite if $\vec{x}^{H}A\vec{x}>0$ for all complex vectors $\vec{x}\neq 0$.

### Symmetric Positive Definite Systems
If $A$ is symmetric and positive definite, then there exists an LU factorisation such that $U=L^{T}$ and therefore $A=L L^{T}$ where $L$ is lower triangular with positive diagonal entries. This process is called the Cholesky fractorisation of $A$.

This method is particularly attractive because the computational method can be read off very simply,
$$
\begin{bmatrix}
a_{11} & a_{21} \\
a_{21} & a_{22}
\end{bmatrix} = \begin{bmatrix}
l_{11} & 0 \\
l_{21} & l_{22}
\end{bmatrix} \begin{bmatrix}
l_{11} & l_{21} \\
0 & l_{22}
\end{bmatrix}
$$
Which gives us the sequence of equations,
$$
l_{11}=\sqrt{ a_{11} } \qquad l_{21}=a_{21} / l_{11} \qquad l_{22} = \sqrt{ a_{22}-l_{21}^{2} }
$$
Notice that,
- The $n$ square roots required are all of positive numbers, and so the algorithm is well defined
- Pivoting is not required for numerical stability
- Only the lower triangle of $A$ is access, so the upper triangular portion need not be stored
- Only about $n^{3} /6$ multiplications, and a similar number of additions required

In some circumstances it might be better to express the factorisation in the form $A=LDL^{T}$ where $L$ is now unit lower triangular and $D$ is diagonal with positive entries. This version does not require any square roots.

---
Example:
$$
A = \begin{bmatrix}
3 & -1 & -1 \\
-1 & 3 & -1 \\
-1 & -1 & 3
\end{bmatrix}
$$
Computers do this in a way that may not be intuitive to humans. The square roots and subtractions are computed in a long recurring order, as opposed to all the computations being completed out right instantly.

You'll see what I mean. First, take the square root of the first diagonal entry, and divide the first column by this value.
$$
\begin{bmatrix}
1.7321 \\
-0.5774 & 3 \\
-0.5774 & -1 & 3
\end{bmatrix}
$$
Subtract entry $(2, 1)$ times the relevant portion of the first column from the second column. And subtract entry $(3, 1)$ times the relevant portion of the first column from the third column.
- I'm not sure what the "relevant portion" is supposed to be
$$
\begin{bmatrix}
1.7321 \\
-0.5774 & 2.6667 \\
-0.5774 & -1.3333 & 2.6667
\end{bmatrix}
$$
The second column is divided by the square root of its diagonal entry
$$
\begin{bmatrix}
1.7321 \\
-0.5774 & 1.6330 \\
-0.5774 & -0.8165 & 2.6667
\end{bmatrix}
$$
Subtract entry $(3, times the relevant portion of the second column
$$
\begin{bmatrix}
1.7321 \\
-0.5774 & 1.6330 \\
-0.5774 & -0.8165 & 2.0000
\end{bmatrix}
$$
Take the square root of the last diagonal entry to yield the final result,
$$
L = \begin{bmatrix}
1.7321 \\
-0.5774 & 1.6330 \\
-0.5774 & -0.8165 & 1.4142
\end{bmatrix}
$$

---

### Symmetric Indefinite Systems
If $A$ is symmetric but indefinite then $\vec{x}^{T}A\vec{x}$ can take some negative values. Cholesky factorisation is not longer possible.

Some sort of pivoting is now required for stability, which we will denote as $PAP^{T}$ where $P$ is a permutation matrix.

We would like to obtain $PAP^{T}=LDL^{T}$ where $L$ is unit lower triangular and $D$ is diagonal, however, $D$ may not exist. Since it generally cannot be computed using only symmetric pivoting. $D$ is typically a tridiagonal or a block diagonal with $1\times 1$ and $2\times 2$ diagonal blocks.
- No clue what a block diagonal matrix is

The pivoting procedure yields a stable factorisation that requires about $n^{3} /6$ flops. The subsequent solution phase requires $\mathcal{O}(n^{2})$ work. So the cost is quite similar to positive definite systems.
### Banded Systems
The only algorithmic changes here are the ranges of the loops. Also, remember to use a data structure that doesn't store all the zeroes.

For some arbitrary tridiagonal matrix, the factors of $A$ would be given by:
![[Pasted image 20250924223806.png]]

A banded system of bandwidth $\beta$ typically requires just $\mathcal{O}(\beta n)$ storage, and $\mathcal{O}(\beta^{2}n)$ for the factorisation. Both of which are very fast assuming $\beta\ll n$.
