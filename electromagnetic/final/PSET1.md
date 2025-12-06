![[Pasted image 20251203113625.png]]
The energy in a distribution can be computed in two ways.
$$
W = \frac{1}{2} \int \rho V \, d\tau  = \frac{\epsilon_{0}}{2} \int E^{2} \, d\tau
$$
Use Gauss's law to find the field of this sphere.
$$
\oint \vec{E}\cdot d\vec{a} = \frac{1}{\epsilon_{0}} Q_\text{enc}
$$
Choose Gaussian surface sphere,
$$
\oint \vec{E}\cdot d\vec{a} = 4\pi r^{2} E
$$
Integrate to find the enclosed charge,
$$
Q_\text{enc} = \int \rho(r) (r^{2}\sin\theta) \, dr d\theta d\phi  = 4\pi k \int_{0}^{R} r^{3} \, dr = \frac{\pi kR^4}{4}
$$
Solve for the electric field,
$$
4\pi r^{2}E = \frac{\pi kR^4}{4\epsilon_{0}} \implies \vec{E} = \frac{kR^{4}}{16\epsilon_{0}r^{2}} \hat{r}
$$
Solve for the potential,
$$
V(\vec{r}) = - \int_{\mathcal{O}}^{\vec{r}} \vec{E}\cdot d\vec{l} = - \frac{kR^4}{16\epsilon_{0}} \int_{\mathcal{O}}^{r} \frac{1}{r^{2}} dr = \frac{kR^4}{16\epsilon_{0}} \left[ \frac{1}{r} \right] ^{r}_{\mathcal{O}}
$$
Choose $\mathcal{O}\to \infty$,
$$
V(\vec{r}) = \frac{kR^{4}}{16\epsilon_{0}r}
$$
Solve for the energy,
$$
W = \frac{1}{2} \int \rho V \, d\tau = \frac{1}{2} \int kr\left( \frac{kR^{4}}{16\epsilon_{0}r} \right) (r^{2}\sin\theta) \, dr d\theta d\phi = \frac{k^{2}R^{4}}{32\epsilon_{0}} \int d\tau = \frac{k^{2}R^{4}}{32\epsilon_{0}} \frac{4}{3} \pi R^{3}
$$
$$
W = \frac{\pi k^{2}R^7}{24\epsilon_{0}}
$$
- Off by a constant somewhere
Solve for the energy via the field,
$$
E^{2} = \left( \frac{kR^{4}}{16\epsilon_{0}r^{2}} \right) ^{2} = \frac{k^{2}R^{8}}{256\epsilon_{0}^{2}r^{4}}
$$
$$
W = \frac{\epsilon_{0}}{2} \int E^{2} \, d\tau = \frac{k^{2}R^{8}}{512\epsilon_{0}} \int \frac{1}{r^{4}} (r^{2} \sin\theta) \, dr d\theta d\phi
$$
- If I compute this, it's also off by a constant
- The reason this is wrong is because the charge is varying as a function of $r$, so the field and potential is different on the inside and outside of the sphere
![[Pasted image 20251205224854.png]]
a.
Use Ampere's law,
$$
\oint \vec{B}\cdot d\vec{l} = \mu_{0} I_\text{enc}
$$
$$
\oint \vec{B}\cdot d\vec{l} = 2LB
$$
$$
I_\text{enc} = KL
$$
Where $L$ is the length of the Amperian loop and $K$ is the surface current density. Therefore,
$$
2LB = \mu_{0}KL \implies B = \frac{\mu_{0}K}{2} = \frac{\mu_{0}\sigma v}{2}
$$
For a single plate. Add the two, and the total magnetic field is,
$$
\vec{B} = \mu_{0}\sigma v \hat{z}
$$
Between the two plates.

---
b.
Magnetic force according to the Lorentz force law,
$$
\vec{F} = q\vec{v}\times \vec{B} = \mu_{0}q\sigma v^{2}
$$
The force is facing upwards

---
c.
Electric field from one plate is,
$$
\vec{E} = \frac{\sigma}{\epsilon_{0}}
$$
Balance the two forces,
$$
\frac{\sigma}{\epsilon_{0}} = \mu_{0}\sigma v^{2} \implies v^{2} = \frac{1}{\mu_{0}\epsilon_{0}} \implies v = \frac{1}{\sqrt{ \mu_{0}\epsilon_{0} }} = c
$$
Speed of light.
![[Pasted image 20251205230249.png]]
![[Pasted image 20251205230256.png]]
a.
Electric field long wire,
$$
\oint \vec{E}\cdot d\vec{a} = \frac{Q}{\epsilon_{0}}
$$
$$
\oint \vec{E}\cdot d\vec{a} = 2\pi sl E
$$
$$
Q = \lambda l
$$
$$
2\pi slE = \frac{\lambda l}{\epsilon_{0}} = \frac{\lambda}{2\pi s\epsilon_{0}} \hat{s}
$$
Potential,
$$
V = - \int_{\mathcal{O}}^{s'} \vec{E}\cdot d\vec{l} = - \frac{\lambda}{2\pi\epsilon_{0}} \int_{\mathcal{O}}^{s'} \frac{1}{s} ds = - \frac{\lambda}{2\pi\epsilon_{0}} \left[ \ln s \right] ^{s'}_{\mathcal{O}}
$$
Choose $\mathcal{O}=1$
$$
V = -\frac{\lambda}{2\pi\epsilon_{0}}\ln s
$$
The distance to the two wires is,
$$
s_{\pm \lambda} = \sqrt{ z^{2}+(y\mp a)^{2} }
$$
Use superposition
$$
V = - \frac{\lambda}{2\pi\epsilon_{0}} \sqrt{ z^{2}+(y-a)^{2} } + \frac{\lambda}{2\pi\epsilon_{0}} \sqrt{ z^{2}+(y+a)^{2} }
$$
$$
V = \frac{\lambda}{2\pi\epsilon_{0}} \left[ \sqrt{ z^{2}+(y+a)^{2} } - \sqrt{ z^{2}+(y-a)^{2} } \right]
$$
---
b.
$$
\frac{2\pi\epsilon_{0}V_{0}}{\lambda} = \sqrt{ z^{2}+(y+a)^{2} } - \sqrt{ z^{2}+(y-a)^{2} }
$$
$$
\left( \frac{2\pi\epsilon_{0}V_{0}}{\lambda} \right)^{2} = 2a^{2}+2y^{2}+2z^{2} - 2 \sqrt{ z^{2}+(y-a)^{2} } \sqrt{ z^{2}+(y+a)^{2} }
$$
$$
\sqrt{ z^{2}+(y-a)^{2} } \sqrt{ z^{2}+(y+a)^{2} } = a^{2}+y^{2}+z^{2} - 2 \left( \frac{\pi\epsilon_{0}V_{0}}{\lambda} \right)^{2} = a^{2}+y^{2}+z^{2} - 2\eta^{2}
$$
$$
a^4 - 2 a^2 y^2 + y^4 + 2 a^2 z^2 + 2 y^2 z^2 + z^4 = a^4 - 4 a^2 n^2 + 2 a^2 y^2 + 2 a^2 z^2 + 4 n^4 - 4 n^2 y^2 - 4 n^2 z^2 + y^4 + 2 y^2 z^2 + z^4
$$
$$
4 (-a^2 n^2 + a^2 y^2 + n^4 - n^2 y^2 - n^2 z^2) =0
$$
$$
(a^{2}-\eta^{2})y^{2} - \eta^{2}z^{2} + \eta^{4} - a^{2}\eta^{2} =0
$$
$$
(\eta^{2}-a^{2})y^{2} + \eta^{2}z^{2} = \eta ^{4}-a^{2}\eta^{2}
$$
Which is the equation for a cylinder
