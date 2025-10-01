### Gaussian Elimination
- Familiar row reduction process or whatever you would like to call it
- Our textbook provides a Gaussian elimination function in Python, you can try importing it as `gausselim_as_func` if you would like to use it

Recall that sometimes GE can fail if we have 0 or a number very close to 0 in a diagonal.
- Our program fails, Numpy fails, and Scipy fails

To solve this we simply use partial pivoting. Find the largest value in the current column, and then swap the two rows.
### LU Decomposition
If you remember, you recompose a matrix $A$ into a lower triangular, and upper triangular matrix such that:
$$
LU = A
$$
Once you know $L$, $U$, and $A$. Then you end up with the system,
$$
Ux=y \qquad Ly=f
$$
Which can be solved using back and forward substitution. Recall that the original problem is $Ax=f$.

Note that LU decomposition fails on singular systems. These systems usually don't have a unique answer, so this isn't really a huge deal. But, if we have a problem that is very similar to singular, like,
$$
\begin{bmatrix}
1 & 2 \\
2 & 4 + \delta
\end{bmatrix}
$$
Where $\delta\to 0$. Then $\delta$ might be destroyed during operations, eventually yielding a singular system, and then LU decomposition will struggle to find a solution again.
### QR Decomposition
Recall that if we can find the eigenvalues of a matrix, we can instead decompose it into:
$$
AV = V B
$$
Where $V$ is a orthonormal matrix of eigenvalues, and $B$ is a diagonal matrix of eigenvalues. Of course, this version of solving the problem requires that $A$ is square and symmetric-real or Hermitian.

We can write an iterative version of this where we find,
$$
AV = VA_{k}
$$
Where the diagonal entries of $A_{k}$ are the eigenvalues of $A$, and the off-diagonal entries are very small.

The eigenvalues will be the columns of $V=QQ_{1}\dots Q_{l}$.
- This method is implemented in `numpy.linalg.eigh`
### Relaxation
Solving for $x$ in an equation $x=f(x)$. This method is to guess an initial value $x_{0}$, and iterate until the function converges,
$$
x_{1}=d(x_{0}) \implies x_{2} = f(x_{1}) \implies \dots
$$
- This method can only find stable fixed points
![[Pasted image 20250929124206.png]]
### Newton's Method
Solving for $x$ in $f(x)=0$.
1. Start with some value $x_{1}$, calculate the tangent $f'(x_{1})$
2. Travel along the tangent line to intersection with the $x$-axis at $x_{2}$
3. Repeat
$$
x_{n+1} = x_{n} - \frac{f(x_{n})}{f'(x_{n})}
$$
If you cannot find the derivative, use the *secant method*: Calculator $f'$ using numerical difference like forward or backwards differences.

Like relaxation this method requires a good initial guess. Sometimes though, it doesn't converge.
### Bisection / Binary Search
- Bracket a single root on either side of the zero of the function $(x_{1}, x_{2})$
- Use midpoint $x'$ as the subsequent bracket
- Choose brackets depending on the side of the value at the midpoint
	- For this example, $f(x_{1})>0$ and $f(x')<0$ and so the next set of brackets is $(x_{1}, x')$
	- I think this is because the function is decreasing
![[Pasted image 20250929125210.png]]
- Only works for a single bracketed root
- Cannot find double roots
- Can find one root if there are an even number of roots
- Large sample intervals can miss roots
- Slow
### Golden Ratio Search
Used to find minima and maxima
1. Start with two boundaries $x_{1}, x_{4}$ around the interval
2. Choose two points $x_{2}, x_{3}$ inside the interval
3. Check if $f(x_{2})$ or $f(x_{3})$ is lower to determine the new brackets
	- If $f(x_{2})<f(x_{3})$ for example, then you would choose $x_{3}$ as the new boundary.

Ideally, we would like to split the interval so that the search interval is divided by the same ratio each time. This ratio happens to be the golden ratio
$$
z = \frac{1+\sqrt{ 5 }}{2} \approx 1.618
$$
Because it is the solution to,
$$
x_{4}-x_{1} = (x_{3}-x_{1})z = (x_{4}-x_{2})z
$$
