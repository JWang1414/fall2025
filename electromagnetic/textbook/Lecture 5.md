Recall the Poisson's equation,
$$
\nabla^{2}V = -\frac{\rho}{\epsilon_{0}}
$$
Which reduces to the Laplace equation if $\rho=0$
$$
\nabla^{2}V =0
$$Solutions to Laplace's equation are called *harmonic functions*.
### One Dimension
Laplace's equation becomes,
$$
\frac{d^{2}V}{dx^{2}} =0
$$
Which has very trivial solutions,
$$
V(x) = mx+b
$$
For the purposes of expanding upon this later, one fundamental property is that $V(x)$ is the average of $V(x+a)$ and $V(x-a)$ for any constant $a$.
$$
V(x) = \frac{1}{2} \left[ V(x+a) + V(x-a) \right]
$$
- Should be obvious, because this is a linear function

Harmonic functions have no local maxima or minima. The extreme values must occur at the endpoints.
### Two Dimensions
$$
\frac{ \partial^{2}V }{ \partial x^{2} } + \frac{ \partial^{2}V }{ \partial y^{2} } =0
$$
This is now a partial differential equation. For this reason, the general solution no longer has a finite number of constants.

Let us expand on the two properties we developed earlier.

The value of $V(x, y)$ is the average of those around the point.
$$
V(x, y) = \frac{1}{2\pi R} \oint _\text{circle} V \, dl
$$
$V$ still has no local maxima or minima. All extrema occur at the boundaries.
### Three Dimensions
The value of $V(\vec{r})$ is now the average value of $V$ over a spherical surface of radius $R$, centred at $\vec{r}$.
$$
V(\vec{r}) = \frac{1}{4\pi R^{2}} \oint _\text{sphere} V \, da
$$
$V$ still has no maxima or minima. The extreme values of $V$ must occur at the boundaries.
- All of this sound be familiar from PDEs
### Boundary Conditions and Uniqueness
First Uniqueness Theorem:
> The solution to Laplace's equation in some volume $\mathcal{V}$ is uniquely determined if $V$ is specified on the boundary surface $\mathcal{S}$.

Corollary.
> The potential in a volume $\mathcal{V}$ is uniquely determined if the charge density throughout the region, and the value of $V$ on all boundaries, are specified.

Second Uniqueness Theorem:
> In a volume $\mathcal{V}$ surrounded by conductors and containing a specified charge density $\rho$, the electric field is uniquely determined if the total charge on each conductor is given.
