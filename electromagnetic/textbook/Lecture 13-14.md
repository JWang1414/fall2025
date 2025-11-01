Magnetic force is,
$$
F_\text{mag} = Q(\vec{v}\times \vec{B})
$$
For some charge $Q$ moving at a velocity $\vec{v}$ in a magnetic field $\vec{B}$. In both an electric and magnetic field, the force becomes,
$$
\vec{F} = Q \left[ \vec{E} + (\vec{v}\times \vec{B}) \right]
$$
Which is the Lorentz force law.
- One implication of this law is that magnetic forces do not work
### Current
A line of charge $\lambda$ moving down a wire at speed $v$ results in a current,
$$
\vec{I} = \lambda \vec{v}
$$
The magnetic force on a segment of current carrying wire is,
$$
\vec{F}_\text{mag} = \int I (d\vec{l}\times \vec{B})
$$
Where $d\vec{l}$ is a infinitely small portion of the wire. Note that $\vec{I}$ and $d\vec{l}$ always point in the same direction.

Charge flowing over a surface is described using the surface current density $\vec{K}$
$$
\vec{K} \equiv \frac{d\vec{l}}{dl_{\perp}}
$$
![[Pasted image 20251031233956.png]]
If we have a mobile surface charge density moving with velocity $\vec{v}$ we have,
$$
\vec{K} = \sigma \vec{v}
$$
The magnetic force on the surface current is,
$$
F_\text{mag} = \int \sigma(\vec{v}\times \vec{B}) \, da = \int \vec{K}\times \vec{B} \, da
$$
Note that $\vec{B}$ is discontinuous at a surface current. We can extend all this logic into the volume current density $\vec{J}$
$$
\vec{J} \equiv \frac{d\vec{I}}{da_{\perp}} \qquad \vec{J} = \rho \vec{v}
$$
$$
\vec{F}_\text{mag} = \int \rho(\vec{v}\times \vec{B}) \, d\tau = \int (\vec{J}\times \vec{B}) \, d\tau
$$
From which we can derive the *continuity equation*
$$
\nabla \cdot \vec{J} = - \frac{ \partial \rho }{ \partial t }
$$
Which essentially states that the outward flow decreases with the charge left in some volume.
$$
\oint_{S} \vec{J}\cdot d\vec{a} = - \frac{d}{dt} \int_{V} \rho \, d\tau =- \int _{V} \frac{ \partial \rho }{ \partial t }  \, d\tau
$$
### Biot-Savart Law
The simplest form in magnetostatics is a steady or constant current. That is,
$$
\frac{ \partial \vec{J} }{ \partial t } =\vec{0}
$$
And so in this regime the continuity equation becomes,
$$
\nabla \cdot \vec{J} =0
$$
The magnetic field of a steady current is given by the Biot-Savart law,
$$
\vec{B}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{I}\times \hat{r}}{r^{2}} \, dl' = \frac{\mu_{0}I}{4\pi} \int \frac{d\vec{l}'\times\hat{r}}{r^{2}}
$$
Where integration is done along the current path, in the direction of the flow. $d\vec{l}'$ is an element of length along the wire, and $r$ is the vector from the source to the point we are measuring from.
$$
\text{Permeability of Free Space} = \mu_{0} = 4\pi \times 10^{-7}
$$
For surface and volume charges it becomes,
$$
\vec{B}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{K}(\vec{r}')\times \hat{r}}{r^{2}} \, da' \qquad \vec{B}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{J}(\vec{r}')\times \hat{r}}{r^{2}} \, d\tau'
$$
### The Divergence and Curl of $\vec{B}$
In magnetostatics, we generally have,
$$
\nabla \cdot \vec{B} =0 \qquad \nabla \times \vec{B} = \mu_{0} \vec{J}
$$
Which gives rise to the formulation,
$$
\oint \vec{B}\cdot d\vec{l} = \mu_{0} I_\text{enc} \qquad I_\text{enc} = \int \vec{J}\cdot d\vec{a}
$$
Where $I_\text{enc}$ is the total current enclosed by some integration path. This is Ampere's law, which is effectively the equivalent for Gauss' law in magnetostatics.
### The Vector Potential
$\nabla \times \vec{E}=0$ permitted the used of a scalar potential $V$ in electrostatics. The equivalent in magnetostatics is,
$$
\vec{B} = \nabla \times \vec{A}
$$
Which is true because $\nabla \cdot \vec{B}=0$. Similar to the magnetic field we have,
$$
\nabla \cdot \vec{A} =0
$$
Combining this with the definition of the vector potential, we find that,
$$
\nabla^{2}\vec{A} = - \mu_{0}\vec{J}
$$
Assuming $\vec{J}$ goes to zero at infinity,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{J}(\vec{r}')}{r} \, d\tau'
$$
Typically, the direction of $\vec{A}$ mimics the direction of the current.
- You can always add an arbitrary constant vector to $\vec{A}$
### Boundary Conditions
For some wafer-thin pillbox straddling the surface of a surface charge,
$$
B^{\perp}_\text{above} = B^{\perp}_\text{below}
$$
For the tangential components, an Amperian loop running perpendicular to the current,
$$
B^{\parallel}_\text{above} - B^{\parallel}_\text{below} = \mu_{0} \lvert \vec{K} \rvert
$$
These two results are often summarised as,
$$
\vec{B}_\text{above} - \vec{B}_\text{below} = \mu_{0} (\vec{K} \times \hat{n})
$$
For the vector potential we instead have,
$$
\vec{A}_\text{above} = \vec{A}_\text{below}
$$
$$
\frac{ \partial \vec{A}_\text{above} }{ \partial n } - \frac{ \partial \vec{A}_\text{below} }{ \partial n } =-\mu_{0} \vec{K}
$$
### Multipole Expansion of the Vector potential
Recall that the multipole expansion is to write down the potential as a power series in $1 /r$ where $r$ is the distance to the point in question. This approximation is primarily valid at distance points because, for large $r$, the series will be dominated by the lowest non-vanishing term.

In electrostatics we had,
$$
\frac{1}{R} = \frac{1}{r} \sum_{n=0}^{\infty} \left( \frac{r'}{r} \right)^{n} P_{n}(\cos \alpha)
$$
For a vector potential we obtain,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}I}{4\pi} \oint \frac{1}{R} \, d\vec{l}' = \frac{\mu_{0}I}{4\pi} \sum_{n=0}^{\infty} \frac{1}{r^{n+1}} \oint (r')^{n} P_{n} (\cos \alpha) \, d\vec{l}'
$$
Familiarly, the first term goes like $1 /r$, the monopole term, the second term is the dipole term, and the next is the quadrupole term. However, magnetic monopoles don't exist, and so the dominant term is typically the dipole term.

The dipole term in the vector potential is therefore,
$$
\vec{A}_\text{dip}(\vec{r}) = \frac{\mu_{0}I}{4\pi r^{2}} \oint r' \cos \alpha \, d\vec{l}' = \frac{\mu_{0}I}{4\pi r^{2}} \oint (\hat{r}\cdot r') d\vec{l}'
$$
Which, applying an integral identity to the last equation, results in,
$$
\vec{A}_\text{dip}(\vec{r}) = \frac{\mu_{0}}{4\pi} \frac{\vec{m}\times \hat{r}}{r^{2}} \qquad \vec{m} = I \int d\vec{a} = I\vec{a}
$$
Where $\vec{m}$ is called the magnetic dipole moment. $\vec{a}$ is the "vector area" of the loop. If the loop is flat, than $\vec{a}$ is the ordinary area enclosed.
- $\vec{m}$ is independent of origin

Generally speaking, the dipole potential is a good approximation when the distance $r$ greatly exceeds the size of some loop.
### Torques and Forces on Magnetic Dipoles
The torque exerted in a loop by some uniform magnetic field is,
$$
\vec{N} = \vec{m} \times \vec{B}
$$
Which is identical to the electric version, $\vec{N}=\vec{p}\times \vec{E}$

The torque is exerted in a direction that tends to line up the dipole parallel to the field.

In a uniform field, the net force on a current loop is zero,
$$
\vec{F} = I \oint d\vec{l}'\times \vec{B} = I \left( \oint d\vec{l} \right) \times \vec{B} =0
$$
Where $\vec{B}$ comes out of the integral. Of course, this is not the case of a non-uniform magnetic field. In this case,
$$
\vec{F} = \nabla(\vec{m}\cdot \vec{B})
$$
