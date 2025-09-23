### Newton-Cotes Formulae
Recall this idea from last week. The basis of these integration methods are to break an interval into small equal sub-intervals, approximate the function with a polynomial of some degree, and then sum over the elements.

All N-C formulae can be written like,
$$
\int_{a}^{b} f(x) \, dx \approx \sum_{k=1}^{N+1} w_{k} f(x_{k})
$$
Where $w_{k}$ are the weights and $x_{k}$ are the sample points.
### Gaussian Quadrature
Use unequally-spaced points instead of equally spaced points. Which effectively gives you $N$ more "knobs to turn".
- Sample the edges more, and gives them less weight because you are sampling them more often.

Exact for $(2N-1)$ order polynomial. That is, it gives the same level of accuracy as an approximation by a $2N-1$ order polynomial.

Despite choosing different intervals, since we are trying to sample the edges more often, there is actually a universal rule to chose our weights and sample points.
- The sample points $x_{k}$ are the roots of the $N$th Legendre polynomial $P_{N}(x)$
$$
w_{k} = \left[ \frac{2}{1-x^{2}} \left( \frac{dP_{N}}{dx} \right)^{-2} \right] _{x=x_{k}} \qquad \text{while }P_{N}(x_{k})=0
$$

Properties of the Legendre Polynomials are:
- Mutually orthogonal
- Defined recursively
$$
P_{0}(x)=1 \qquad P_{1}(x)=x
$$
$$
(N+1)P_{N+1}(x) = (2N+1)x P_{N}(x) - NP_{N-1}(x)
$$
Alternatively,
$$
P_{N}(x) = \frac{1}{2^{N}N!} \frac{d^{N}}{dx^{N}} \left[ (x^{2}-1)^{N} \right] \dots
$$
- Note that we will never have to defined them. There is a SciPy library for that.
- We have been given the files `gaussxw.py` and `gaussxwab.py` to find the sample points and weights
	- Try to avoid using `gaussxw.py` too often, the computations are very expensive

Pros of Gaussian quadrature:
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
