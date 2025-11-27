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

Evaluating the formula for $p_{1}(x)$,
$$
\frac{f^{(1+1)}(\xi)}{(1+1)!} \prod_{j=0}^{n} (x-x_{j}) = \frac{e^{ -\xi }}{2} (x+1)(x-1)
$$
In the interval $x \in[-1, 1]$ and $\xi \in(-1, 1)$, an upper bound on the absolute value of the error can be found for $x=0$ and $\xi=-1$
$$
\left| \frac{e^{ -\xi }}{2} (x+1) (x-1) \right| \leq \frac{e^{ -\xi }}{2} < \frac{e}{2}
$$
The lower bound on the absolute value is 0, since the expression vanishes for $x=\pm 1$. The bound on the absolute error is therefore:
$$
\text{Error} < \frac{e}{2}
$$
In the interval $x \in[1, 2]$ and $\xi \in(1, 2)$, an upper bound is found using $x=2$ and $\xi=1$.
$$
\left| \frac{e^{ -\xi }}{2} (x+1) (x-1) \right| \leq \frac{3}{2} e^{ -\xi } < \frac{3}{2e}
$$
The lower bound is 0, for the same reason as above. The bound on the absolute error is therefore:
$$
\text{Error} < \frac{3}{2e}
$$
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
\frac{f^{(2+1)}(\xi)}{(2+1)!} \prod_{j=0}^{n} (x-x_{j}) = - \frac{e^{ -\xi }}{6} (x+1)x(x-1)
$$
On the interval $x \in[-1, 1]$ and $\xi \in(-1, 1)$ an upper bound on the absolute value  of the error can be found on $x=3^{-1/2}$ and $\xi=-1$.
$$
\left| - \frac{e^{ -\xi }}{6}x(x^{2}-1) \right| \leq \frac{\sqrt{ 3 }}{27} e^{ -\xi } < \frac{e\sqrt{ 3 }}{27}
$$
On the interval $x \in[1, 2]$ and $\xi \in(1, 2)$ an upper bound on the absolute value of the error can be found on $x=2$ and $\xi=1$.
$$
\left| - \frac{e^{ -\xi }}{6}x(x^{2}-1) \right| \leq e^{ -\xi } < e^{-1}
$$
- The lower bound in both cases is going to be 0 because the error on the interpolated points $x=\pm 1, 0$ is always zero
- I'm not sure I did this problem correctly. In particular, I think I might have messed up the values of $\xi$ I've substituted into the error equations. I will check this later
---
e.
