There are no corrections to EM under relativity, because it is the foundation of special relativity. Recall that EM waves propagate in any medium.

No significant changes under QM either, outside of the shortest scales. EM provides the paradigm for the construction of QM. Also vital for quantum field theory, and particle physics.
### Review
Coulomb's Law
$$
\vec{F} = \frac{1}{4\pi\epsilon_{0}} \frac{qq'}{r^{2}} \hat{r}
$$
> Expressed in MKS units. Coulombs, amperes etc
- $e^{-}=1.6\times 10^{-19}$ coulombs
- $\epsilon_{0}$ is the permittivity of free space

> In CGS units, the unit of charge is electrostatic units. Coulomb's law collapses to
$$
\vec{F} = \frac{qq'}{r^{2}} \hat{r}
$$
> And here the charge of the electron is $e^{-}=4.8\times 10^{-10}$ esu

Recall that coulomb's law follows superposition. That is,
$$
\Sigma \vec{F} = \vec{F}_{1} + \vec{F}_{2} + \dots
$$
Lorentz Force Law
$$
\vec{F} = q(\vec{E} + \vec{v}\times \vec{B})
$$
> Where $\vec{E}$ is the electric field, $\vec{v}$ is the velocity of a charge $q$, and $\vec{B}$ is the magnetic field. In CGS units, we instead have:
$$
\vec{F} = q\left( \vec{E} + \frac{\vec{v}}{c} \times \vec{B} \right)
$$

For fields, Coulomb's law can also be expressed as:
$$
\vec{E} = \frac{q}{4\pi\epsilon_{0}r^{2}} \hat{r}
$$
For some point charge. Which brings us to Gauss' law:
$$
\iint_{S} \vec{E} \cdot d\vec{A} = \frac{q}{\epsilon_{0}}
$$
Which is the statement that the flux through from a surface surrounding an electric field is always equal to this constant. Remember to use symmetries doing these calculations!

While proving Gauss' law he uses something called a "solid angle":
$$
d\vec{\Omega} = \frac{d\vec{A} \cdot \hat{r}}{r^{2}}
$$
Atomic Polarizability
$$
\alpha = 4\pi\epsilon_{0} a_{0}^{3}
$$
Where in this case $a_{0}$ was the radius of an electron cloud around a proton.

---
Example: Electrons in a metal

Define some metal with the dimensions $x\times y\times z$ with $L\times l\times l$. Define $n$ as the average number density.  We have:
$$
N = nLl^{2}
$$
As the total number of electrons and nuclei within the metal.

We will simplify this further with the Jellium model, which considers uniform positive and negative densities moving around the metal like a "jelly". The electrons, however, can still move. There is no $\vec{E}$ in this problem.

Consider displacing the + and - components rigidly by some distance $z$, leaving us with two planar sheet of charge. Surrounding the top layer in a Gaussian box, and applying Gauss' law,
$$
\iint \vec{E} \cdot d\vec{A} = 2El^{2} = \frac{1}{\epsilon_{0}} (zl^{2}) |e|n
$$
And therefore we have:
$$
E = \frac{z|e|n}{2\epsilon_{0}} = \frac{\sigma}{2\epsilon_{0}}
$$
Where we have defined the quantity $\sigma=z|e|n$ called the surface charge density. Hence the total electric field between the two plates inside the metal sheet is:
$$
E = \frac{\sigma}{\epsilon_{0}}
$$
Identical to the model using two oppositely charged plates.

What happens if you place a test charge inside?
$$
\vec{F} = q\vec{E} = |e| \frac{(-\hat{z})\sigma}{\epsilon_{0}} = -\hat{z} z \left( \frac{ne^{2}}{\epsilon_{0}} \right)
$$
Imagining electromagnetic forces as spring forces, you can model the term $ne^{2} /\epsilon_{0}$ as an effective spring constant like in Hooke's law. We furthermore establish the harmonic oscillation
$$
\omega_{p} = \sqrt{ \frac{k_\text{eff}}{m} }
$$
Where $k_\text{eff}$ is the spring constant. Substituting our result in, we obtain:
$$
\omega^{2}_{p} = \frac{ne^{2}}{\epsilon_{0}m}
$$
 Is called the plasma frequency