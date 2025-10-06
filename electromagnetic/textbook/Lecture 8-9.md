### Approximate Potentials at Large Distances
Recall that, for some localized charge distribution, the potential roughly looks like,
$$
V = \frac{1}{4\pi\epsilon_{0}} \frac{Q}{r}
$$
Similar to a single point of charge. But, what about for an electric dipole? We define an electric dipole as two equal and opposite charges, separated by a distance $d$. Far away, we find the potential looks like,
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{qd\cos\theta}{r^{2}}
$$
So the potential goes like $r^{-2}$. A quadrupole has its potential go down like $r^{-3}$ and an octopole has $r^{-4}$.
![[Pasted image 20251004204734.png]]
For any localized charge distribution with the potential at $\vec{r}$ given by,
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \int \frac{1}{r} \rho(\vec{r}') \, d\tau
$$
The multipole expansion claims that it can be expanded as:
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \sum_{n=0}^{\infty} \frac{1}{r^{(n+1)}} \int (r')^{n} P_{n}(\cos \alpha) \rho(\vec{r}') \, d\tau'
$$
Where $P_{n}$ are the Legendre polynomials. This is called the multipole expansion of $V$ in power of $1 /r$. 
![[Pasted image 20251004212618.png]]
It is most useful as an approximation scheme. The lowest non-zero term in the expansion provides the approximate potential at large $r$.
### Monopole and Dipole Terms
Assuming the dominant term in the potential is the dipole, we have,
$$
V_\text{dip} (\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{1}{r^{2}} \int r' \cos \alpha \rho(\vec{r}') \, d\tau'
$$
Notice that,
$$
r' \cos \alpha = \hat{r} \cdot \vec{r}'
$$
And the dipole potential can be rewritten as,
$$
V_\text{dip}(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{1}{r^{2}} \hat{r}\cdot \int \vec{r}' \rho(\vec{r}') \, d\tau'
$$
This integral is called the dipole moment of the distribution,
$$
\hat{p} = \int \vec{r}' \rho(\vec{r}') \, d\tau'
$$
Which simplifies the potential equation further,
$$
V_\text{dip} (\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{\vec{p}\cdot \hat{r}}{r^{2}}
$$
For a collection of point charges, the dipole moment is instead a summation,
$$
\vec{p} = \sum_{i=1}^{n} q_{i}\vec{r}'_{i}
$$
Note that the dipole moment is a vector, and so vector properties are all present.
### Electric Field of a Dipole
For some dipole pointing in the $z$ direction,
$$
\vec{E}_\text{dip}(r, \theta) = \frac{p}{4\pi\epsilon_{0} r^{3}} (2 \cos\theta \hat{r} + \sin\theta \hat{\theta})
$$
Where $p$ is the magnitude of the dipole.
### Alignment of Polar Molecules
Some molecules have permanent dipole moments, these are called polar molecules. What happens if they are placed in an electric field?

There will be a torque about the centre of the molecule,
$$
\begin{align}
\vec{N} & = (\vec{r}_{+} \times \vec{F}_{+}) + (\vec{r}_{-} \times \vec{F}_{-}) = \left[ (\vec{d} /2) \times q\vec{E} \right] + \left[ (-\vec{d} /2) \times -q\vec{E} \right]  \\
 & = q \vec{d}\times \vec{E}
\end{align}
$$
And so some dipole $\vec{p}=q\vec{d}$ in a uniform electric field $\vec{E}$ experiences the torque,
$$
\vec{N} = \vec{p}\times \vec{E}
$$
The torque here is such that it attempts to line up $\vec{p}$ parallel with the electric field.

If there is a significant variation in $\vec{E}$, such that $\vec{F}_{+}$ can no longer balance our $\vec{F}_{-}$, then there will be a net force,
$$
\vec{F} = \vec{F}_{+} + \vec{F}_{-} = q(\vec{E}_{+} - \vec{E}_{-}) = q \Delta \vec{E}
$$
Where $\Delta \vec{E}$ is the difference between the plus end and minus end of the field. If the dipole is short, then this simplifies into the equation,
$$
\vec{F} = (\vec{p}\cdot \nabla) \vec{E}
$$
### Bound Charges
The potential of a polarized object is the same as that produced by a volume charge density $\rho_{b}$ plus a surface charge density $\sigma_{b}$.
$$
\sigma_{b} \equiv \vec{P}\cdot \hat{n}
$$
$$
\rho_{b} \equiv -\nabla \cdot \vec{P}
$$
Where the dipole in each volume element is, $\vec{p}=\vec{P}\, d\tau'$

For accumulations of bound charge to arise within a material, the polarization must be non-uniform.
### Displacement Field
The effect of polarization is to produce accumulations of bound charge $\rho_{b}$ and $\sigma_{b}$ within and on the surface of the dielectric. That is, the field from polarization of the medium is just the field of this bound charge.

Define the free charge $\rho_{f}$ as all the charge not associated with $\vec{P}$. This might be electrons on a conductor, or ions embedded in the dielectric.

The total charge density is therefore,
$$
\rho = \rho_{b} + \rho_{f}
$$
Apply Gauss' law to find that,
$$
\epsilon_{0} \nabla \cdot \vec{E} = \rho \implies \nabla \cdot(\epsilon_{0}\vec{E} + \vec{P}) = \rho_{f}
$$
Which is called the electric displacement, $\vec{D}$.
$$
\vec{D} \equiv \epsilon_{0} \vec{E} + \vec{P}
$$
Gauss' law transforms into,
$$
\nabla \cdot \vec{D} = \rho_{f} \implies \oint \vec{D}\cdot d\vec{a} = Q_{f, enc}
$$
Where $Q_{f, enc}$ is the total free charge enclosed in a volume.

There is no coulomb's law for $\vec{D}$
$$
\vec{D}(\vec{r}) \neq \frac{1}{4\pi} \int \frac{\hat{r}}{r^{2}} \rho_{f}(\vec{r}') \, d\tau'
$$
Which is because the divergence alone is not enough to determine $\vec{D}$. For $\vec{E}$, the curl is always zero, and so we can take this for granted, however,
$$
\nabla \times \vec{D} = \nabla \times \vec{P}
$$
There is also no potential for $\vec{D}$.