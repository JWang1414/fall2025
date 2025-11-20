# Question 3
---
a.
Weight function is
$$
w(x) = x^{-1/2}
$$
Probability function we're supposed to get is,
$$
p(x) = \frac{1}{2\sqrt{ x }}
$$
Work
$$
z = \int_{0}^{x(z)} p(x') \, dx' = \frac{1}{2} \int_{0}^{x(z)} \frac{1}{\sqrt{ x' }} \, dx'
$$
$$
\frac{1}{2} \int_{0}^{x(z)} \frac{1}{\sqrt{ x' }} \, dx' = \frac{1}{2} (2\sqrt{ x(z) }) = \sqrt{ x(z) }
$$
$$
z = \sqrt{ x(z) } \implies x(z) = z^{2}
$$
---
b.
$$
p(x) = \frac{1}{\sqrt{ 2\pi }} e^{ -(x-5)^{2}/2 }
$$
Work
$$
z = \int_{0}^{x(z)} p(x') \, dx' =\frac{1}{\sqrt{ 2\pi }} \int_{0}^{x(z)} e^{ -(x-5)^{2}/2 } \, dx
$$
$$
z = \frac{1}{4} erf\left( \frac{x(z)-5}{\sqrt{ 2 }} \right)
$$
$$
x = \frac{1}{2} (5\sqrt{ 2 } - 2 erf^{-1}(-4z))
$$
# Question 1
---
a.
Since we are generating spherical coordinates, the ranges of $\theta$ and $\phi$ should have the same representations. So, $\theta \in[0, \pi]$ and $\phi \in[0, 2\pi]$. Along these two intervals, the distributions $p_{1}$ and $p_{2}$ integrate to:
$$
\int_{0}^{\pi} p_{1}(\theta) \, d\theta = \int_{0}^{\pi} \frac{\sin\theta}{2} \, d\theta = -\frac{1}{2} \left[ \cos\theta \right] ^{\pi}_{0} = -\frac{1}{2} (-1-1) = 1
$$
$$
\int_{0}^{2\pi} p_{2}(\phi) \, d\phi = \frac{1}{2\pi} \int_{0}^{2\pi} d\phi = \frac{1}{2\pi} (2\pi) = 1
$$
Therefore both distributions are correctly normalized.