![[Pasted image 20251104113644.png]]
a.
The charge per-unit-volume in this sphere is,
$$
\rho r' d\theta dr'
$$
Where $r'$ is the radius measured from the origin. Infinitely small current and area of each loop in the sphere,
$$
dI = (\rho r' dr' d\theta) (r\omega) \qquad A = \pi r^{2}
$$
Where $r=r'\sin\theta$ is the radius measured from the $z$-axis. The magnetic dipole moment is therefore,
$$
dm = A dI = \pi \rho \omega r' r^{3} dr' d\theta = \pi \rho \omega (r')^4 \sin ^{3}\theta \, dr' \, d\theta
$$
Magnetic dipole moment is therefore,
$$
\begin{align}
m  & = \pi \rho \omega \int_{0}^{R} \int_{0}^{\pi} (r')^{4} \sin ^{3}\theta \, dr'  \, d\theta  \\
 & = \pi \rho \omega \int_{0}^{R} (r')^4 \, dr' \int_{0}^{\pi} \sin ^{3}\theta \, d\theta  \\
 & = \pi \rho \omega \left( \frac{R^5}{5} \right) \left( \frac{4}{3} \right) 
\end{align}
$$
Substitute in the fact that,
$$
\rho = \frac{\text{Total Charge}}{\text{Volume}} = \frac{Q}{(4 /3)\pi R^{3}}
$$
$$
m = \pi \left( \frac{Q}{(4 /3)\pi R^{3}} \right)  \omega \left( \frac{R^5}{5} \right) \left( \frac{4}{3} \right) = \frac{Q}{5} \omega R^{2}
$$
By the right-hand-rule, the dipole moment will be in the $\hat{z}$ direction.
$$
\vec{m} = \frac{Q}{5} \omega R^{2} \, \hat{z}
$$

---
b.
The average magnetic field in a sphere is,
$$
\vec{B}_\text{ave} = \frac{\mu_{0}}{4\pi} \frac{2\vec{m}}{R^{3}}
$$
Then,
$$
\begin{align}
\vec{B}_\text{ave} & = \frac{\mu_{0}}{4\pi} \frac{2}{R^{3}} \left( \frac{Q}{5} \omega R^{2} \right)  \hat{z} \\
 & = \frac{\mu_{0}}{4\pi} \frac{2Q\omega}{5R}
\end{align}
$$
---
![[Pasted image 20251104162022.png]]
c.
The vector potential of a dipole is,
$$
\vec{A}_\text{dip} (\vec{r}) = \frac{\mu_{0}}{4\pi} \frac{\vec{m}\times \hat{r}}{r^{2}}
$$
Compute cross product,
$$
\vec{m}\times \hat{r} = m \sin\theta = \frac{Q}{5} \omega R^{2} \sin\theta
$$
Therefore,
$$
\vec{A}_\text{dip} = \frac{\mu_{0}}{4\pi} \frac{Q\omega R^{2}}{5} \frac{\sin\theta}{r^{2}} \hat{\phi}
$$
---
d.
From example 5.11 in the textbook (given),
$$
\vec{A} (r, \theta, \phi) = \begin{cases}
\frac{1}{3} \mu_{0} R\omega \sigma r \sin\theta \, \hat{\phi} & r\leq R \\
\frac{1}{3} \mu_{0} R^4 \omega \sigma \frac{\sin\theta}{r^{2}} \, \hat{\phi} & r\geq R
\end{cases}
$$
This is for a spherical shell. For a solid sphere, take $\sigma\to \rho \, dr'$ and $R\to r'$. Outside the sphere this becomes,
$$
= \frac{\mu_{0}\omega \rho}{3} \frac{\sin\theta}{r^{2}} r'^4 \, dr' \implies \frac{\mu_{0}\omega \rho}{3} \frac{\sin\theta}{r^{2}} \int_{0}^{R} r'^4 \, dr' = \frac{\mu_{0}\omega \rho}{3} \frac{\sin\theta}{r^{2}} \frac{R^5}{5}
$$
Apply the fact that, by definition, the volume charge density is,
$$
\rho = \frac{Q}{(4 /3)\pi R^{3}}
$$
And this simplifies into,
$$
\vec{A}_\text{sphere} = \frac{\mu_{0}}{4\pi} \frac{Q\omega R^{2}}{5} \frac{\sin\theta}{r^{2}} \hat{\phi}
$$
- They are identical
- I conclude that, outside the sphere, it is a dipole
---
e.
Use example 5.11 to determine the contribution from the inner sphere and outer sphere.

Apply the transformation $R\to r'$ and $\sigma\to \rho\, dr'$,
$$
\text{Outer Shell} = \frac{\mu_{0}\omega \rho}{3} (r \sin\theta) r' \, dr' \qquad \text{Inner Sphere} = \frac{\mu_{0}\omega \rho}{3} \frac{\sin\theta}{r^{2}} r'^4 \, dr'
$$
The total contribution from both at the radius $r$ is therefore,
$$
\frac{\mu_{0}\omega \rho}{3} \left[ \frac{\sin\theta}{r^{2}} \int_{0}^{r} r'^{4} \, dr' + r \sin\theta \int_{r}^{R} r' \, dr'  \right] = \frac{\mu_{0}\omega \rho}{3} \left[ \frac{\sin\theta}{r^{2}} \left( \frac{r^5}{5} \right) + \frac{r\sin\theta}{2} (R^{2}-r^{2}) \right]
$$
$$
\frac{\mu_{0}\omega \rho}{30} r \sin\theta \left( 5R^{2} - 3r^{2} \right) \, \hat{\phi}
$$
Compute the magnetic field,
$$
\vec{B} = \nabla \times \vec{A} = \mu_{0}\omega \rho \left[ \left( \frac{R^{2}}{3} - \frac{r^{2}}{5} \right) \cos\theta \hat{r} - \left( \frac{R^{2}}{3} - \frac{2r^{2}}{5} \right) \sin\theta \hat{\theta} \right]
$$
- I just copied this down. Write down the full computation later.

Convert $\rho$ to the total charge $Q$ to obtain,
$$
\vec{B} = \frac{\mu_{0}\omega Q}{4\pi R} \left[ \left( 1-\frac{3r^{2}}{5R^{2}} \right) \cos\theta \hat{r} - \left( 1-\frac{6r^{2}}{5R^{2}} \right) \sin\theta \hat{\theta} \right]
$$
According to the right-hand-rule, the magnetic field will be in the $\hat{z}$ direction. Furthermore, the $\hat{z}$ components of the $\hat{r}$ and $\hat{\theta}$ directions are known to be,
$$
\hat{r} \to \cos\theta \hat{z} \qquad \hat{\theta} \to - \sin\theta \hat{z}
$$
Therefore,
$$
\vec{B} = \frac{\mu_{0}\omega Q}{4\pi R} \left[ \left( 1-\frac{3r^{2}}{5R^{2}} \right) \cos ^{2}\theta + \left( 1-\frac{6r^{2}}{5R^{2}} \right) \sin ^{2} \theta \right] \hat{z}
$$
Compute the average field,
$$
\begin{align}
B_\text{ave} & = \frac{\mu_{0}\omega Q}{4\pi R} \int_{0}^{R} \int_{0}^{\pi} \int_{0}^{2\pi} \left[ \left( 1-\frac{3r^{2}}{5R^{2}} \right) \cos ^{2}\theta + \left( 1-\frac{6r^{2}}{5R^{2}} \right) \sin ^{2} \theta \right] r^{2} \sin\theta \, dr  \, d\theta  \, d\phi
\end{align}
$$
- Everything from here is computations
- The result is that the two magnetic fields match
![[Pasted image 20251104202026.png]]
