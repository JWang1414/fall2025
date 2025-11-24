# Scattering Theory
Lets start with the classical image. We have some particle travelling at $\vec{k}=k\hat{z}$ that will hit a sphere of radius $R$.

Now, we can define an impact parameter $b$, which measures how "off centre" the particle is from the sphere. From this we can obviously tell that if $b>R$ than the particle won't scatter because it doesn't hit the sphere.
![[Pasted image 20251124131945.png]]
From this image, we have:
$$
\theta = \pi-2\alpha \qquad \alpha = \frac{1}{2} (\pi-\theta) \qquad b=R\sin \alpha
$$
From which we also have that:
$$
b= R \cos\left( \frac{\theta}{2} \right) \qquad \theta = \begin{cases}
2 \arccos\left( \frac{b}{R} \right) & b\leq R \\
0 & b>R
\end{cases}
$$
![[Pasted image 20251124132430.png]]
Now, lets say we have instead a ring of particles like this incident onto the sphere. We would like to find the number of particles from this ring that are incident onto some small solid angle $d\Omega$
$$
dN = J_\text{incident} \cdot b\, db \, d\phi
$$
Where the small area $d\sigma$ is equivalent to $b\, db \, d\phi$.

If you now substitute the values we have derived previously into these variables, we get:
$$
dN = J_\text{incident} \left( \frac{R^{2}}{4} \right) (\sin\theta \, d\theta \, d\phi)
$$
However, notice that the solid angle is also:
$$
d\Omega = \sin\theta \, d\theta \, d\phi
$$
So there:
$$
dN = J_\text{incident} \left( \frac{R^{2}}{4} \right) \, d\Omega
$$
So, the fraction of particles passing through the cross section is:
$$
d\sigma = \frac{dN}{J_\text{in}} = \frac{R^{2}}{4} \, d\Omega
$$
- $J_\text{in}$ is the current density. So it is the number per unit time per unit area

Simplifying the above, we can solve for the differential cross section:
$$
\frac{d\sigma}{d\Omega} = \frac{R^{2}}{4}
$$
Which has dimensions of area.

Now, we can find the total cross section by integrating the differential cross section over the detector area
$$
\int \frac{d\sigma}{d\Omega} \, d\Omega = \frac{R^{2}}{4} (4\pi) = \pi R^{2}
$$
Which is just the cross section of the sphere.
# 1D Scattering
Lets say we have some barrier blocking an incident beam $Ae^{ ikx }$. Well, we would expect to have a reflected and transmitted beam. The coefficients of which are $B$ and $C$, respectively. We have:
$$
\left\lvert  \frac{B}{A}  \right\rvert ^{2} = \text{Reflection Coefficient} \qquad \left\lvert  \frac{C}{A}  \right\rvert ^{2} = \text{Transmission Coefficient}
$$
So, if we have some particle $\vec{k}$ incident on a potential, than what is the scattered state $\vec{k}'$? Let define the beam $\ket{\psi}$:
$$
\ket{\psi} = \ket{\vec{k}} + \sum_{\vec{p}\neq \vec{k}} a_{\vec{p}} \ket{\vec{p}}
$$
Where $\ket{\vec{k}}$ is the incident beam and $\ket{\vec{p}}$ is the scattered beam

So, for this system we would expect $\ket{\psi _\text{in}}=\ket{\vec{k}}$ and $\ket{\psi _\text{out}}$ should be some set of spherical waves.

The behaviour of this quantum system should abide by the Schrodinger equation, so:
$$
-\frac{\hbar^{2}}{2m} \nabla^{2}\psi + V \psi = E\psi = \frac{(\hbar k)^{2}}{2m} \psi
$$
- Notice that this also defines that $k$ should be.

Based on our experience with the hydrogen atom, we expect the spherical waves to have the separated form:
$$
\psi = R(r) Y_{lm}(\theta, \phi)
$$
- If you substitute the spherical harmonics and radii functions into the Schrodinger equation here, you will get something very nasty

Introduce $R = u /r$ and it should become:
$$
-\frac{\hbar^{2}}{2m} \frac{d^{2}u}{dr^{2}} + \frac{\hbar^{2}l(l+1)}{2mr^{2}} u + V(r) u = Eu
$$
Where the term in the middle (the one related to $u$) is called the "centrifugal term"
- I think I missed the exact name

The solutions to this problem should be plane waves that look something like:
$$
u = e^{ \pm ikr } \implies R_\text{out} = \frac{e^{ \pm ikr }}{r}
$$
The intuition behind $u$ is that the problem looks very similar to a free particle problem. And so we just end up with a particle that keeps going with nothing impeding it. However, we can see from $R_\text{out}$ that the radial portion will end up decaying as a function of $r$.

The most general form for the wave function is therefore:
$$
\psi(\vec{r}) = e^{ ikz } + f(\theta, \phi) \frac{e^{ ikr }}{r}
$$
Where the first term is reminiscent of the incident wave, and the second the scattered wave.
$$
d\sigma \propto \lvert f(\theta, \phi) \rvert ^{2}
$$
