# The Continuity Equation
Recall that the charge in a volume $\mathcal{V}$ is,
$$
Q(t) = \int _{\mathcal{V}} \rho(\vec{r}, t) \, d\tau
$$
The local conservation of charge says:
$$
\frac{dQ}{dt} = - \oint_{\mathcal{S}} \vec{J}\cdot d\vec{a} \qquad \frac{ \partial \rho }{ \partial t } = \nabla \cdot \vec{J}
$$
Which essentially states that, if the amount of charge in some region changes, than it must have passed in or out through the surface.
- Note that both of these equations are equivalent

# Poynting’s Theorem
The total energy stored in electromagnetic fields, per unit volume, is:
$$
u = \frac{1}{2} \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}} B^{2} \right)
$$
The energy per unit time, per unit area, transported by the fields is called the Poynting vector:
$$
\vec{S} \equiv \frac{1}{\mu_{0}} \vec{E} \times \vec{B}
$$
$\vec{S}\cdot d\vec{a}$ is the energy per unit time crossing the infinitesimal surface $d\vec{a}$.

Poynting's Theorem:
$$
\frac{dW}{dt} = -\frac{d}{dt} \int _{\mathcal{V}} u \, d\tau - \oint_{\mathcal{S}}\vec{S}\cdot d\vec{a}
$$
> In words, Poynting's theorem states that the work done on the charges by the electromagnetic force is equal to the decrease in energy remaining in the fields, less the energy that flowed out through the surface.

If there is no work done on the charge in $\mathcal{V}$, like if $\mathcal{V}$ is a region of empty space, than we get:
$$
\frac{ \partial u }{ \partial t } = - \nabla \cdot \vec{S}
$$
Which is called the continuity equation for energy
# Maxwell’s Stress Tensor
The force per unit volume on the charges inside a volume $\mathcal{V}$ is:
$$
\begin{align}
\vec{f}  & =  \epsilon_{0} \left[ (\nabla \cdot \vec{E})\vec{E} + (\vec{E}\cdot \nabla)\vec{E} \right] + \frac{1}{\mu_{0}} \left[ (\nabla \cdot \vec{B})\vec{B} + (\vec{B}\cdot \nabla)\vec{B} \right] \\
 & - \frac{1}{2} \nabla \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}}B^{2} \right) - \epsilon_{0} \frac{ \partial  }{ \partial t } (\vec{E}\times \vec{B})
\end{align}
$$
Which can be simplified into:
$$
\vec{f} = \nabla \cdot \bar{T} - \epsilon_{0} \mu_{0} \frac{ \partial \vec{S} }{ \partial t }
$$
Where we have defined the new Maxwell Stress Tensor:
$$
T_{ij} \equiv \epsilon_{0} \left( E_{i}E_{j} - \frac{1}{2} \delta_{ij} E^{2} \right) + \frac{1}{\mu_{0}} \left( B_{i}B_{j} - \frac{1}{2} \delta_{ij} B^{2} \right)
$$
The indices $i$ and $j$ are the Cartesian coordinates $x$, $y$, and $z$.

In this way, the total magnetic force on the charges in a volume $\mathcal{V}$ can be expressed as,
$$
\vec{F} = \oint_{\mathcal{S}} \bar{T}\cdot d\vec{a} - \epsilon_{0} \mu_{0} \frac{d}{dt} \int _{\mathcal{V}} \vec{S} \, d\tau
$$
Notice that the second term will drop out in the static case.

Physically, $\bar{T}$ is the force per unit area, or *stress*, acting on a surface. $T_{ij}$ is the force per unit area in the $i$th direction acting on an element of surface oriented in the $j$th direction. The diagonal elements are *pressure*, and the off-diagonal elements are *shears*.
# Conservation of Momentum
If you apply Newton's second law, you can find that:
$$
\vec{p} = \mu_{0} \epsilon_{0} \int _{\mathcal{V}} \vec{S} \, d\tau
$$
Which can be interpreted as the momentum stored in fields. The momentum per unit time flowing in through the surface is therefore:
$$
\oint_{\mathcal{S}} \bar{T}\cdot d\vec{a}
$$
From this we have the conservation of momentum. If the mechanical momentum increases, than the field momentum decreases, and vice versa.

The momentum density in the fields is:
$$
\vec{g} = \mu_{0} \epsilon_{0} \vec{S} = \epsilon_{0} (\vec{E}\times \vec{B})
$$
If the mechanical momentum in $\mathcal{V}$ is constant, like in empty space, than:
$$
\frac{ \partial \vec{g} }{ \partial t } = \nabla \cdot \bar{T}
$$
This is the continuity equation for electromagnetic momentum.
# Angular Momentum
Define the angular momentum of the fields:
$$
\mathscr{l} = \vec{r}\times \vec{g} = \epsilon_{0} [\vec{r}\times(\vec{E}\times \vec{B})]
$$

Note that field energy doesn't obey the superposition principle.
- If you double the charge in a sphere, the field doubles, but the energy quadruples.
- This applied to the Poynting vector, momentum, angular momentum, and the stress tensor
