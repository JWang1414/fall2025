From TUT6
- Remember how to compute error in non-linear systems
- Contraction mapping(?)
- Remember bisection, Newton's, and secant methods
	- Compute how long it takes for them to converge too
- Remember Newton's method for systems
From TUT7
- Check if interpolants are unique
- Remember monomial, Lagrange, and NDD methods
	- How to add points to NDD
- Approximate points with interpolants
- Compute error for interpolants(?)
From TUT8
- Compute linear, quadratic, and cubic splines
- Remember what "clamped", "free/natural" etc splines are
- How to determine the order of convergence
# Equations
Interpolant error:
$$
f(x) - p_{n}(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} \prod_{j=0}^{n} (x-x_{j})
$$

Order of convergence
$$
e_{n} \approx \kappa n ^{-\rho} \implies \rho = \frac{\log(e_{n} /e_{m})}{\log(m /n)}
$$
> Where $e_{m}$ and $e_{n}$ are a pair of two errors between the interpolant and exact function


Convergence of iterative methods
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert ^{p}} = C \implies p \approx \frac{\log(\lvert e_{k+1} \rvert / \lvert e_{k} \rvert )}{\log(\lvert e_{k} \rvert / \lvert e_{k-1} \rvert )}
$$
- Triple consecutive elements give an estimation of order


Contraction mapping condition
$$
\lvert g'(x) \rvert <\lambda < 1
$$
- Study how $g$ behaves in $I$. That is, what the max/min are, and where $g$ is increasing/decreasing

Newton's method:
$$
g(x) = x - \frac{f(x)}{f'(x) } \implies x_{k+1} = x_{k} - \frac{f(x_{k})}{f'(x_{k})}
$$
- We can simply claim the order of convergence is 2

Secant method:
$$
f'(x) = \frac{f(x_{k})-f(x_{k-1})}{x_{k} - x_{k-1}}
$$
- Replace the derivative in Newton's method with this finite scheme
- Computed quicker because we need to compute $f(x_{k})$ and $f(x_{k-1})$ anyways
- Order of convergence 1.618

Newton's Method for a System of Equations
$$
\vec{f}(\vec{x}+\vec{s}) \approx \vec{f}(\vec{x}) + \vec{J}_{f} (\vec{x}) \vec{s}
$$
- Begin by computing the Jacobian of the system of equations, $\vec{J}_{f}$
- Solve the system $\vec{J}_{f}(\vec{x}_{k})\vec{s}_{k}=-\vec{f}(\vec{x}_{k})$
- Compute $\vec{x}_{k+1}=\vec{x}_{k}+\vec{s}_{k}$, and substitute into $\vec{f}(\vec{x}_{k})$ and $\vec{J}_{f}(\vec{x}_{k})$ to calculate the next Newton step
For decomposition:
$$
Ax=b
$$
$$
PAQ=LU
$$
$$
Ly=Pb \qquad Uz=y \qquad x=Qz
$$
