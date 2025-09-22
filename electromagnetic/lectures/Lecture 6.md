Because we have uniqueness theorems, if we manage to guess a solution satisfying the boundary conditions, then it is the only solution.

Earnshaw's Theorem:
> $\nabla^{2}\phi$ implies no charge can be held in stable equilibrium by the presence of other charges (by purely electrostatic forces)
- For a stable equilibrium, a local minimum must exist, which we know cannot happen for harmonic equations

Recall that, within conductors, $\vec{E}=0$ and therefore,
$$
\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_{0}} =0
$$
And so there is no charge or field within a conductor. This can be treated as a boundary condition for all conductors.

Just outside of a conductive surface, because $\nabla \times \vec{E}=0$, there is no tangential field. That is,
$$
\vec{E}\times \hat{n}=0
$$
Where $\hat{n}$ is a normal vector to the surface.

Define a small Gaussian pillbox at the surface of a conductor. Then, we have,
$$
EA = \frac{Q}{\epsilon_{0}} \implies E = \frac{Q}{A} \frac{1}{\epsilon_{0}} = \frac{\sigma}{\epsilon_{0}} \implies \hat{E}\cdot \hat{n} = \frac{\sigma}{\epsilon_{0}}
$$
Where $\sigma=Q /A$ is the surface charge density.

The Neumann boundary condition,
$$
-\hat{n}\cdot \vec{\nabla}\phi = \frac{\sigma}{\epsilon_{0}}
$$
is a specification of surface charge density.

Based on the physical system, we assume that this system is in stable equilibrium. However, this seems to run counter to Earnshaw's theorem.
- This actually implies that surface charges are held in place by non-electrostatic forces
### Method of Images
- There's a diagram of a point charge next to a perfect conductor here that I can't draw

Place a point charge at $\vec{r}=b\hat{x}$. We require the plane at $x=0$ to be equipotential. To accomplish this, lets define a "fictitious image charge" at $\vec{r}=-b\hat{x}$. This charge should completely cancel out the effect of the existing charge.

For $x>0$ we have,
$$
4\pi\epsilon_{0} \phi(\vec{r}) = \frac{q}{|\vec{r}-b\hat{x}|} - \frac{q}{|\vec{r}+b\hat{x}|}
$$
As $x=0$
$$
|\vec{r}\pm b\hat{x}|^{2} = b^{2} + y^{2} +z^{2}
$$
Therefore $\phi=0$ along the plane $x=0$. Finally, for $x<0$ $\phi=0$ because we have a perfect conductor.

The surface charge induced
$$
\sigma = -\epsilon_{0} \hat{x} \cdot \vec{\nabla}\phi = -\epsilon_{0} \frac{ \partial \phi }{ \partial x }
$$
There's a lot of math but you should find that,
$$
\sigma = -\frac{qb}{2\pi(b^{2}+y^{2}+z^{2})^{3/2}}
$$
Another case where this works is when we have a conductor with a 90 degree bend. In this case you would need 3 fictitious charges, two negatives and one positive, configured in a square. The positive charge would be diagonally across from the original charge.

Lets say we have a spherical conductor and a charge $q$ a distance $b$ from the origin of the sphere. The sphere is has radius $a$.

Our real charge is at $\vec{r}=b\hat{x}$. Lets place a fictitious image charge at $\vec{r}=d\hat{x}$ such that $d<a$.

- A lot of math happened that relies on diagrams I can't draw

Our goal is to find a location to place this charge so that the charge on the surface is 0. You should find that,
$$
d = \frac{a^{2}}{b}
$$
Furthermore,
$$
q' = -Qq =-\sqrt{ \frac{a^{2}}{b^{2}} }q = -\frac{aq}{b}
$$
However, this would result in some net charge of $-aq /b$ on the conductor. So, how can we make the conductor neutral charged as needed?

Well, we can cancel this charge by placing a second charge $q''=aq /b$ at the centre of the sphere

Takeaway:
Image charge method only work for special situations where equipotential surfaces of a collection of fictitious and real charges conform to the shape of specified boundary conditions
