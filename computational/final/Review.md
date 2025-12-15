# Writing Pseudo-code
- Should more or less be plain English
- Easy to understand what you intend to do as you convert it into an actual programming language

---
Example: Converting from polar to Cartesian coordinates
```
# Read radius from keyboard input
# Read angle in degrees from keyboard input
# Convert angle in radians
# compute x and y from r and theta
# Print the result to screen
```
---
Example: The number of radioactive atoms of Uranium as a function of time given $N_{0}$
$$
\frac{dN}{dt} = - \frac{N}{\tau}
$$
```
# Define decay constant tau by converting half-life into decay rate
# Define initial N0 and duration 5tau
# Initialize time and time array, as well as N(t) array
# Compute dt
# FOR 100 iterations:
	# Increment the N array from the previous values according to Euler
# Plot N vs. t
```
---

Notice that the contents of the for-loop are indicated by an indent.
# Numerical Errors
1. Rounding errors: errors in how the computer stores or manipulates numbers.
2. Approximation/truncation errors: errors in approximations to various functions or methods.

Recall that adding large and small numbers together can result in the smaller number being annihilated. Note that Python handles that storage of integers and floats differently, in particular:
```
x = 1e20
y = -1e20
z = 1
```
Will result in the output,
```
(x+y)+z = 1.0
x+(y+z) = 0.0
```
But,
```
x = int(1e20)
y = int(-1e20)
z = 1
```
Will result in,
```
(x+y)+z = 1
x+(y+z) = 1
```
This results because Python doesn't limit the number of digits stored for integer values. Non-integers will suffer from rounding after reaching 16 significant figures (machine error).

These rounding errors are most apparent in the case of catastrophic cancellation, when two similar numbers are subtracted from each other.

We have more control over approximation/truncation errors. Since more integration/differentiation algorithms are based on Taylor series expansions, we can use Taylor expansion to determine the approximation errors.
# Numerical integration
- Trapezoidal and Simpson's Rules
$$
I_\text{trapezoid}(a, b) \approx h \left[ \frac{1}{2} f(a) + \frac{1}{2} f(b) + \sum_{k=1}^{N-1} f(a+kh) \right]
$$
$$
I_\text{Simpson}(a, b) \approx \frac{h}{3} \left[ f(a) + f(b) + 4 \sum_{k\text{ odd}}^{N-1} f(a+kh) + 2 \sum_{k\text{ even}}^{N-2} f(a+kh)   \right]
$$
Textbook pg 141 for the derivations
# Error estimation
The Euler-MacLaurin formulae give us the error in the Newton-Cotes formulae
$$
\epsilon _\text{Trapezoid} = \frac{h^{2}[f'(a) - f'(b)]}{12} + H.O.T.
$$
$$
\epsilon _\text{Simpson} = \frac{h^{4}[f'''(a) - f'''(b)]}{180} + H.O.T.
$$
- The derivations for these a little lengthy, but they are in the textbook pg 149
However, there is a more practical method to error estimation, so long as to know the order of the error:
1. Choose $N$ intervals to compute $I_{N}(a, b)$
2. Compute $I_{2N}(a, b)$
3. Equate the two, accounting for the error, and solve for the exact error
Pg 23, lecture book
# Gaussian quadrature
Where the Newton-Cotes formulae are accurate to a $(N-1)^{th}$ order polynomial, the Gaussian quadrature method is accurate to order $(2N-1)^{th}$.

The slices of the quadrature, $x_{k}$ are located at the roots of the $N^{th}$ Legendre polynomial $P_{N}(x)$. The weights for the associated slice is,
$$
w_{k} = \left[ \frac{2}{1-x^{2}} \left( \frac{dP_{N}}{dx} \right)^{-2} \right] _{x=x_{k}} \qquad \text{when }P_{N}(x_{k})=0
$$
The Legendre polynomials are a set of orthogonal functions defined recursively,
$$
(N+1) P_{N+1}(x) = (2N+1) x P_{N}(x) - NP_{N-1}(x)
$$
The quadrature is so powerful because it places more points at the endpoints of the interval. This is usually where the greatest inaccuracies lie.

Roughly speaking, the approximation error improves by a factor of $c /N^{2}$ if you increase the number of sample points by one, but it is very challenging to get an accurate estimate of the error.
# Numerical derivatives
If you use Taylor series to find the error in the typical forward and backward difference approximations for the derivative, you will find they have errors of order $h^{2}$. However, you can combine the two and use the central difference scheme,
$$
f(x) \approx \frac{f(x+h)-f(x-h)}{2h}
$$
Which has error of order $h^{3}$, and so is accurate up to $h^{2}$. The two possible sources of error here, arising from the round-off and approximation error means the error formula is something like:
$$
\epsilon = \frac{2C \lvert f(x) \rvert }{h} + \frac{h}{2} \lvert f''(x) \rvert + H.O.T.
$$
Which is minimized when,
$$
h = \sqrt{ 4C \left\lvert  \frac{f(x)}{f''(x)}  \right\rvert  }
$$
These are equations 5.91 and 5.93 in the textbook.
# Solving linear systems
- Gaussian elimination
- LU-decomposition
	- The lecture book also mentions the QR algorithm. I do not recall using this in lab, nor what it does and what its purpose it. But it is probably worth reviewing

Remember to use partial pivoting (in either Gaussian elimination or LU decomposition) to increase accuracy, and avoid divide by zero errors.
# Finding roots of nonlinear equations
- Relaxation
- Newton's Method
- Bisection
Given some fixed value equation,
$$
x = f(x)
$$
The relaxation method states that we choose some starting $x_{0}$ value, and then iterate $f(x_{k})$ until it converges. Of course, this only works for stable fixed points, and only while we are in a region where it converges.

Newton's method is identical to the relaxation method, you are just finding a sufficient fixed value equation to iterate through. Given the equation:
$$
f(x) =0
$$
Choose,
$$
x_{n+1} = x_{n} - \frac{f(x_{n})}{f'(x_{n})}
$$
The *secant method* is identical to Newton's method, but the analytical derivative $f'(x)$ is replaced with a numerical difference (forward or backward differences).

Bisection instead abuses the intermediate value theorem. It evaluate the function at three evenly spaced points. It moves the 2 edge points depending on the sign of the middle point, halving the search region every time.
# Finding minima/maxima
Imagine a scheme similar to bisection.
1. Start with two points $x_{1}$, $x_{4}$ bracketing the interval
2. Choose two points $x_{2}$, $x_{3}$ inside the interval
3. Check which of $f(x_{2})$ and $f(x_{3})$ is lower, and update the brackets
For example, if $f(x_{2})<f(x_{3})$ then the new interval is $[x_{1}, x_{3}]$.

The optimal points to choose $x_{2}$ and $x_{3}$ are determined by the golden ratio.
$$
x_{4}-x_{1} = (x_{3}-x_{1})z = (x_{4}-x_{2})z
$$
Where,
$$
z = \frac{1+\sqrt{ 5 }}{2}
$$
# Fourier series
The expression of a periodic function as a combination of sines and cosines.
$$
f(x) = \sum_{k=0}^{\infty} \left[ \alpha_{k} \cos\left( \frac{2\pi kx}{L} \right) + \beta_{k} \sin\left( \frac{2\pi kx}{L} \right) \right] = \sum_{k=-\infty}^{\infty} \gamma_{k} \exp\left( i \frac{2\pi kx}{L} \right)
$$
For computers, we use discrete Fourier transforms. The coefficients are,
$$
c_{k} = \sum_{n=0}^{N-1} y_{n} \exp\left( -i \frac{2\pi kn}{N} \right)
$$
Where,
$$
y_{k} = f(x_{k}) \qquad c_{k} = N \gamma_{k}
$$
If your function is completely real $y(x)\in \mathbb{R}$ than you have $c_{N-k}=c^*_{k}$ and you actually need only compute one half of the coefficients. You can accomplish the same thing if you know your function is even or odd. The inverse DFT is,
$$
y_{n} = \frac{1}{N} \sum_{k=0}^{N-1} C_{k} \exp\left( i \frac{2\pi kn}{N} \right)
$$
The fast Fourier transform is an implementation of DFT that uses divide and conquer techniques. It instead uses $\mathcal{O}(N \log N)$ operations as opposed to $\mathcal{O}(N^{2})$ like the typical DFT. A more detailed explanation can be found on pg 65 of the notes.
- There might be a question about computing the first few FFT coefficients on the final
# ORDINARY DIFFERENTIAL EQUATIONS
## Euler method
Simply,
$$
x(t+h) = x(t) + h \frac{dx}{dt}
$$
Has error $\mathcal{O}(h^{2})$.
## Runge-Kutta methods
The general idea is that, sometimes, Euler's method will over-estimate. The RK methods attempt to fix this issue by checking the value at midpoints to get a better estimate of the slope.

RK4, the most popular RK method is this huge series of steps:
1. $k_{1}=hf(x, t)$
2. $k_{2}=hf(x+k_{1} /2, t+h /2)$
3. $k_{3}=hf(x+k_{2} /2, t+h /2)$
4. $k_{4}=hf(x+k_{3}, t+h)$
5. $x(t+h)=x(t)+(k_{1}+2k_{2}+2k_{3}+1k_{4}) /6$
It has $\mathcal{O}(h^{4})$ global error, and so it's quite accurate.
## Leapfrog methods
The RK2 methods use the mid-point location as a clutch to jump to $t+h$. The Leapfrog methods use each mid-point as a legitimate midpoint. It carries $\mathcal{O}(h^{2})$ global error.

The important part about the Leapfrog method is that it is time-reversible, and so is also energy conservative as a consequence. In order to reverse time, however, you typically need to begin with one "clutch" point to start with, otherwise there are no hitches.

I don't feel like inserting all the images and equations. Check pg 85 in the lecture book.
## Verlet method
The special application of the leapfrog method on two coupled ODEs, where the LHS and RHS have separated variables.
- Works on Newton's 2nd law for conservative forces
$$
\frac{dx}{dt} = v \qquad \frac{dv}{dt} = \frac{F(x)}{m}
$$
The Verlet method is effectively a two variable leapfrog method with 1/2 the cost. It still retains energy conservation. Equations on pg 88.
