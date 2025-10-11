### Linear Dielectrics
The polarization of a linear dielectric is proportional to the field,
$$
\vec{P} = \epsilon_{0} \chi_{e} \vec{E}
$$
Where $\chi_{e}$ is the dimensionless electric susceptibility. Note that $\vec{E}$ is the total field, the field including the effects from polarization. Because of this, it is often more useful to use the displacement field for computations,
$$
\vec{D} = \epsilon_{0} \vec{E} + \vec{P} = \epsilon_{0} (1+\chi_{e}) \vec{E} = \epsilon \vec{E}
$$
Where $\epsilon=\epsilon_{0}(1+\chi_{e})$ is the permittivity of a material.

Extracting a factor of $\epsilon_{0}$, we obtain the relative permittivity, or dielectric constant:
$$
\epsilon_{r} = 1+ \chi_{e} = \frac{\epsilon}{\epsilon_{0}}
$$
For some parallel plate capacitor, filled with a material of dielectric constant $\epsilon_{r}$, the capacitance $C = Q /V$ is increased by a factor of the dielectric constant,
$$
C = \epsilon_{r} C_\text{vac}
$$
### Boundary Value Problems
In a linear dielectric, the bound charge density is proportional to the free charge density,
$$
\rho_{b} = - \nabla \cdot \vec{P} = - \left( \frac{\chi_{e}}{1+\chi_{e}} \right)\rho_{f}
$$
Unless free charge is embedded in the material, $\rho=0$ and any net charge resides on the surface.

This means the inside obeys Laplace's equation, and we can use our known solutions.

Rewriting existing boundary conditions in terms of just the free charge,
$$
\epsilon _\text{above} E^{\perp}_\text{above} - \epsilon _\text{below} E^{\perp}_\text{below} = \sigma_{f}
$$
$$
\epsilon _\text{above} \frac{ \partial V_\text{above} }{ \partial n } - \epsilon _\text{below} \frac{ \partial V_\text{below} }{ \partial n } = -\sigma_{f}
$$
The potential remains continuous,
$$
V_\text{above} = V_\text{below}
$$
### Energy in Dielectric Systems
Recall that the work it takes to charge a capacitor is,
$$
W = \frac{1}{2}CV^{2}
$$
And that if it is filled with a linear dielectric, its capacitance increases,
$$
C = \epsilon_{r} C_\text{vac}
$$
The general formula for the energy in an electrostatic system is,
$$
W = \frac{\epsilon_{0}}{2} \int E^{2} \, d\tau
$$
With the above facts, it is possible to prove that the new dielectric-filled capacitor changes the work done to,
$$
W = \frac{\epsilon_{0}}{2} \int \epsilon_{r} E^{2} \, d\tau  = \frac{1}{2} \int \vec{D}\cdot \vec{E} \, d\tau
$$
This first term can also be written,
$$
W = \frac{\epsilon}{2} \int E^{2} \, d\tau
$$
Notice the use of $\epsilon$ instead of $\epsilon_{0}$.
