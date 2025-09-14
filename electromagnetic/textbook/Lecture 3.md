### Lorentz Force Law
The magnetic force on some test charge $Q$ moving with velocity $\vec{v}$ is defined to be:
$$
\vec{F}_\text{mag} = Q(\vec{v} \times \vec{B})
$$
Where $\vec{B}$ is the magnetic field that it is in. If there is both on electric and magnetic field, we have:
$$
\vec{F} = Q \left[ \vec{E} + (\vec{v}\times \vec{B}) \right]
$$
According to Lorentz force law, magnetic forces do not work, they simply alter the direction a particle is moving.
### Current
Current is the charge per unit time moving down a wire. It is measured in amperes,
$$
1\text{ A} = 1 \text{ C/s}
$$
A line charge $\lambda$ travelling down a wire with velocity $\vec{v}$ is:
$$
\vec{I} = \lambda \vec{v}
$$
The magnetic force on a segment of current-carrying wire is:
$$
\vec{F}_\text{mag} = \int (\vec{I}\times \vec{B}) \, dl = \int I(d\vec{l}\times \vec{B})
$$
Which we have because $\vec{I}$ and $d\vec{l}$ point in the same direction. If current is constant, we can take it outside of the integral.

For surfaces and volumes, we instead use the surface and volume current densities.
$$
\vec{K} = \sigma \vec{v} \qquad \vec{J} = \rho \vec{v}
$$
In these cases the magnetic forces are:
$$
\vec{F}_\text{mag} = \int (\vec{v} \times \vec{B})\sigma \, da = \int (\vec{K}\times \vec{B}) \, da
$$
$$
\vec{F}_\text{mag} = \int (\vec{v}\times \vec{B})\rho \, d\tau = \int (\vec{J}\times \vec{B}) \, d\tau
$$
The total current crossing a surface $S$ is,
$$
I = \int _{S} J \, da_{\perp} = \int _{S} \vec{J}\cdot \, da
$$
In accordance with the divergence law,
$$
\oint_{S} \vec{J}\cdot d\vec{a} = \iiint_{V} (\nabla \cdot \vec{J}) \, d\tau
$$
From which, because charge is conserved, was can extrapolate from here the continuity equation:
$$
\vec{\nabla}\cdot \vec{J} = - \frac{ \partial \rho }{ \partial t }
$$
### Biot-Savart Law
Magnetostatics, the regime under which the Biot-Savart law is valid, requires steady current. Which are defined as,
$$
\frac{ \partial \rho }{ \partial t } = 0 \qquad \frac{ \partial \vec{J} }{ \partial t } =0
$$
Notice that under magnetostatics, the continuity equation becomes
$$
\vec{\nabla}\cdot \vec{J} =0
$$
The magnetic field of a steady line current is given by,
$$
\vec{B}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{I}\times \hat{s}}{s^{2}} \, dl' = \frac{\mu_{0}}{4\pi} I \int \frac{d\vec{l}'\times \hat{s}}{s^{2}}
$$
Where the integration is done along the current path, in the direction of flow. $d\vec{l}'$ is an element of length along the wire, and $\vec{s}$ is the vector from the source to the point $\vec{r}$.

$\mu_{0}$ is the permeability of free space
$$
\mu_{0} = 4\pi \times 10^{-7} \text{ N/A}^{2}
$$
The magnetic field from a long straight wire is,
$$
\vec{B} = \frac{\mu_{0}I}{2\pi s} \hat{\phi}
$$
Where $s$ is the distance from the wire. We find that the integral of $\vec{B}$ around a circular path of radius $s$ centred at the wire is:
$$
\oint \vec{B}\cdot d\vec{l}= \mu_{0}I
$$
And so, for some arbitrary enclosed current, we have found:
$$
\oint \vec{B}\cdot d\vec{l} = \mu_{0} I_\text{enc} \qquad I_\text{enc} = \int \vec{J}\cdot \, d\vec{a}
$$
Which, for any loop, gives us the relation,
$$
\vec{\nabla}\times \vec{B} = \mu_{0}\vec{J}
$$
This statement is also called Ampere's law. It is functionally the equivalent to Gauss' law in electrostatics, and typically requires the use of an "Amperian loop" to develop symmetries and make integrals easier.

In magnetostatics, we also have the statement that there cannot be a magnetic monopole:
$$
\vec{\nabla}\cdot \vec{B}=0
$$
### Faraday's Law
Based on experimentation, we find that a changing magnetic field induces an electric field. Which can be expressed as:
$$
\vec{\nabla}\times \vec{E} =- \frac{ \partial \vec{B} }{ \partial t }
$$
We will discuss this further when we get to motional emf