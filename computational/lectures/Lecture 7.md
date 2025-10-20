### Adaptive RK4
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
### Bulirsch-Stoer
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
### Boundary Value Problems
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
### Stability
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
