Recall the vector potential, Coulomb's Gauge last lecture
$$
\nabla \cdot \vec{A} =0
$$
In free space, Maxwell's equation simplifies into
$$
\nabla^{2}A = \frac{1}{c^{2}} \frac{ \partial^{2}\vec{A} }{ \partial t^{2} }
$$
Which we have because we assume all sources have been moved to $\infty$. From which we have a differential equation. It has plane wave solutions, and we will guess they might look like,
$$
\vec{A}(\vec{r}, t) = A_{0} \vec{\epsilon}_{\vec{k}} \exp \{ i(\vec{k}\cdot \vec{r} - \omega t) \}
$$
We are interested in just the real part, the cosine. If we plug this back into the original DE we get,
$$
-k^{2} + \frac{\omega^{2}}{c^{2}} =0 \implies k = \frac{\omega}{c}
$$
- $\omega$ is frequency, rad/sec
- $\omega /2\pi$ is the number of cycles per second
- $k=2\pi /\lambda$ where $\lambda$ is the wavelength
- $\vec{\epsilon}_{\vec{k}}$ is a polarization vector
Since,
$$
\nabla \cdot \vec{A} =0 \qquad \vec{k}\cdot \vec{\epsilon}_{\vec{k}} =0
$$
The electric field becomes,
$$
\vec{E} = - \frac{ \partial \vec{A} }{ \partial t } = i A_{0} \omega \vec{\epsilon}_{\vec{k}} e^{ i(\vec{k}\cdot \vec{r} - \omega t) }
$$
The magnetic field,
$$
\vec{B} = \nabla \times \vec{A} = ikA_{0} \hat{k} \times \vec{\epsilon}_{\vec{k}} e^{ i(\vec{k}\cdot \vec{r} - \omega t) }
$$
Where we also know that $k=\omega /c$. Therefore, we conclude that,
$$
\vec{B} = \frac{1}{c} \hat{k} \times \vec{E}
$$
We obtain the property that $|\vec{B}|= |\vec{E}| /c$, $\vec{E}$ and $\vec{B}$ are perpendicular to each other, and that the wave propagates in the direction of $\vec{E}\times \vec{B}$.

What happens if we use the same equations, but assume there is no time variation? But we re-introduce the charges.

The equation that change are,
$$
\nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t } =0 \qquad \nabla \times \vec{B} = \mu_{0} \vec{J} + \frac{1}{c^{2}} \frac{ \partial \vec{E} }{ \partial t }  = \mu_{0} \vec{J}
$$
Which describe the fields of electro- and magnetostatics.

Now, what about Gauss' law?
$$
\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_{0}}
$$
Which has the solutions
$$
\vec{E} = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho(\vec{r}')}{|\vec{r}-\vec{r}'|} \frac{\vec{r}-\vec{r}'}{|\vec{r}-\vec{r}'|} \, d\vec{r}
$$
And since the scalar potential is,
$$
\vec{E} = -\nabla \phi
$$
We obtain Poisson's equation,
$$
\nabla^{2}\phi = -\frac{\rho}{\epsilon_{0}}
$$
$$
\phi(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho(\vec{r}')}{|\vec{r}-\vec{r}'|} \, d\vec{r}
$$
In a region with no charge density we have Laplace's equation,
$$
\nabla^{2}\phi =0
$$
The solutions of this equation are harmonic functions.

Theorem:
> If $\phi(x, y, z)$ satisfies Laplace's equation, then the average value of $\phi$ over the surface of any sphere is equal to the value of $\phi$ at the centre of the sphere
- Pretty sure this is just mean value theorem

Corollary:
> $\phi$ cannot have any local maxima or minima. The extreme values of $\phi$ must occur at the boundaries

First Uniqueness Theorem:
> The solution to Laplace's equation is some volume is uniquely determined if $\phi$ is specified on the boundary surface

General Uniqueness Theorem:
> If $\phi(\vec{r})$ satisfies $\nabla^{2}\phi=-\rho /\epsilon_{0}$ in a volume $V$ with given boundary conditions, then it is the only solution

> By "boundary condition" we mean that $\phi$ or $\hat{n}\cdot \vec{\nabla}\phi$ is specified on the surface

