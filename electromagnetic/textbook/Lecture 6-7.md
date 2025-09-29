### Method of Images
Suppose we have a point charge $q$ a distance $d$ above an infinite grounded conducting plane. We are interested in finding the potential in the region above the plane.

We cannot use the particle potential formula, because some negative charge will be induced onto the plane by the charge.

This problem is effectively to solve Poisson's equation in the region $z>0$, because potential abides by Poisson's equation. We have the boundary conditions,
- $V=0$ when $z=0$, since the plane is grounded
- $V\to 0$ far from the charge

For the method of images, we will instead solve another problem, one without the grounded plane. Imagine a situation with a charge $q$ at $(0, 0, d)$ and a charge $-q$ and $(0, 0, -d)$.

The potential can be solved easily here, we just need to add up the two potentials resulting from each charge.
$$
V(x, y, z) = \frac{q}{4\pi\epsilon_{0}} \left( \frac{1}{\sqrt{ x^{2}+y^{2}+(z-d)^{2} }} - \frac{1}{\sqrt{ x^{2}+y^{2} + (z+d)^{2} }} \right)
$$
This fits the same boundary conditions we defined in the original problem. And so, this is the potential within this region.

The essence of the method of images is to use fictitious point charges to create a configuration with the exact same potential as the original problem.
- The "upper region", the part within the problem, must remain the same
- But the "lower region" the part outside the boundaries can be changed however we like
### Separation of Variables
- I won't write down the Cartesian problems, because the ones we went through in class were relatively simple
- The spherical problem in class, however, was much more challenging

For some problem with azimuthal symmetry, we have,
$$
\frac{ \partial  }{ \partial r } r^{2} \frac{ \partial V }{ \partial r } + \frac{1}{\sin\theta} \frac{ \partial  }{ \partial \theta } \sin\theta \frac{ \partial V }{ \partial \theta } =0
$$
Assume solutions in the form $R(r)\Theta(\theta)$. We obtain the two equations,
$$
\frac{1}{R} \frac{d}{dr} r^{2} \frac{dR}{dr} = l(l+1) \qquad \frac{1}{\Theta \sin\theta} \frac{d}{d\theta} \sin\theta \frac{d\Theta}{d\theta} =-l(l+1)
$$
The separation constants have been written this way because it will be more convenient later. The radial equation has the general solution:
$$
\frac{d}{dr} r^{2} \frac{dR}{dr} = l(l+1)R \implies R(r) = Ar^{l} + Br^{-(l+1)}
$$
The solutions to the angular potions are the Legendre polynomials, in the variable $\cos\theta$,
$$
\Theta(\theta) = P_{l} (\cos\theta)
$$
The familiar, recursive definition of the Legendre polynomials is the Rodrigues formula,
$$
P_{l}(x) \equiv \frac{1}{2^{l}l} \left( \frac{d}{dx} \right)^{l} (x^{2}-1)^{l}
$$
- $P_{l}(x)$ is an $l$th-order polynomial in $x$
- It contains only even powers if $l$ is even, and odd powers if $l$ is odd

However, recall that the angular problem, like the radial one, is a second order problem, so it should have two independent solutions. Most of these solutions blow up at $\theta=0$ or $\theta=\pi$. One example would be,
$$
\Theta(\theta) = \ln\left( \tan \frac{\theta}{2} \right)
$$
Which tragically blows up in both cases.

So, in the case of azimuthal symmetry, we have concluded that the most general separable solution to Laplace's equation is,
$$
V_{l}(r, \theta) = \left( Ar^{l} + Br^{-(l+1)} \right) P_{l} (\cos\theta)
$$
Collecting them into an infinite series,
$$
V(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + B_{l}r^{-(l+1)} \right) P_{l} (\cos\theta)
$$

---
Example:
The potential $V_{0}(\theta)$ is specified on the surface of a hollow sphere of radius $R$. Find the potential inside the sphere.

$B_{l}=0$ because otherwise, the potential would blow up at the origin when $r=0$.

According to the boundary conditions, when $r=R$ we have,
$$
V(R, \theta) = \sum_{l=0}^{\infty} A_{l} R^{l} P_{l} (\cos\theta) = V_{0}(\theta)
$$
The Legendre polynomials are orthogonal functions,
$$
\begin{align}
\int_{-1}^{1} P_{l}(x) P_{l'}(x) \, dx & = \int_{0}^{\pi} P_{l}(\cos\theta) P_{l'}(\cos\theta) \sin\theta \, d\theta \\
 & = \begin{cases}
0 & l'\neq l \\
\frac{2}{2l+1} & l'=l
\end{cases}
\end{align}
$$
Multiplying both sides and integrating, we obtain,
$$
\sum_{l=0}^{\infty} A_{l}R^{l} \int_{0}^{\pi} P_{l}(\cos\theta)P_{l'}(\cos\theta)\sin\theta \, d\theta = \int_{0}^{\pi} V_{0}(\theta)P_{l'}(\cos\theta)\sin\theta \, d\theta
$$
According to orthogonality, the LHS simplifies into,
$$
A_{l'} R^{l'} \frac{2}{2l'+1}
$$
Solve for $A_{l}$ to find that,
$$
A_{l} = \frac{2l+1}{2R^{l}} \int_{0}^{\pi} V_{0}(\theta)P_{l}(\cos\theta) \sin\theta \, d\theta
$$
Copying back the general solution, the solution is the infinite series:
$$
V(r, \theta) = \sum_{l=0}^{\infty} A_{l}r^{l} P_{l} (\cos\theta)
$$
With the coefficients $A_{l}$ specified by the integral.

---

- There are two more spherical problems in the textbook that I have not written here