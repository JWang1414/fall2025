# Piecewise Polynomial Interpolation
Even with a high number of data points, oscillating behaviour is common in single polynomial interpolation. Piecewise interpolation lets us interpolate a large number of data points with low degree polynomials.

For some given set of points $(t_{i}, y_{i})$, a different polynomial is used in each sub-interval $[t_{i}, t_{i+1}]$. The abscissas, $t_{i}$, are called *knots* to reflect where the interpolant change from one polynomial to another.
# Hermite Cubic Interpolation
Also called osculatory interpolation. Interpolation where the derivatives are specified as well as the values of the interpolating function at the data points.

Note that a piecewise cubic polynomial with $n$ knots has $4(n-1)$ parameters to be determined. Hermite cubic interpolation can determine a total of $3n-4$ parameters, leaving $n$ free parameters.
- These can be freely adjusting to satisfy additional constraints, or otherwise alter the function
# Cubic Spline Interpolation
A *spline* is a piecewise polynomial of degree $k$ that is continuously differentiable $k-1$ times. Cubic splines, in particular, are twice continuously differentiable.

Requiring a continuous second derivative imposes $n-2$ additional constraints. And so we have just two free parameters.
- Forcing the second derivative to be zero at the endpoints results in a *natural spline*
# Class Notes
Define $\Delta$ as the set of distinct points/knots partitioning the interval $[a, b]$.

A piecewise polynomial of degree $N$ with respect to $\Delta$ with continuous derivatives up to order $k$ is uniquely defined by $d=(N+1)n-(k+1)(n-1)$ coefficients. This $d$ is the dimension of the space $\mathbf{P}^{N}_{\Delta, k}$ of the piecewise polynomials.

The dimension of maximum continuity, for smooth splines, is $d=(N+1)n-N(n-1)=n+N$.

- If the derivatives at the endpoints are given, then we have a *clamped* spline
- If we require the third derivative at $x_{1}$ and $x_{n-1}$ to be to be continuous, than we have a *not-a-knot* spline

![[Pasted image 20251122165420.png]]
