# Question 3
---
a.
Interpolating polynomial $p_{1}(x)$ of the function $f(x)=e^{ -x }$

Data points $x_{0}=-1$ and $x_{1}=1$

The initial points are:
$$
f[-1] = e \qquad f[1] = e^{ -1 }
$$
Then,
$$
f[-1, 1] = \frac{f[1]-f[-1]}{(1)-(-1)} = \frac{e^{ -1 } - e}{2}
$$
The polynomial is therefore:
$$
p_{1}(x) = e + \frac{e^{-1}-e}{2}(x+1)
$$
- Remember to make an NDD table for this question
---
b.
The error in polynomial interpolation is defined to be,
$$
f(x) - p_{n}(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} \prod_{j=0}^{n} (x-x_{j})
$$
Where $\xi$ is an unknown point in $\text{ospr}\{ x_{0}, \dots, x_{n} \}$ that depends on $x$.

For $p_{1}(x)$ this becomes:
$$
\frac{f^{(2)}(\xi)}{2!} \prod_{j=0}^{n} (x-x_{j}) = \frac{e^{ -\xi }}{2} (x+1)(x-1) = \frac{e^{ -\xi }}{2} (x^{2}-1)
$$
For any $x \in[-1, 1]$, $\xi \in(-1, 1)$. The absolute value of the error is maximized when $x=0$ and $\xi=-1$.
$$
\left| \frac{e^{ -\xi }}{2}(x^{2}-1) \right| \leq \frac{e^{ -\xi }}{2} < \frac{e}{2}
$$
For any $x \in[1, 2]$, $\xi \in(-1, 2)$. To maximize the error, choose $x=2$ and $\xi=-1$
$$
\left| \frac{e^{ -\xi }}{2}(x^{2}-1) \right| \leq \frac{3}{2} e^{ -\xi } < \frac{3e}{2}
$$
The lower bound on the error in both cases is 0. This because at the chosen interpolating points $x_{0}=-1$ and $x_{1}=1$, the error will be 0, and at least one of these points is included in both intervals.

---
c.
Initial points are:
$$
f[x_{0}] = e \qquad f[x_{1}] = 1 \qquad f[x_{2}] = e^{-1}
$$
Then,
$$
f[x_{0}, x_{1}] = \frac{f[x_{1}] - f[x_{0}]}{x_{1}-x_{0}} = \frac{1-e}{0-(-1)} = 1-e
$$
$$
f[x_{1}, x_{2}] = \frac{f[x_{2}] - f[x_{1}]}{x_{2}-x_{1}} = \frac{e^{-1}-1}{1-0} = e^{-1}-1
$$
Then,
$$
f[x_{0}, x_{1}, x_{2}] = \frac{f[x_{1}, x_{2}] - f[x_{0}, x_{1}]}{x_{2}-x_{0}} = \frac{(e^{-1}-1) - (1-e)}{1-(-1)} = \frac{(e-1)^{2}}{2e}
$$
The polynomial is therefore:
$$
p_{2}(x) = e + (1-e)(x+1) + \frac{(e-1)^{2}}{2e}(x+1)x
$$
- Remember to make an NDD table here
---
d.
Copy and paste the formula for reference:
$$
f(x) - p_{n}(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} \prod_{j=0}^{n} (x-x_{j})
$$
For $p_{2}(x)$ this becomes:
$$
\frac{f^{(3)}(\xi)}{3!} \prod_{j=0}^{n} (x-x_{j}) = -\frac{e^{ -\xi }}{6} (x+1)x(x-1) = -\frac{e^{ -\xi }}{6} x(x^{2}-1)
$$
For any $x \in[-1, 1]$, $\xi \in(-1, 1)$. First, find the local maximum points for $x(x^{2}-1)$ in this range:
$$
\frac{d}{dx} x(x^{2}-1) = 3x^{2}-1 =0 \implies x = \frac{1}{\sqrt{ 3 }}
$$
Choose $x=3^{-1/2}$ and $\xi=-1$ to maximize the error:
$$
\left| -\frac{e^{ -\xi }}{6} x(x^{2}-1) \right| \leq \frac{\sqrt{ 3 }}{27} e^{ -\xi } < \frac{e\sqrt{ 3 }}{27}
$$
For any $x \in[1, 2]$, $\xi \in(-1, 2)$. To maximize the error, choose $x=2$ and $\xi=-1$.
$$
\left| -\frac{e^{ -\xi }}{6} x(x^{2}-1) \right| \leq e^{ -\xi } < e
$$

Same as part b, the lower bound on the error within both intervals is 0.

---
e.
They Taylor series expansion for $f(x)=e^{ -x }$ is:
$$
e^{ -x } = \sum_{k=0}^{\infty} \frac{(-x)^{k}}{k!}
$$
They first two Taylor polynomials of degree 1 and 2 are:
$$
t_{1}(x) = 1-x \qquad t_{2}(x) = 1 - x + \frac{x^{2}}{2}
$$
Comments:
Taylor series expansions are centred at $x=0$, and so both of the Taylor series expansions are exact when $x=0$.

The polynomial interpolants, however, are based on numerous points (2 points and 3 points, respectively) and they are exact at these points.

The maximum error for the interpolants is always lower than the maximum error for the Taylor polynomials

Near $x=0$, the Taylor polynomials are far more accurate. Even though $p_{2}$ uses $x=0$ as a point of reference, just like $t_{2}$, $t_{2}$ is still far more accurate in this regime.

On the contrary, further from $x=0$, the polynomial interpolants are more accurate.

Despite both the linear approximations being straight lines, $p_{1}$ is placed in such a way that the error is typically much smaller than $t_{1}$.

In summary, the polynomial interpolants have better average performance on wider ranges, but the Taylor polynomials have superior performance where they are centred.