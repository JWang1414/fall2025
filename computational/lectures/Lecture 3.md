### Gaussian Quadrature
Use unequally-spaced points instead of equally spaced points. Which effectively gives you $N$ more "knobs to turn".
- Sample the edges more, and gives them less weight because you are sampling them more often.

Exact for $(2N-1)^{th}$ order polynomial.

The rule to choose the $w_{k}$ and $x_{k}$ are by making $x_{k}$ the roots of the $N^{th}$ order Legendre polynomial.

Legendre Polynomials are:
- Defined to be mutually orthogonal
- Defined recursively
- SciPy has a library of them

- We have been given a number of functions to find these roots for us

Pros:
- Complex error formula, but the approximation error improves by a factor of $c /N^{2}$ when you increase the number of sample points by 1
Cons:
- Because sample points are further apart, it only works if the function is reasonably smooth
- Hard to get an accurate estimate of error
### Numerical Derivatives
Computing the error here can be challenging, it's based on Taylor series approximations, and so we also use Taylor series to estimate error.

Forward and backward difference approximation,
$$
f'(x) \approx \frac{f(x+h)- f(x)}{h} \approx \frac{f(x) - f(x-h)}{h}
$$
- Dunno if these equations are right

Central finite difference method,
$$
f'(x) \approx \frac{f(x+h)-f(x-h)}{2h}
$$
- Surprisingly, if you take the Taylor series of $f(x+h)$ and $f(x-h)$ to find the error, you will find that it is lower here

Common techniques to make this more accurate are:
- Including more points
- Do different things near the boundaries
- Partial derivatives
- Higher order derivatives

Taking the differences of two similar numbers can cause round-off errors. Derivatives are based on this fact, and so the two sources of error are truncation errors and approximation error
$$
\epsilon = \frac{2C\left| f(x) \right| }{h} + \frac{1}{2} h \left| f''(x) \right| + H.O.T.
$$
The first term is the round-off, and the second is the approximation.
- Reducing your step size decreases approximation error, but increases round-off error

The error has a minimum value when,
$$
h = \sqrt{ 4C \left| \frac{f(x)}{f''(x)} \right|  }
$$
- $x$ is not a variable here. $f(x)$ should be interpreted as the typical magnitude of $f$.
- I think that $C$ is supposed to be computer precision. Which is $10^{-16}$ in most cases
