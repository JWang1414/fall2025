### Question 1
---
a.
The trapezoidal and Simpson's rules had expected errors. We found that the trapezoidal rule error decreased linearly, while the error for the Simpson's rule decreased more erratically.

The Gaussian quadrature looks like it has very large errors for smaller values of $N$, and rapidly decreases as we increase $N$ before plateauing

---
b.
Interestingly, it looks like our approximation of the intensity is slightly desynced from the correct version computed with Scipy.

It does not look like we need 50 points for the quadrature. It looks like after roughly 15 points, the accuracy plateaus

---
c.
- Don't have a good answer for this one just yet

### Question 2
---
a.
It is possible the errors arise because the integral diverges for $x\to x_{0}^{-}$. Despite the small weights here, the functions grows to quickly it cannot adjust.

We can try to decrease the error by taking more points around the place where the integral diverges.

- I feel like this is wrong for some reason
- This is taken directly from the lab manual

---
b.
We used the equation,
$$
v_\text{max} = x_{0}\omega
$$
And so we have,
$$
\frac{1}{x_{c}} = \frac{1}{c} \sqrt{ \frac{k}{m} }
$$
Which gives approximately $x_{c}=86.5\times 10^6$

---
c.
Our values approach the classical limit for very small values, and approaches the relativistic limit for larger and larger values.

Both of these limits are plotted as dotted lines on the plane.

### Question 3
---
b.
Analytic derivative for this function is:
$$
f(x) = e^{ -x^{2} } \implies f' = e^{ -x^{2} } (-2x)
$$
For $x=-0.5$ we have,
$$
f'(0.5) = e^{ -(0.5)^{2} } (-2(0.5)) = e^{ -1/4 } (-1) = -e^{ -1/4 }
$$
---
c.
Truncation errors dominate on the left side. Approximation errors dominate on the right side.

---
d.
The central difference scheme appears to be at least as good or better for all points except for one. The central difference scheme is worse for the largest values of $h$, when the approximation errors dominate.

Interestingly, it appears the central difference scheme is best for $10^{-6}$


Rough work ---

$$
e^{ -x^{2} }
$$
$$
f'(x) = -2xe^{ -x^{2} }
$$

$$
\epsilon = \frac{2C|f(x)|}{h} + \frac{h}{2} |f''(x)|
$$

$$
I = \int_{0}^{1} \frac{4}{(1+x^{2})} \, dx
$$
$$
\epsilon_{N} = I_{2N} - I_{N}
$$
$$
\frac{I}{I_{0}} = \frac{1}{8} \left( [2C(u)+1]^{2} + [2S(u)+1]^{2} \right)
$$
$$
u = x\sqrt{ \frac{2}{\lambda z} } \qquad C(u) = \int_{0}^{u} \cos\left( \frac{\pi}{2}t^{2} \right) \, dt \qquad S(u) = \int_{0}^{u} \sin\left( \frac{\pi}{2}t^{2} \right) \, dt
$$
$$
T = 4 \int_{0}^{x_{0}} \frac{1}{g(x')} \, dx'
$$
$$
g(x) = c \left[ \frac{2\beta (2mc^{2}+\beta)}{2(mc^{2}+\beta)^{2}} \right]^{1/2}
$$
$$
\beta = \frac{k}{2} (x_{0}^{2}-x^{2})
$$
$$
T_\text{classic} = 2\pi \sqrt{ \frac{m}{k} } \qquad T_\text{relative} = \frac{4x_{0}}{c}
$$
$$
T_\text{classic} = 2\pi \sqrt{ \frac{m}{k} } = 2\pi \sqrt{ \frac{1}{12} } \approx 1.8138
$$
$$
v_\text{max} = x_{0} \omega \implies c = x_{c}\omega \implies \frac{1}{x_{c}} = \frac{1}{c} \sqrt{ \frac{k}{m} } \implies x_{c} \approx 86.5\times 10^6
$$
