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
