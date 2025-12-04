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
