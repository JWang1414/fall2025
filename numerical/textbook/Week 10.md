# Lagrange Interpolation
The Lagrange basis functions for $\mathbb{P}_{n-1}$ are given by:
$$
\mathcal{l}_{j}(t) = \mathcal{l}(t) \frac{w_{j}}{t-t_{j}}
$$
Where we have defined,
$$
\mathcal{l}(t) = \prod_{k=1}^{n} (t-t_{k}) = (t-t_{1}) (t-t_{2}) \dots (t-t_{n})
$$
$$
w_{j} = \frac{1}{\mathcal{l}'(t)} = \left[ \prod_{k=1, k\neq j}^{n} (t_{j}-t_{k}) \right] ^{-1} \qquad j\in \mathbb{N}
$$
Note that, assuming the common factor $(t_{j}-t_{j})$ in $\mathcal{l}(t_{j}) / (t_{j}-t_{j})$ is cancelled to avoid division by zero, we have,
$$
\mathcal{l}_{j}(t_{i}) = \begin{cases}
1 & i=j \\
0 & i\neq j
\end{cases}
$$
Where $i,j \in \mathbb{N}$.

This implies that the basis matrix for the linear system $\mathbf{A}\vec{x}=\vec{y}$ is the identity matrix. The coefficients $\vec{x}$ for the Lagrange basis function are the data values $\vec{y}$,
$$
p_{n-1}(t) = \mathcal{l}(t) \sum_{j=1}^{n} y_{j} \frac{w_{j}}{t-t_{j}}
$$
It takes $\mathcal{O}(n^{2})$ work to compute the weights, and $\mathcal{O}(n)$ time to evaluate the polynomial for any given argument.

If a new data point $(t_{n+1}, y_{n+1})$ is added, the interpolating polynomial can be updated by dividing each $w_{j}$ by $(t_{j}-t_{n+1})$, and computing the new weight $w_{n+1}$ with the usual formula.
# Newton Interpolation
The Newton basis functions for $\mathbb{P}_{n-1}$ are given by:
$$
\pi_{j}(t) = \prod_{k=1}^{j-1} (t-t_{k}) \qquad j\in \mathbb{N}
$$
"we take the value of the product to be 1 when the limits make it vacuous"
- This is from the textbook, but I don't know what the "limit" here is supposed to be

A given polynomial has the form:
$$
p_{n-1}(t) = x_{1} + x_{2}(t-t_{1}) + x_{3}(t-t_{1})(t-t_{2}) + \dots + x_{n}(t-t_{1})\dots(t-t_{n-1})
$$
Note that $\pi_{j}(t_{i})=0$ for $i<j$ and so the basis matrix $\mathbf{A}$ with $a_{ij}=\pi_{j}(t_{i})$ is lower triangular.

The coefficients are therefore found using forward-substitution in $\mathcal{O}(n^{2})$ time. We can use Hornet's nested evaluation scheme to solve any basis polynomial within $\mathcal{O}(n)$ time.

Note that, however, the Newton basis functions can be derived by building an interpolant incrementally as opposed to all at once. For any constant $x_{j+1}$ we have,
$$
p_{j+1}(t) = p_{j}(t) + x_{j+1} \pi_{j+1}(t)
$$
Is a new polynomial that interpolates the same $j$ points as before, with a new one added on. Specifically we find,
$$
x_{j+1} = \frac{y_{j+1} - p_{j}(t_{j+1})}{\pi_{j+1}(t_{j+1})}
$$
## Divided Differences
The alternative method for computing the coefficients for a Newton interpolant. Defined by the recursive formula:
$$
f[t_{1}, t_{2}, \dots, t_{k}] = \frac{f[t_{2}, t_{3}, \dots, t_{k}] - f[t_{1}, t_{2}, \dots, t_{k-1}]}{t_{k}-t_{1}}
$$
Where the recursion begins with $f[k_{k}]=y_{k}$ and $k\in \mathbb{N}$.

This method requires $\mathcal{O}(n^{2})$ operations, but is less prone to overflow and underflow than the version with the Newton basis matrix.
# Existence, Uniqueness, and Conditioning
For a given set of points $(t_{i}, y_{i})$, an interpolant is chosen from a space of function spanned by a set of basis functions $\phi_{1}(t), \dots, \phi_{n}(t)$

The interpolating function is therefore a sum of basis functions,
$$
f(t) = \sum_{j=1}^{n} x_{j}\phi_{j}(t)
$$
With the parameters $x_{j}$. Since $f$ must interpolate $(t_{i}, y_{i})$,
$$
f(t_{i}) = \sum_{j=1}^{n} x_{j} \phi_{j}(t_{i}) = y_{i}
$$
Which we often write in matrix form:
$$
\mathbf{A}\vec{x} = \vec{y}
$$
The entries of $\mathbf{A}$ are given by $a_{ij}=\phi_{j}(t_{i})$.

If the number of basis functions to be equal to the number of data points, then we obtain a square linear system. In least square approximation, the number of basis functions is deliberately less than the number of data points.

The existence and uniqueness of the interpolant depends on the non-singularity of the basis matrix $\mathbf{A}$. The sensitivity of the parameters to perturbations in the data depends on the conditioning of $\mathbf{A}$. The choice of basis functions affects the conditioning of the linear system $\mathbf{A}\vec{x}=\vec{y}$.
# Error in Polynomial Interpolation
If $f$ is a sufficiently smooth function and $p_{n-1}$ is the polynomial of degree at most $n-1$ that interpolates $f$ at $n$ points, $t_{1}, \dots, t_{n}$, then for each $t\in[t_{1}, t_{n}]$ where is a $\theta \in(t_{1}, t_{n})$ such that,
$$
f(t) - p_{n-1}(t) = \frac{f^{(n)}(\theta)}{n!} \prod_{j=1}^{n} (t-t_{j})
$$
What does this tell us?

If $f$ is a polynomial of degree at most $n$, then $f^{(n+1)}=0$, and so the error is zero. So the interpolant is the function itself. (Follows by uniqueness)

The error of the interpolant is zero on the data points. As we would hope they are.

The point $\theta$ is unknown, so the error is also unknown. However, we can develop an upper-bound on its value. Say we have $\lvert f^{(n)}(t) \rvert\leq M$ for all $t\in[t_{1}, t_{n}]$ and $h=\max\{ t_{i+1}-t_{i} : i=1, \dots, n-1 \}$. Then we obtain the upper-bound,
$$
\max_{t\in[t_{1}, t_{n}]} \left| f(t) - p_{n-1}(t) \right| \leq \frac{Mh^{n}}{4n}
$$
## Continuous Functions
Depending on the points we choose to interpolate a continuous function, there may be a lack of uniform convergence within the interpolant. That is, it may oscillate wildly between data points.
![[Pasted image 20251118131200.png]]
Notice that equally spaced interpolation points can result in poor results. One way to remedy this is to use Chebyshev points, which are denser towards the endpoints and sparser in the middle
![[Pasted image 20251118131356.png]]
