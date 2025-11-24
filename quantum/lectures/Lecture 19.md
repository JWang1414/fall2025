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
