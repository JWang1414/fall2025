### Biot-Savart Law
- Describes sources of magnetic fields. The fields resulting from a steady magnetic current
$$
\vec{B} = \frac{\mu_{0}I}{4\pi} \oint \frac{d\vec{l}\times \hat{r}}{r^{2}}
$$
Where $\mu_{0}$ is the permeability of free space and $I$ is the current.
$$
\mu_{0} = 4\pi \times 10^{-7} N /A^{2}
$$
In CGS units the law becomes
$$
\vec{B} = \frac{I}{c} \oint \frac{d\vec{l}\times \hat{r}}{r^{2}}
$$
$r$ is the distance from the circuit to some test charge.
### Geometric Perspective
The Biot-Savart law in CGS units is equivalent to:
$$
\vec{B} = -\frac{I}{c} \vec{\nabla}\Omega
$$
Where $\vec{\nabla}\Omega$ is the gradient of the solid angle subtended by at some point $P$.

As an example, if you are close to something, the solid angle is very large, and if you are far, the solid angle is very small. Furthermore, in this case, we have $\Omega>0$ if $P$ is above and $\Omega<0$ if $P$ is below.
- I'm not entirely sure what above and below mean here
### Ampere's Law
$$
\oint_{C} \vec{B}\cdot d\vec{l} = \mu_{0}I
$$
It is possible to prove that Ampere's law and the Biot-Savart law are equivalent.

---
Example:
Magnetic field of a cylindrical wire with uniform current density $\vec{J}$. Assume the wire is an infinitely long cylinder.

Use cylindrical coordinates. The wire is flowing in the $\hat{z}$ direction, and so the magnetic field must be in the $\hat{\phi}$ direction, around the wire.

Define an Amperian loop centred at the wire. This loop and the magnetic field are perpendicular, therefore, from Ampere's law:
$$
\oint_{C} \vec{B}\cdot d\vec{l} = 2\pi rB = \mu_{0} I = \mu_{0} J \pi r^{2} \implies \vec{B} = \mu_{0}
$$