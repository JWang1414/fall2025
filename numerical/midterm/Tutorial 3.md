![[Pasted image 20251022210150.png]]
$$
\begin{bmatrix}
a_{1, 1} & 0 & 0 & . & . & 0\\
a_{2, 1} & a_{2, 2} & 0 & . & . & 0 \\
a_{3, 1} & a_{3, 2} & a_{3, 3} & . & . & 0 \\
. & . & . & . & . & 0 \\
a_{n, 1} & a_{n, 2} & a_{n, 3} & . & . & a_{n, n}
\end{bmatrix} \begin{bmatrix}
b_{1, 1} & 0 & 0 & . & . & 0\\
b_{2, 1} & b_{2, 2} & 0 & . & . & 0 \\
b_{3, 1} & b_{3, 2} & b_{3, 3} & . & . & 0 \\
. & . & . & . & . & 0 \\
b_{n, 1} & b_{n, 2} & b_{n, 3} & . & . & b_{n, n}
\end{bmatrix}
$$
The result is,
$$
\begin{bmatrix}
a_{1, 1}b_{1, 1} & 0 & 0 & . & 0 \\
a_{2, 1}b_{1, 1} + a_{2, 2}b_{2, 1} & a_{2, 2}b_{2, 2} & 0 & . & 0 \\
a_{3, 1}b_{1, 1}+a_{3, 2}b_{2, 1}+a_{3, 3}b_{3, 1} & a_{3, 2}b_{2, 2}+a_{3, 3}b_{3, 2} & a_{3, 3}b_{3, 3} & . & 0
\end{bmatrix}
$$
Each term in the product is,
$$
\sum_{k=j}^{i} a_{i, k}b_{k, j}
$$
Where $i$ is the current row number, and $j$ is the current column number. When $j>i$, the matrix element is instead zero.

This implies that, whenever the column number is greater than the row number, the matrix is zero. This is by definition a lower triangular matrix, and so I conclude that the product of two lower triangular matrices is also lower triangular.
![[Pasted image 20251022221535.png]]
- Study this one later

![[Pasted image 20251022223730.png]]
The only relevant operation is nested within the final loop. it is one addition and one multiplication. Count this as one flop.

The number of operations is,
$$
\sum_{i=1}^{l} \sum_{j=1}^{n} \sum_{k=1}^{m} 1 = \sum_{i=1}^{l} \sum_{j=1}^{n} m = \sum_{i=1}^{l} nm = l nm
$$
![[Pasted image 20251022224356.png]]
Case 1: $(A\cdot B)\cdot C$

From the previous question $A\cdot B$ will take $n$ operations, and result in a $1\times 1$ matrix. The following multiplication with $C$ will take $n$ operations.

I conclude that it will take $2n$ operations in total

Case 2: $A\cdot(B\cdot C)$

The first multiplication will take $n^{2}$ operations, and result in a $n\times n$ matrix. The following multiplication with $A$ will therefore take another $n^{2}$ operations.

I conclude that it will take $2n^{2}$ operations total.

![[Pasted image 20251022225212.png]]
Case 1: $(AB)C$

$AB$ will take $lkm$ operations and result in a $k\times m$ matrix. $(AB)C$ will take $kmn$ operations.

The total number of operations is,
$$
klm + kmn = km(l+n)
$$
Case 2: $A(BC)$

$BC$ will take $lmn$ operations, and result in a $l\times n$ matrix. $A(BC)$ will take $kl n$ operations.

The total number of operations is,
$$
lmn + kl n = nl(m+k)
$$
![[Pasted image 20251022230234.png]]
- Study this one later