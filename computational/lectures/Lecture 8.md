### Classifying PDEs
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
### Elliptic Equations
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
#### Jacobi Relaxation Method
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
#### Gauss-Seidel method
Instead, replace the function during iterations,
$$
\phi(x, y) \leftarrow \frac{1}{4} \left[ \phi(x+a, y) + \phi(x-a, y) + \phi(x, y+a) + \phi(x, y-a) \right]
$$
Because of this, we are new using newer values as they are being computed.

Typically, this is faster than Jacobi relaxation, and it can be combine with overrelaxation.
### Parabolic PDEs
#### FTCS Method
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
### Von Neumann Stability Analysis
