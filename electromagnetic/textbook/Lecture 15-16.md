### Magnetization
$$
\vec{M} = \text{magnetic dipole moment per unit volume}
$$
Recall that the vector potential in terms of the magnetic dipole moment is,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}}{4\pi} \frac{\vec{m}\times \hat{r}}{r^{2}}
$$
For the magnetization, this intuitively expands into,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{M}(\vec{r}')\times \hat{r}}{r^{2}} \, d\tau
$$
In terms of the bound volume and surface currents, this becomes,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int _{V} \frac{\vec{J}_{b}(\vec{r}')}{r} \, d\tau' + \frac{\mu_{0}}{4\pi} \oint_{S} \frac{\vec{K}_{b}(\vec{r})'}{r} \, da'
$$
In terms of the magnetization, the two currents are,
$$
\vec{J}_{b} = \nabla \times \vec{M} \qquad \vec{K}_{b} = \vec{M}\times \hat{n}
$$
Recall that the divergence of a curl is always zero, and so the bound volume current obeys the conservation law,
$$
\nabla \cdot \vec{J}_{b} =0
$$
### The Auxiliary Field
The total current running through a conductor is,
$$
\vec{J} = \vec{J}_{b} + \vec{J}_{f}
$$
Where the subscripts indicate the bound and free currents, respectively. The bound current exists from magnetization, and the free current exists because something (like a battery) is transporting charge.

From Ampere's law we now have,
$$
\frac{1}{\mu_{0}} \left( \nabla \times \vec{B} \right) = \vec{J}_{f} + \vec{J}_{b} = \vec{J}_{f} + \left( \nabla \times \vec{M} \right)
$$
Collecting the two curls we have,
$$
\nabla \times \left( \frac{1}{\mu_{0}} \vec{B} - \vec{M} \right) = \nabla \times \vec{H} = \vec{J}_{f} \qquad \vec{H} = \frac{1}{\mu_{0}} \vec{B} - \vec{M}
$$
Where we have defined the new quantity $\vec{H}$. In integral form,
$$
\oint \vec{H}\cdot d\vec{l} = I_{f_\text{enc}}
$$
Where $I_{f_\text{enc}}$ is the total free current passing through the Amperian loop. $\vec{H}$ is essentially a tool we use to express Ampere's law in terms of the free current alone, much like the displacement field $\vec{D}$ is electrostatics.

Despite the similarities between $\vec{H}$ and $\vec{B}$, they are not identical. For example,
$$
\nabla \cdot \vec{B} =0 \qquad \nabla \cdot \vec{H} = -\nabla \cdot \vec{M}
$$
And there is no Biot-Savart law or vector potential equivalent for $\vec{H}$
### Boundary Conditions
The magnetostatic boundary conditions can be rewritten in terms of $\vec{H}$
$$
H^{\perp}_\text{above} - H^{\perp}_\text{below} = - (M^{\perp}_\text{above} - M^{\perp}_\text{below})
$$
On a surface current, $\vec{H}$ is discontinuous,
$$
\vec{H}^{\parallel}_\text{above} - \vec{H}^{\parallel}_\text{below} = \vec{K}_{f} \times \hat{n}
$$
Similar, but potentially more useful than the corresponding boundary conditions in $\vec{B}$
$$
B^{\perp}_\text{above} - B^{\perp}_\text{below} =0
$$
$$
\vec{B}^{\parallel}_\text{above} - \vec{B}^{\parallel}_\text{below} = \mu_{0} (\vec{K}\times \hat{n})
$$
### Magnetic Susceptibility and Permeability
Provided the magnetic field is not too strong, the magnetization is generally proportional to the field.
$$
\vec{M} = \chi_{m} \vec{H}
$$
Where $\chi_{m}$ is called the magnetic susceptibility. It is positive of paramagnets and negative for diamagnets.

Materials where the above expression is valid are called *linear media*.
$$
\vec{B} = \mu_{0}(\vec{H} + \vec{M}) = \mu_{0} (1+\chi_{m}) \vec{H}
$$
And so in linear media $\vec{B}$ is also proportional to $\vec{H}$.
$$
\vec{B} = \mu \vec{H} \qquad \mu \equiv \mu_{0}(1+\chi_{m})
$$
Where $\mu$ is called the permeability of a material.

One might suppose that, since $\vec{M}$ and $\vec{H}$ are now proportional to $\vec{B}$, the divergence of $\vec{H}$ must also vanish like $\vec{B}$ does. However, at the boundary between two materials, the divergence of $\vec{M}$ can be infinite.

The volume bound current density is proportional to the free current density,
$$
\vec{J}_{b} = \nabla \times \vec{M} = \nabla \times(\chi_{m}\vec{H}) = \chi_{m} \vec{J}_{f}
$$
Unless free current flows through the material, all bound current will be at the surface.
