# Numerical Errors
Typically there are two errors in computations
1. Rounding errors. Based on how computers store values
2. Approximation errors. Issues with our approximations in functions and methods

Round off errors, for example, can result in something like $(x+y)+z$ and $x+(y+z)$ being different from each other. If you add a very small number to a very large number, for example, the truncation will cut off the end.

Something like removing the higher order terms from a Taylor series expansion, or using a forward Euler will result in approximation errors.

Python doesn't limit the number of digits than can be stored in an integer. For non-integer values, like floats, we have rounding after 16 significant digits.

The Error constant is defined to be $\sigma=C|x|$ where
- $x$ is the number we are representing
- $\sigma$ is the standard deviation of error
- $C$ is the fractional error for a single floating point number
Generally speaking, although the error is very small, we need to try and prevent it from propagating through our calculations.

Most notably, this interferes with numerical derivatives
$$
\frac{df}{dt} \approx \frac{f_{i+1} - f_{i}}{\Delta t}
$$
Where we are adding or subtracting two very similar numbers. For smaller and smaller $\Delta t$, we can get much larger errors.
# Approximation Errors
For numerical integration, we can use the intuition we have with Riemann sums to take numerous infinitely small sums for the area under the curve.

In each of the Riemann sums, we can use a Taylor series approximation of the function within that slice. Most of the time, we just go up to linear or quadratic approximations, but you can go quite high at the cost of speed.
# Error Estimation
The Euler-MacLaurin formulae help to estimate the error sizes. You can find that, for the trapezoidal rule, it is accurate up to and including terms proportional to $h$. The approximation of error is,
$$
\epsilon = \frac{h^{2}[f'(a)-f'(b)]}{12} + H.O.T.
$$
And for the Simpson's rule,
$$
\epsilon = \frac{h^{4}[f'''(a)-f'''(b)]}{180} + H.O.T.
$$
We call the trapezoid rule a 1st-order integration rule, and the Simpson's rule a 3rd-order integration rule, because they are accurate up to and including terms proportional to $h$ and $h^{3}$

What if you don't know the derivatives? Well, if you know the error of the order, there is a way. For the trapezoid rule, for example, the error has order $h^{2}$.

Choose $N$ intervals, and compute $I_{N}(a, b)$. You know,
$$
I(a, b) = I_{N}(a, b) + Ch^{2}
$$
Where we are trying to solve for $C$. Compute $I_{2N}(a, b)$, and we know that,
$$
I(a, b) = I_{2N}(a, b) + C \left( \frac{h}{2} \right)^{2}
$$
But $C$ does not change between the two. Equate the two expressions to find that,
$$
\frac{I_{2N}(a, b) - I_{N}(a, b)}{h^{2}} = \frac{3}{4} C
$$
And now we have an approximate expression to solve for $C$.
# Newton-Cotes Formulae
Recall this idea from last week. The basis of these integration methods are to break an interval into small equal sub-intervals, approximate the function with a polynomial of some degree, and then sum over the elements.

All N-C formulae can be written like,
$$
\int_{a}^{b} f(x) \, dx \approx \sum_{k=1}^{N+1} w_{k} f(x_{k})
$$
Where $w_{k}$ are the weights and $x_{k}$ are the sample points.
# Gaussian Quadrature
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
# Numerical Derivatives
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
# Gaussian Elimination
- Familiar row reduction process or whatever you would like to call it
- Our textbook provides a Gaussian elimination function in Python, you can try importing it as `gausselim_as_func` if you would like to use it

Recall that sometimes GE can fail if we have 0 or a number very close to 0 in a diagonal.
- Our program fails, Numpy fails, and Scipy fails

To solve this we simply use partial pivoting. Find the largest value in the current column, and then swap the two rows.
# LU Decomposition
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
# QR Decomposition
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
# Relaxation
Solving for $x$ in an equation $x=f(x)$. This method is to guess an initial value $x_{0}$, and iterate until the function converges,
$$
x_{1}=d(x_{0}) \implies x_{2} = f(x_{1}) \implies \dots
$$
- This method can only find stable fixed points
![[Pasted image 20250929124206.png]]
# Newton's Method
Solving for $x$ in $f(x)=0$.
1. Start with some value $x_{1}$, calculate the tangent $f'(x_{1})$
2. Travel along the tangent line to intersection with the $x$-axis at $x_{2}$
3. Repeat
$$
x_{n+1} = x_{n} - \frac{f(x_{n})}{f'(x_{n})}
$$
If you cannot find the derivative, use the *secant method*: Calculator $f'$ using numerical difference like forward or backwards differences.

Like relaxation this method requires a good initial guess. Sometimes though, it doesn't converge.
# Bisection / Binary Search
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
# Golden Ratio Search
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
# Fourier Series
A method of expressing functions in terms of a summation of sines and cosines
$$
\hat{f}(k) = \int_{-\infty}^{\infty} f(x)e^{ 2\pi ikx } \, dx
$$
Where $\hat{f}$ is the Fourier transform of $f$

We  an discretize Fourier transforms like,
$$
\hat{f}(k) \approx \sum_{n=0}^{N-1} f(x_{n}) e^{ 2\pi ikx_{n} }\Delta_{x}
$$
Th frequency is also discretized $k_{n}=n /N$.

If you are trying to capture high frequencies, use smaller $\Delta_{x}$, and for low frequencies make the interval $N\Delta_{x}$ longer.
# Computing Fourier Coefficients
For some function $y_{k}=f(x_{k})$ and the coefficients $c_{k}=N\gamma_{k}$
$$
c_{k} = \sum_{n=0}^{N-1} y_{n} \exp \left( \frac{2\pi kn}{iN} \right)
$$
By convention, we typically compute $c_{k}$ instead of $\gamma_{k}$ as the coefficients.

We call the above the DFT, the definite Fourier transform. For $y(x)\in \mathbb{R}$, we only need half the points to determine the DFT because $c_{N-k}=c^*_{k}$.

The inverse DFT, called the iDFT is,
$$
y_{n} = \frac{1}{n} \sum_{k=0}^{N-1} c_{k} \exp \left( \frac{2\pi ikn}{N} \right)
$$
Recall that for computing sine and cosine Fourier transforms,
$$
f(x) = \sum_{k=0}^{\infty} \left[ \alpha_{k} \cos\left( \frac{2\pi kx}{L} \right) + \beta_{k} \sin\left( \frac{2\pi kx}{L} \right) \right]
$$
Then if $f$ is odd $\alpha_{k}=0$ or if $f$ is even $\beta_{k}=0$ and so if you can prove a function has these properties, you need only compute 1/2 of the coefficients.
# Fast Fourier Transform
The DFT requires some $N^{2}$ operations, which is very limited.

The idea is to divide and conquer. First, split the DFT into two,
$$
c_{k} = \sum_{n=0}^{N-1} y_{n} \exp \left( \frac{2\pi kn}{iN} \right) = E_{k} + \omega^{k} O_{k}
$$
Where we have,
$$
\begin{align}
E_{k} & = \sum_{p=0}^{N/2-1} y_{2p} \exp \left( \frac{2\pi pk}{iN /2} \right)  \\
O_{k} & = \sum_{p=0}^{N/2-1} y_{2p+1} \exp \left( \frac{2\pi pk}{iN /2} \right)
\end{align}
$$
So we have two sums, one over the even indices, and one over the odd indices. $\omega$ is called the twiddle factor,
$$
\omega = e^{ -2\pi i/N } \implies \omega^{k} = e^{ -2\pi ik/N }
$$
The number of operations required to compute this is $N^{2} /2$. However, we can keep going. Keep splitting $E_{k}$ and $O_{k}$ until each of them has just one term.
$$
c_{0} = \sum_{n=0}^{1-1} y_{n} e^{ -2\pi ikn/N } = y_{0}
$$
Consider the ODEs with the given initial conditions,
$$
\frac{dx}{dt} = f(x, t) \qquad x(t=0)=x_{0}
$$
For higher order systems we might have more initial conditions,
$$
\frac{dx}{dt} = v, \frac{dv}{dt}=a, \frac{da}{dt} = f
$$
And so on.
# Euler Method
The familiar method of adding small increments to the initial condition decided by the ODE.

Has an error within the range of $\mathcal{O}(h^{2})$
# Runge-Kutta Method
Instead of evaluating the slope at $t$, we evaluate the slope at $t+h /2$. Afterwards, the familiar Euler method steps are applied.
$$
x(t+h) = x(t) + h f\left[ \left( x(t) + \frac{h}{2} f(x(t), t) \right) , \left( t+\frac{h}{2} \right)  \right]
$$
To program this method you would compute:
1. $k_{1}=hf(x, t)$ before $x(t+h /2)$
2. $k_{2}=hf(x + k_{1} /2 , t+ h /2)$
3. $x(t+h)=x(t)+k_{2}$

This second-order Runge-Kutta method has $\mathcal{O}(h^{3})$ step error and typically $\mathcal{O}(h^{2})$ global error.

However, we can further improve this using the fourth-order Runge-Kutta method. It is done by completing various Taylor expansions at points in the interval to obtain higher order approximations. The code is straight forward, but the algebra is not.

To program this method you would compute:
1. $k_{1}=hf(x, t)$
2. $k_{2}=hf\left[ (x + k_{1} /2), (t+h /2) \right]$
3. $k_{3}=hf\left[ (x+k_{2} /2), (t+h /2) \right]$
4. $k_{4}=hf(x+k_{3}, t+h)$
5. $x(t+h)=x(t)+(k_{1}+2k_{2}+2k_{3}+k_{4}) /6$

Runge-Kutta carries global $\mathcal{O}(h^{4})$ error
# Leap-frog Methods
The second-order Runge-Kutta method uses mid-point locations as a clutch to jump to $t+h$. The leap-frog methods uses each point as a mid-point.
$$
x(t+h) = x(t) + hf\left[ x+\frac{h}{2}f(x, t), t+\frac{h}{2} \right]
$$
$$
x\left( t+ \frac{3}{2}h \right) = x\left( t+\frac{h}{2} \right) + hf \left[ x(t+h), t+h \right]
$$
Notice that the first equation is the same as RK2, however, the second equation uses the information from the first mid-point to jump forward.

![[Pasted image 20251014122647.png]]
A comparison of the Runge-Kutta and leap-frog methods

Also has a $\mathcal{O}(h^{2})$ global error, same as RK2. The difference here is that it is time reversible. The time-stepping is reversible and therefore follows the conservation of energy.
# Verlet Method
Special case for two coupled ODEs, with the LHS and RHS having separated variables.
$$
\frac{d^{2}x}{dt^{2}} = \frac{F(x, t)}{m} \implies \frac{dx}{dt} = v, \frac{dv}{dt} = \frac{F(x, t)}{m}
$$
For this example, the Verlet method states that,
$$
x(t+h) = x(t) + hv \left( t+\frac{h}{2} \right)
$$
$$
v\left( t+\frac{3}{2}h \right) = v\left( t+\frac{h}{2} \right) + h \frac{F(x(x+t), t+h)}{m}
$$
# Adaptive RK4
Recall that the error for RK4 is $\epsilon=ch^{5}$ for each time step. Where $c$ is some constant.

The error after two steps is $2ch^{5}$, and the error after a step of $2h$ is $c(2h)^{5}$. The difference between these two evaluations is,
$$
(32-2)ch^{5} = 30\epsilon
$$
And so we have determined the error by running a few more RK4 steps.
$$
\epsilon = ch^{5} = \frac{1}{30} (x_{1}-x_{2})
$$
Where $x_{1}$ is gotten by running the solver twice, and once with $2h$ to get $x_{2}$.

The idea to optimize the speed and accuracy of RK4 is to use a ratio with the target error, and the actual error,
$$
\rho = \frac{h\delta}{\epsilon} = \frac{\text{target error}}{\text{actual error}} = \frac{30h\delta}{\lvert x_{1}-x_{2} \rvert } = \frac{30\delta}{ch^{4}}
$$
If $\rho>1$, then your step could be larger, and if $\rho<1$, then your time step could be smaller.

Despite having to compute more RK4 steps, applying these strategies makes it faster because the computations are more optimized.
# Bulirsch-Stoer
We will begin at the Leapfrog method, the time-reversable one.

Recall that the Leapfrog method is polluted by the first half-step that must be done to get started. We can use something called the modified mid-point method to cancel out this point,

First, you compute the Leapfrog as normal. However, at the end, compute both the whole integer and the forward Euler 1/2-step,
$$
x_{n-1 /2} = x_{n-3 /2} + h f(x_{n-1}, t+H-h)
$$
$$
x_{n} = x_{n-1} + h f(x_{n-1 /2}, t+H-h /2) \approx x(t+H)
$$
$$
x'_{n} = x_{n-1 /2} + hf(x_{n}, t+H) \approx x(t+H)
$$
And we apply the following adjustment to cancel out the even powers,
$$
x(t+H)_\text{final} = \frac{x_{n}+x'_{n}}{2}
$$
This strategy is the basis for the Bulirsch-Stoer method.
- I think the way it works is that it repeatedly applied the MMP method to continuously cancel out even powers to increase the accuracy
- Luckily there is a Python script provided to us

Summary:
- Take $h=H$, set $n=1$ and use MMP to find $x(t+H)$
- Continue to refine the grid to find new estimates and error estimates
- When the error is acceptable, stop

The iteration is,
$$
x(t+H) = R_{n, m+1} + O(h^{2m+2}_{n})
$$
$$
R_{n, m+1} = R_{n, m} + \frac{R_{n, m}-R_{n-1, m}}{(n /(n-1))^{2m}-1} \qquad h_{n} = \left( \frac{n-1}{n} \right)h_{n-1}
$$
Common practices while using the B-S method is,
- Half your interval and redo in smaller $H$ regions if you cannot reach your tolerance level after 8-10 max steps
- Iterate until your regions are small enough that you reach the tolerance in `nmax` steps
# Boundary Value Problems
Suppose we are choosing an initial velocity $v_{0}$ for a projectile to land after $t_{L}=10$ seconds. The position $x(v_{0}, t)$ is some non-linear function of $v_{0}$, and we are interested in finding $x(v_{0}, t=t_{L})$

The shooting method implies integrating the equation and adjusting $v_{0}$ until we locate the root. The root can be found with binary search, secent method or whatever.

However, the shooting method does not work as well for finding functions that satisfy two boundary conditions. For example, the wavefunctions for the square well.
$$
-\frac{\hbar}{2m} \frac{ \partial^{2}\psi }{ \partial x^{2} } + V(x)\psi = E\psi
$$
$$
\psi(x=0) = \psi(x=L) =0
$$
In these problems we are interested in adjusting $E$ as the parameter. We are adjusting the eigenvalue instead of the leftmost slope of the function.
# Stability
Describes how fast initially close solutions diverge from each other. Sometimes, an algorithm is unstable, and sometimes, a system is inherently unstable.

Simulating $y'=-2.3y$ using the Forward Euler method, for example, is stable for small values but unstable for $h=1$
- Run a simulation, and you'll find that the "amplitude" of the approximations will increase overtime. So it'll give you `NaN` after some time.

So why is it unstable? Well, for each time step we have,
$$
y_{k+1} = y_{k} + h_{k} \lambda y_{k} = (1+h_{k}\lambda) y_{k}
$$
Where for this system $\lambda=-2.3$. After $k$ time steps we have,
$$
y_{k} = (1+h_{k}\lambda)^{k} y_{0}
$$
For a method to be stable, we require that,
$$
\left| 1+h_{k}\lambda \right| \leq 1 \implies \lambda<0, h_{k} \leq \left| \frac{2}{\lambda} \right|
$$
# Classifying PDEs
We classify PDEs similarly to conical equations in geometry.

Take some arbitrary PDE:
$$
\alpha \frac{ \partial^{2}\phi }{ \partial x^{2} } + \beta \frac{ \partial^{2}\phi }{ \partial x\partial y } + \gamma \frac{ \partial^{2}\phi }{ \partial y^{2} } + \delta \frac{ \partial \phi }{ \partial x } + \varepsilon \frac{ \partial \phi }{ \partial y } =f
$$
We classify it using the "determinant"
$$
\Delta = \beta^{2} - 4\alpha \gamma
$$
1. $\Delta=0$, parabolic
2. $\Delta<0$ elliptic
3. $\Delta>0$ hyperbolic
The canonical examples of these PDEs in physics are the:

Diffusion equation (parabolic),
$$
\kappa \frac{ \partial^{2}T }{ \partial x^{2} } - \frac{ \partial T }{ \partial t } =0
$$
Poisson equation (elliptic),
$$
\nabla^{2} \phi = \rho
$$
Wave equation (hyperbolic),
$$
c^{2} \frac{ \partial^{2}\phi }{ \partial x^{2} } - \frac{ \partial^{2}\phi }{ \partial t^{2} } =0
$$
Generally speaking, in higher dimensions the classification of each of these PDEs changes, but in physics we generally just call them the same things.

Note that, when solving PDEs, stability is crucial and so we need to begin keeping it in mind. Generally speaking, when solving ODEs our goal is to solve a set of coupled ODEs in an efficient way, and without the errors blowing up.

Recall the central difference equation for calculating the 2nd derivative. This is typically important for simulating PDEs.
$$
f''(x) = \frac{f(x+h)-2f(x)+f(x-h)}{h^{2}} - \frac{1}{12} h^{2} f^{(4)}(x) + \dots
$$
# Elliptic Equations
Imagine solving the Laplace equation for some physical system.
$$
\nabla^{2}\phi = \frac{ \partial^{2}\phi }{ \partial x^{2} } + \frac{ \partial^{2}\phi }{ \partial y^{2} } =0
$$
Plugging in our approximation of the numerical 2nd derivative,
$$
\phi(x+a, y) + \phi(x-a, y) + \phi(x, y+a) + \phi(x, y-a) - 4\phi(x, y) \approx 0
$$
For each $x$ and $y$, subject to the boundary conditions.

If the boundary conditions are given in terms of $\phi$, then we can plug in this value for the adjacent points. If it's given in terms of $\partial \phi$, then we might instead find the algebraic relationship between the points near the boundary using finite differences.

It is tempting to solve this system using a matrix equation like,
$$
\vec{L} \phi = \vec{R} \phi
$$
However, there are easier ways.
## Jacobi Relaxation Method
Given the approximate equation above, we will simply define a rough estimate of the derivative and claim that,
$$
\phi'(x, y) = \frac{1}{4} \left[ \phi(x+a, y) + \phi(x-a, y) + \phi(x, y+a) + \phi(x, y-a) \right]
$$
Where we have moved the $\phi$ term to the left side, and re-labelled it. The principle behind doing so is similar to finding the solutions of $f(x)=x$.

For this problem, this method turns out to be always stable. However it is quite slow and computation heavy.

We can optimise this method by applying overrelaxation.
$$
\phi'(x, y) = \frac{1+\omega}{4} \left[ \phi(x+a, y) + \phi(x-a, y) + \phi(x, y+a) + \phi(x, y-a) \right] - \omega \phi(x, y)
$$
For some constant $\omega$.

The stability depends on the choice of $\omega$, but it usually finds solutions quicker when it does work.
## Gauss-Seidel method
Instead, replace the function during iterations,
$$
\phi(x, y) \leftarrow \frac{1}{4} \left[ \phi(x+a, y) + \phi(x-a, y) + \phi(x, y+a) + \phi(x, y-a) \right]
$$
Because of this, we are new using newer values as they are being computed.

Typically, this is faster than Jacobi relaxation, and it can be combine with overrelaxation.
# Parabolic PDEs
## FTCS Method
Called the forward time, centred space method.

Consider the 1D heat equation,
$$
\frac{ \partial T }{ \partial t } = \kappa \frac{ \partial^{2}T }{ \partial x^{2} }
$$
With the boundary and initial conditions,
$$
T(0, t) = T_{0} \qquad T(L, t) = T_{L}
$$
$$
T(x, 0) = T_{0} + (T_{L}-T_{0}) \left[ \frac{f(x)-f(0)}{f(L)-f(0)} \right]
$$
First, we would discretize this system in space, and then in time. We obtain the explicit method,
$$
T^{n+1}_{m} = T^{n}_{m} + \frac{\kappa h}{a^{2}} \left( T^n_{m+1} - 2T^n_{m} + T^n_{m-1} \right)
$$
Where $T_{m}(t_{n})\equiv T^n_{m}$ and $T_{m}(t)= \left[ T_{0}(t), \dots, T_{M}(t) \right]$. Note that the position has been discretized in $n$, and the time has been discretized in $m$
$$
x_{m} = \frac{m}{M} L = am \qquad t_{n} = nh = n \times \text{time step}
$$
# Von Neumann Stability Analysis
The idea behind this stability analysis is to choose one Fourier mode, and see if it grows or not.

By definition, $T^n_{m}$ as an inverse DFT is,
$$
T^n_{m} = \sum_{k} \hat{T}^n_{k} e^{ ikx_{m} }
$$
Now, pick one single Fourier mode, and substitute in $x_{m}=am$
$$
T^n_{m} = \hat{T}^n_{k} e^{ ikam }
$$
Then the expression for the FTCS method becomes,
$$
\hat{T}^{n+1}_{k} e^{ ikam } = \left( 1- \frac{2\kappa h}{a^{2}} \right) \hat{T}^{n}_{k} e^{ ikam } + \frac{\kappa h}{a^{2}} \left[ \hat{T}^n_{k} e^{ ika(m+1) } - \hat{T}^n_{k} e^{ ika(m-1) } \right]
$$
Re-arrange,
$$
\left| \frac{\hat{T}^{n+1}_{k}}{\hat{T}^n_{k}} \right| = \left| 1-\frac{4h\kappa}{a^{2}} \sin ^{2}\left( \frac{ka}{2} \right) \right|
$$
This portion on the left is defined to be the *growth factor*. Ideally, this should be less than 1 if the solution is not to blow up, and so this equation is stable when,
$$
h \leq \frac{a^{2}}{2\kappa}
$$
Provided the resolution is adequate

You can repeat the same analysis for FTCS on the wave equation. You will find that the method will grow without bounds, and so is always unstable.
# The Implicit Method
Say we have the set of ODEs,
$$
\frac{ \partial \phi_{m} }{ \partial t } = \psi_{m} \qquad \frac{d\psi_{m}}{dt} = \frac{c^{2}}{a^{2}} \left( \phi_{m+1} - 2\phi_{m} + \phi_{m-1} \right)
$$
The implicit method states that we evaluate the RHS at $t+h$ instead of at $t$.

Using explicit methods, we would solve this system of equations
$$
\begin{align}
\phi^{n+1}_{m} & = \phi^{n}_{m} + h \psi^{n}_{m} \\
\psi^{n+1}_{m} & = \psi^{n}_{m} + h \frac{c^{2}}{a^{2}} \left( \phi^{n}_{m-1} + \phi^{n}_{m+1} - 2\phi^{n}_{m} \right) 
\end{align}
$$
Instead we will solve the version with $h\to-h$, and then shift forward in time $n\to n+1$
$$
\begin{align}
\phi^{n}_{m} & = \phi^{n+1}_{m} - h \psi^{n+1}_{m} \\
\psi^{n}_{m} & = \psi^{n+1}_{m} - h \frac{c^{2}}{a^{2}} \left( \phi^{n+1}_{m-1} + \phi^{n+1}_{m+1} - 2\phi^{n+1}_{m} \right) 
\end{align}
$$
Lets try testing the stability of this version with von Neumann substitution,
$$
(\phi^{n}_{m}, \psi^{n}_{m}) = \left( \hat{\phi}^{n}_{k}, \hat{\psi}^{n}_{k} \right) e^{ ikma }
$$
The implicit step, written out as a matrix equation is,
$$
\begin{bmatrix}
\phi^{n}_{m} \\
\psi^{n}_{m}
\end{bmatrix} = \begin{bmatrix}
1 & -h \\
\frac{2hc^{2}}{a^{2}} & 1
\end{bmatrix} \begin{bmatrix}
\phi^{n+1}_{m} \\
\psi^{n+1}_{m}
\end{bmatrix} - a\begin{bmatrix}
0 \\
\frac{hc^{2}}{a^{2}} \left( \phi^{n+1}_{m+1} + \phi^{n+1}_{m-1} \right) 
\end{bmatrix}
$$
Therefore we get,
$$
\begin{bmatrix}
1 & -h \\
hr^{2} & 1
\end{bmatrix} \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \vec{B} \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \begin{bmatrix}
\hat{\phi}^n_{k} \\
\hat{\psi}^n_{k}
\end{bmatrix}
$$
Where we have defined,
$$
\vec{B} = \begin{bmatrix}
1 & -h \\
hr^{2} & 1
\end{bmatrix} \qquad r=\frac{2c}{a} \sin\left( \frac{ka}{2} \right)
$$
This implies that,
$$
 \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \vec{B}^{-1} \begin{bmatrix}
\hat{\phi}^n_{k} \\
\hat{\psi}^n_{k}
\end{bmatrix}
$$
The eigenvalues of $\vec{B}^{-1}$ are,
$$
\lvert \lambda_{\pm} \rvert = \frac{1}{\sqrt{ h^{2}r^{2}+1 }} \leq 1
$$
The magnitude of the growth factors are therefore always less than or equal to one, so the implicit method is unconditionally stable.

However, the solutions produced by it decay exponentially, and so for the wave equation the solutions we get will not be very accurate.
# Crank-Nicolson
$$
\begin{align}
\phi^{n+1}_{m} - \frac{h}{2} \psi^{n+1}_{m}  & = \phi^{n}_{m} + \frac{h}{2} \psi^{n}_{m} \\
\psi^{n+1}_{m} - \frac{h}{2} \frac{c^{2}}{a^{2}} \left( \phi^{n+1}_{m-1} + \phi^{n+1}_{m+1} - 2\phi^{n+1}_{m} \right) & = \psi^{n}_{m} + \frac{h}{2} \frac{c^{2}}{a^{2}} \left( \phi^{n}_{m-1} + \phi^{n}_{m+1} - 2\phi^{n}_{m} \right) 
\end{align}
$$
This is essentially the average of the forward Euler and the implicit method (backward Euler).

Duplicating the same von Neumann stability analysis, we find that the growth factors for this scheme are 1. Therefore, the solution neither grows nor decays
- Also 2nd order accurate in time, whereas the forward and backward Euler methods are 1st order accurate.
# Spectral Methods
- Use a set of orthogonal functions forming a basis of your function space. For example, the sines and cosines.
- Project your initial conditions and forcing onto that basis
- If the PDEs are linear, you can simply iterate in time
- If they are non-linear, you need to do FFTs and iFFTs to compute the non-linear terms

- Generally used to compute derivatives very accurately by leveraging the properties of Fourier transforms
$$
\frac{ \partial f }{ \partial x } \to ik \hat{f}
$$
# Psuedo-random Number Generators
Computers cannot generate random numbers, so we need to find versions that are close. Commons methods are: using system time, and "Mersenne twister"

We can try to determine if something is random with pairwise correlations
$$
\epsilon(N, n) = \frac{1}{N} \sum_{i=1}^{N} x_{1} x_{i+n} - \mathbf{E}[x^{2}]
$$
For $N$ number of data points, $n$ correlation distance, and $\mathbf{E}[X]$ is the expected value of $X$.

$k$th moment of sequence of $N$ elements
$$
\mu(N, k) = \mathbf{E}[x^{k}]
$$
We would like the moments of our random number distributions have desired properties.

We can also test for overlapping permutations. For example, for the orders of 5 random numbers, there should be $5!$ possible permutations, and each of them should occur with equal probability.
# Linear Congruential Generator
Sequences of numbers produced by a PRNG that are reproducible if you start with the same seed.

Generally, these are best used to get numbers quickly, and for testing (you can keep using the same seed).
# Non-Uniform Distributions
Consider some source of random floats $z$ with the probability density $q(z)$. For a uniform distribution, $q(z)=1$ because the probably for anything to be chosen is the same.

Consider some transformation of $z$ into a new variable $x$ using $x=x(z)$. Clearly, $x$ is another random number, but we will use some other probability distribution $p(x)$.

The probability of generating a number from $x$ to $x+dx$ and $z$ to $z+dz$ must be equal:
$$
p(x)\, dx = q(z) \, dz
$$
Where we are interesting in solve for a $x(z)$ with the distribution we want. This can be done with the integral:
$$
z = \int_{0}^{x(z)} p(x') \, dx'
$$
However, sometimes it is not so easy to solve for $x(z)$.
# Monte Carlo Integration
1. Good for pathological functions and fast-varying functions
2. Much faster for multi-dimensional integrals
3. Easier to implement for complicated domains
## Hit-or-Miss MC
If your function fits inside a finite region where we want to integrate from $x=0$ to $x=2$. Define the area of the box as $A$.
1. Randomly pick $N$ locations $(x, y)$ inside the box
2. Count the number of locations that are in the shaded region
3. The fraction of points inside the shaded region is $k /N$, which approximates the probability $p$
Now, using $p$ solve for the integral $I$
$$
P = \frac{I}{A} \approx \frac{k}{N} \implies I \approx \frac{kA}{N}
$$
The expected error for this method is,
$$
\sigma = \sqrt{ \frac{(A-I)I}{N} }
$$
Which is within the range of $N^{-1/2}$. Comparatively slow to the trapezoid and Simpson's rule $N^{-2}$ and $N-4$, respectively.
- Only use MC integration if you absolutely have to
## Mean value MC
Use the definition of the average/mean value
$$
I = \int_{a}^{b} f(x) \, dx \qquad \left< f \right> = \frac{1}{b-a} \int_{a}^{b} f(x) \, dx
$$
Therefore,
$$
I = (b-a) \left< f \right>
$$
Estimate $\left< f \right>$ using random numbers:
$$
\left< f \right> \approx \frac{1}{N} \sum_{i=1}^{N} f(x_{i}) \implies I \approx \frac{b-a}{N} \sum_{i=1}^{N} f(x_{i})
$$
Here, we pick $x$, for the hit-or-miss method we use $(x, y)$.

The error in this method is,
$$
\sigma = (b-a) \sqrt{ \frac{\left< f^{2} \right> -\left< f \right> ^{2}}{N} }
$$
## Importance Sampling MC
Use when your integrand contains a divergence. Essentially, you want to place more points where the integrand is large, but give less weight to points in densely-populated regions.

The weight function is always:
$$
I = \int_{a}^{b} f(x) \, dx = \left< \frac{f(x)}{w(x)} \right> \int_{a}^{b} w(x) \, dx
$$
Where the angle brackets define the weighted average $\left< X \right>_{w}$, the average of $X$ over a set of points that sample important regions more frequency according to $w$.

Generally after choosing a weight function, the non-uniform distribution is,
$$
p(x) = \frac{w(x)}{\int_{a}^{b} w(x) \, dx }
$$
The expected error using this method is,
$$
\sigma = \sqrt{ \frac{\left< f^{2} \right> -\left< f \right> ^{2}}{N} } \int_{a}^{b} w(x) \, dx
$$
Which, just like the rest of the MC method, varies as $N^{-1/2}$
# Monte Carlo simulation in statistical mechanics
$$
\left< X \right> = \sum_{i=1}^{\text{ALL}} X_{i} P(E_{i}) \qquad P(E_{i}) = \frac{\exp \left[ -E_{i} / (k_{B}T) \right] }{Z} \qquad Z = \sum_{i=1}^{\text{All}} \exp \left[ -\frac{E_{i}}{k_{B}T} \right] 
$$
There is such an extreme number of terms in this system that it makes the most sense to use Monte Carlo to simulate it.

However, we need to figure out how to estimate $\left< X \right>$ and $Z$. We will use importance sampling, and Markov chain Monte Carlo, respectively.

There are a lot of states $P(E_{i})$ there are incredibly small ($E_{i}\gg k_{B}T$), and so we would like to use importance sampling so that the calculation is more accurate for the terms that are larger.
# Importance sampling for Stat. Mech.
We have:
$$
\left< X \right> = \sum_{i=1}^{N} X_{i} P(E_{i}) \approx \frac{1}{N} \sum_{k=1}^{N} \frac{X_{k}P(E_{i})}{w_{k}} \sum_{i=1}^{\text{All}} w_{i}
$$
Which actually ends up simplifying to:
$$
\left< X \right> \approx \frac{1}{N} \sum_{i=k}^{N} X_{k}
$$
Because we choose $P(E_{i})$ as the weight function. This is the mean value method, but the values $X_{k}$ are picked from a non-uniform distribution.
# Markov chain method
1. Choose a random state
2. Calculate the energy of that state $E_{i}$
3. Choose a transition to a new state $j$ uniformly at random from the allowed step
4. Calculate the energy of this new state $E_{j}$
5. Calculate the acceptance probability for the transition
$$
P_{a} = \begin{cases}
1 & E_{j} \leq E_{i} \\
\exp \left( -\frac{E_{j}-E_{i}}{k_{B}T} \right)  & E_{j}> E_{i}
\end{cases}
$$
6. Accept/reject the move
7. Measure the quantity $X$ in its current state, and store it
8. Repeat from step 2

Typically, given any initial state, the system will progressively evolve towards one where all states follow Boltzmann.
# Simulated annealing
Annealing comes from metal working. It's based on the idea of finding the optimal cooling rate for the product to be sturdy, as opposed to snapping from the change in temperature.

This method is good for finding global min/max in complicated systems.

Use the function $f$ the energy function, and then reduce the temperature in the system until the ground state is discovered
- Sometimes it can be wrong though. Especially if there are two min/max with similar energies
