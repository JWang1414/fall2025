### Secant Method
The same as Newton's method, but approximates the derivative $f'(x_{k})$.
$$
f'(x_{k}) \approx \frac{f(x_{k})-f(x_{k-1})}{x_{k} - x_{k-1}}
$$
Which iterates quicker because we are required to compute all these functions anyways. 
![[Pasted image 20251030213120.png]]
The convergence of the secant method is,
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert \lvert e_{k-1} \rvert }=c
$$
Implying that the convergence rate is superlinear. In fact it is,
$$
r = \frac{1+\sqrt{ 5 }}{2}
$$
The secant method requires two starting guesses, and converges slower than Newton's method, but because the cost per iteration is lower, it is typically faster than using Newton's method.
### Systems of Nonlinear Equations
The fixed point problem in this scheme becomes,
$$
\vec{x} = \vec{g}(\vec{x})
$$
With the iteration,
$$
\vec{x}_{k+1} = \vec{g}(\vec{x}_{k})
$$
The analogous condition to the convergence rate is the *spectral radius*
$$
\rho (\vec{G}(\vec{x}^*)) < 1
$$
Where $\vec{G}(\vec{x})$ denotes the Jacobian matrix of $\vec{g}$ evaluated at $\vec{x}$
$$
\{ \vec{G}(\vec{x}) \}_{ij} = \frac{ \partial g_{i}(\vec{x}) }{ \partial x_{j} }
$$
Similar to the one-dimensional version, if $\vec{G}(\vec{x}^*)=\vec{O}$ than the convergence rate is at least quadratic.
### Newton's Method
For a differentiable function $f:\mathbb{R}^{n}\to \mathbb{R}^{n}$, the new truncated Taylor series is,
$$
f(x+s) \approx f(x) + J_{f}(x)s
$$
If $\vec{s}$ satisfies the linear system $J_{f}(x)s=-f(x)$ then $x+s$ is an approximate zero of $f$.

Notably, the iteration of Newton's method now requires the evaluation of an LU decomposition to determine $s$. So, for each step, the cost of iteration is $\mathcal{O}(n^{3})$
### Broyden's Method
An extension of the secant method into more than one dimension. Now, we choose some approximate Jacobian $B_{0}$ at the starting point $x_{0}$
- If you do not want to compute derivatives, you can even use $B_{0}=\vec{1}$.

The Jacobian is updated each step like,
$$
B_{k+1} (x_{k+1}-x_{k}) = f(x_{k+1}) - f(x_{k})
$$
However, generally speaking, in practice a factorisation of $B_{k}$ is updated instead of $B_{k}$ because it is faster. This decreases the total cost per iteration from $\mathcal{O}(n^{3})$ to $\mathcal{O(n^{2})}$.

![[Pasted image 20251030214719.png]]
