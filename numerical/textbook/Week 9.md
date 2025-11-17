### Interpolation
Given a set of data points $(t_{i}, y_{i})$ where $i=1, \dots, m$ we seek a function $f:\mathbb{R}\to \mathbb{R}$ such that
$$
f(t_{i} = y_{i})
$$
For all $i$. It is assumed that the $t_{i}$ are sorted in ascending order.

A simple choice for interpolating functions are polynomials, because they are easy to work with, and generally pretty accurate.

Weierstrass Theorem:
> If $f(x)$ is a continuous function $[a, b]$, then for every $\varepsilon>0$ there exists a polynomial $p_{n}(x)$ of degree $n(\varepsilon)$ such that
$$
\max_{x \in[a, b]} \lvert f(x) - p_{n}(x) \rvert < \varepsilon
$$

This theorem essentially states that, given some continuous function $f$, there always exists some polynomial as close to $f$ as we like. However, that approximating polynomial may have a very high degree, or may be unstable.
### Monomial Basis
Define the vector space of polynomials of degree at most $n-1$ as $\mathbb{P}_{n-1}$. One such basis for this vector space are the monomials:
$$
\phi_{j}(t) = t^{j-1} \qquad j=1, \dots, n
$$
For which a given polynomial $p_{n-1}\in \mathbb{P}_{n-1}$ has the form
$$
p_{n-1} (t) = x_{1} + x_{2} t + \dots + x_{n} t^{n-1}
$$
The coefficients can be determined using a *Vandermonde matrix*
$$
\mathbf{A}\vec{x} = \begin{bmatrix}
1 & t_{1} & \dots & t_{1}^{n-1} \\
1 & t_{2} & \dots & t_{2}^{n-1} \\
\vdots & \vdots & \ddots & \vdots \\
1 & t_{n} & \dots & t_{n}^{n-1}
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
\vdots \\
x_{n}
\end{bmatrix} = \begin{bmatrix}
y_{1} \\
y_{2} \\
\vdots \\
y_{n}
\end{bmatrix} = \vec{y}
$$
Recall that the points we are interested in interpolating are given in the form $(t_{i}, y_{i})$.

- Solving this system takes typical methods $\mathcal{O}(n^{3})$ amount of work.
- $\mathbf{A}$ is often ill-conditioned for high degree polynomials

We can optimize the evaluation of polynomials using *Horner's method*.
$$
\begin{align}
p_{n-1}(t) & = x_{1} + x_{2}t + \dots + x_{n} t^{n-1} \\
 & = x_{1} + t(x_{2} + x_{3}t + \dots + x_{n}t^{n-2}) \\
 & = x_{1} + t(x_{2} + t(x_{3} + t(\dots(x_{n-1} + x_{n}t)\dots)))
\end{align}
$$
Which requires just $n$ additions and $n$ multiplications. The same method can be applied to the Vandermonde matrix
$$
a_{ij} = \phi_{j} (t_{i}) = t^{j-1}_{i} = t_{i} \phi_{j-1}(t_{i}) = t_{i} a_{i, j-1} \qquad j=2, \dots, n
$$
That is,
$$
a_{i, j} = t_{i} a_{i, j-1}
$$
