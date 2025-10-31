### Nonlinear Equations
Generally speaking, we seek to solve a general system of non-linear equations in with $n$ unknowns in the form.
$$
\vec{f}(\vec{x}) = \vec{0}
$$
Where $\vec{f}:\mathbb{R}^{n}\to \mathbb{R}^{m}$ and $\vec{x}$ is an $n$ dimensional vector. For now, we are exclusively interested in the case when $m=n$.
### Existence and Uniqueness
Unlike flat surfaces, two curved surfaced can be tangent without being coincident, and so it is far harder to determine the existence or number of solutions for non-linear equations. Here, we go over some useful tools to help guarantee the existence of a solution.

Intermediate Value Theorem:
> If $f$ is continuous on a closed interval $[a, b]$, and $c$ lies between $f(a)$ and $f(b)$, then there is a value $x^*\in[a, b]$ such that $f(x^*)=c$

> This implies that if $f(a)$ and $f(b)$ differ in sign, than we know for certain a solution $c=0$ exists between the two. Such an interval of $[a, b]$ is called a *bracket*.

Inverse Function Theorem
> For a continuously differentiable function $f$, if a Jacobian matrix $J_{f}$ defined by $\{ J_{f}(x) \}_{ij}=\partial f_{i}(x) / \partial x_{j}$ is invertible at a point $x^*$ than there is a neighbourhood of $f(x^*)$ in which $f$ is invertible.

> That is, the equation $f(x)=y$ has a solution for any $y$ in the neighbourhood of $f(x^*)$
- Do not that, even if $J_{f}$ is invertible for all $x \in \mathbb{R}^{n}$, so that $f$ is invertible everywhere, it still may not be globally invertible unless some additional condition holds like $\lvert J_{f}^{-1}(x) \rvert$ being finite

A function $g:\mathbb{R}^{n}\to \mathbb{R}^{n}$ is *contractive* on a set $S\subseteq \mathbb{R}^{n}$ if there is a constant $\gamma$ with $0<\gamma<1$ such that,
$$
\lvert g(x)-g(z) \rvert \leq \gamma \lvert x-z \rvert
$$
For all $x,z \in S$

A *fixed point* of a function $g$ is any value $x$ such that $g(x)=x$.

Contraction Mapping Theorem
> If $g$ is contractive on a closed set $S\subseteq \mathbb{R}^{n}$ and $g(S)\subseteq S$, then $g$ has a unique fixed point in $S$. Thus, if $f$ has the form $f(x)=x-g(x)$, where $g$ is contractive on a closed set $S\subseteq \mathbb{R}^{n}$ with $g(S)\subseteq S$ then $f(x)=0$ has a unique solution in $S$, namely at the fixed point of $g$.

The *topological degree* of a function $f$ on a closed and bounded set $S\subseteq \mathbb{R}^{n}$ can be roughly stated as the number of zeros $x^*$ of $f$ in $S$ counted by the positive or negative orientation
$$
\sum_{x^*\in S} \text{sign}(\det(J_{f}(x^*)))
$$
For a non-linear equation in one dimension, the degeneracy of a root implies that both the function and its derivative are zero at that point. This is called a *multiple root*. Generally speaking, for a smooth function $f$, if,
$$
f(x^*) = f'(x^*) = f''(x^*) = \dots = f^{(m-1)}(x^*) = 0
$$
But $f^{(m)}(x^*)\neq 0$ then $x^*$ is a root with *multiplicity* $m$. If $m=1$ then $x^*$ is called a *simple root*
### Sensitivity and Conditioning
If the function is insensitive to the value of the argument, then the root will be sensitive. That is, given that $f(x)=y$, then finding $x$ given $y$ has the opposite conditioning from finding $y$ given $x$.

The absolute condition number for evaluating a smooth function $f$ near a root $x^*$ is $\left| f'(x^*) \right|$, and so the root-finding problem for $f$ at the same point has absolute condition number $1 /\left| f'(x^*) \right|$.
- This means that if we have found some point $\hat{x}$ where $\lvert f(\hat{x}) \rvert<\epsilon$ then the error in the solution may be as large as $\epsilon /\lvert f'(x^*) \rvert$
- In $n$ dimensions we instead have $\lvert J_{f}(x^*) \rvert$ and $\lvert J_{f}^{-1}(x^*) \rvert$
![[Pasted image 20251030210431.png]]
### Convergence Rates and Stopping Criteria
Most non-linear systems cannot be solved in a finite number of steps, and so we need to define a stopping criteria.

Generally speaking, we characterise the effectiveness of iterative methods using the convergence rate.

The error at iteration $e_{k}$ is typically given by,
$$
e_{k} = x_{k}-x^*
$$
Where $x_{k}$ is the approximate solution and $x^*$ is the true solution. In the case where we are instead defining an interval known to contain $x^*$, the length of the interval is the error $e_{k}$.

An iterative method is said to converge with rate $r$ is,
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert ^{r}} = C
$$
For some finite constant $C>0$.
- If $r=1$ and $C<1$ then the convergence rate is linear
- If $r>1$ then it is superlinear
- If $r=2$ than it is quadratic
- If $r=3$ it is cubic
### Interval Bisection
For some function $f$, define an initial interval $[a, b]$ such that $\text{sign}(f(a))\neq\text{sign}(f(b))$. From here, we can repeatedly cut the interval in half by checking the sign of $f(m)$, where $m$ is the midpoint between $a$ and $b$.
### Fixed Point Iteration
Define the new fixed point function,
$$
x = g(x)
$$
Where $g$ is a function chosen so that its fixed points are solutions for $f(x)=0$. We have obtained the repeated iteration,
$$
x_{k+1} = f(x_{k})
$$
The simplest method of characterising the behaviour for an iterative fixed point scheme is the consider the derivative of $g$ at $x^*$.

If $x^*=g(x^*)$ and $\lvert g'(x^*) \rvert<1$ then the iterative scheme is *locally convergent*. If $>1$ than the fixed-point iteration diverges for any started point not $x^*$.

In the ideal case when $g'(x^*)=0$, Taylor's theorem tells us that,
$$
g(x_{k}) - g(x^*) = \frac{1}{2} g''(\xi_{k}) (x_{k}-x^*)^{2}
$$
For some $\xi_{k}$ between $x_{k}$ and $x^*$. Therefore,
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert ^{2}} = \left\lvert  \frac{g''(x^*)}{2}  \right\rvert
$$
And so the convergence rate is at least quadratic.
### Newton's Method
Defined by the truncated Taylor series,
$$
f(x+h) \approx f(x) + f'(x)h
$$
Which is a linear function of $h$ that approximates $f$ near $x$. The zero for this linear function is clearly,
$$
h = -\frac{f(x)}{f'(x)}
$$
Assuming $f'(x)\neq 0$.
![[Pasted image 20251030212803.png]]
Newton's method is, in a way, a systematic method of transforming a non-linear equation $f(x)=0$ into a fixed point problem where,
$$
g(x) = x - \frac{f(x)}{f'(x)} \implies x_{k+1} = x_{k} - \frac{f(x_{k})}{f'(x_{k})}
$$
The convergence rate for Newton's method is $r=2$.
