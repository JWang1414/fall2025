In the textbook, source charges are labelled as:
$$
q_{1}, q_{2}, q_{3}, \dots
$$
And the test charge is labelled as $Q$.

The force on $Q$ due to some point charge $q$ is given by Coulomb's law:
$$
\vec{F} = \frac{1}{4\pi\epsilon_{0}} \frac{qQ}{r^{2}}\hat{r}
$$
Where $\vec{r}$ is the separation vector from the location of $q$ to the location of $Q$. Note that $\hat{r}$ is a unit vector point in the direction of $\vec{r}$, and $r$ is the magnitude of $\vec{r}$.

The permittivity of free space in SI units is:
$$
\epsilon_{0} = 8.85 \times 10^{-12} \frac{C^{2}}{N\cdot m^{2}}
$$
Define $\vec{r}'$ the location of $q$ and $\vec{r}$ the location of $Q$. Then,
$$
\text{Separation Vector} = \vec{r}-\vec{r}'
$$
For some number of point charges $q_{i}$, the electric field is defined to be:
$$
\vec{E}(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \sum_{i=1}^{n} \frac{q_{i}}{r^{2}_{i}} \hat{r}_{i}
$$
Where $r_{i}$ is similarly the separation vector between each charge and some test charge. In this way, we can combine this with Coulomb's law to determine the force on this test charge is simply:
$$
\vec{F} = Q\vec{E}
$$
For continuous charge distributions, the electric field is instead an integral:
$$
\vec{E}(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \int \frac{1}{r^{2}}\hat{r} \, dq
$$
If the charge is spread out on some line, area, or volume, the differential transforms into some other similar form:
$$
dq \to \lambda \, dl \text{ or } \sigma \, da \text{ or } \rho \, d\tau
$$
Most importantly, the electric field for a volume is given:
$$
\vec{E}(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho(\vec{r}')}{r^{2}}\hat{r} \, d\tau
$$
The other analogues can be easily concluded from here.

Recall the idea of field lines to visualize the strength of an electric field. The higher the density of lines, the stronger the field.
![[Pasted image 20250909204020.png]]
The definition of *flux* is effectively the "number of field lines" passing through some surface $S$:
$$
\Phi_{E} \equiv \int _{S} \vec{E}\cdot d\vec{a}
$$
The flux through any closed surface is a measure of the total charge inside. This is, familiarly, Gauss' law:
$$
\oint \vec{E}\cdot d\vec{a} = \frac{Q_\text{enc}}{\epsilon_{0}}
$$
Where $Q_\text{enc}$ is the total amount of enclosed charge. In differential form, Gauss' law is also written as:
$$
\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_{0}}
$$
Common Gauss' law application symmetries:
1. Concentric spheres for spherical symmetries
2. Coaxial cylinders for cylindrical symmetries
3. Gaussian "pillbox" for plane symmetries
Example of this can be found in chapter 2.2.3 in the textbook.

For a long cylinder with $\rho=ks$ where $s$ is the radius and $k$ is some constant, the field off to the curved sides is:
$$
\vec{E} = \frac{1}{3\epsilon_{0}} ks^{2} \hat{s}
$$
For an infinite plane with uniform charge density $\sigma$ the field is:
$$
\vec{E} = \frac{\sigma}{2\epsilon_{0}} \hat{n}
$$
Where $\hat{n}$ is a vector pointing away from the plane, depending on which side you are on.