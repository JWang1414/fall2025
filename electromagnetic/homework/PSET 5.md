![[Pasted image 20251201105522.png]]
![[Pasted image 20251201110502.png]]
- Remember to draw this diagram
a.
The fields from an infinite sheet are:
$$
\vec{E} = \frac{\sigma}{2\epsilon_{0}}\hat{z} \qquad \vec{B} = \frac{\mu_{0}K}{2} \hat{x} = \frac{\mu_{0}\sigma v}{2} \hat{x}
$$
Between the two sheets:
$$
\vec{E} = \frac{\sigma}{\epsilon_{0}} \hat{z} \qquad \vec{B} = \mu_{0} \sigma v\hat{x}
$$
Outside of the two sheets, $\vec{E}=\vec{B}=\vec{0}$. The momentum density in the fields is:
$$
\vec{g} = \mu_{0}\epsilon_{0} \vec{S} = \epsilon_{0} (\vec{E}\times \vec{B})
$$
Compute this:
$$
\vec{E}\times \vec{B} = \frac{\sigma}{\epsilon_{0}} \hat{z} \times \mu_{0}\sigma v \hat{x} = \frac{\mu_{0}\sigma^{2}v}{\epsilon_{0}} \hat{y}
$$
$$
\vec{g} = \mu_{0} \sigma^{2}v \, \hat{y}
$$
The total momentum is:
$$
\vec{p} = \int _{\mathcal{V}} \vec{g} \, d\tau  = \mu_{0}\sigma^{2}v \, \hat{y} \int_{\mathcal{V}} d\tau = \mu_{0}\sigma^{2}v dA \, \hat{y}
$$
---
b.
The force on the upper plate from the magnetic field is:
$$
\vec{F} = q(\vec{u}\times \vec{B}) = \sigma A \left( u\hat{z} \times \frac{\mu_{0}\sigma v}{2} \hat{x} \right) = \frac{\mu_{0}\sigma^{2}}{2} uvA \hat{y}
$$
Furthermore, between the plates, the electric field drops to 0 once the upper plate passes by:
$$
\frac{ \partial \vec{B} }{ \partial t } = -\mu_{0} \sigma uv \hat{x}
$$
Where the negative sign arises because it is cancelling out the existing field. This change in the magnetic field will induce an electric field.

According to Maxwell's equations, if $\vec{E}$ is a purely induced Faraday field we have:
$$
\nabla \cdot \vec{E}=0 \qquad \nabla \times \vec{E}=-\frac{ \partial \vec{B} }{ \partial t }
$$
$$
\nabla \cdot \vec{B}=0 \qquad \nabla \times \vec{B} = \mu_{0} \vec{J}
$$
Where $\vec{J}$ is the current. However, this means that solving for the induced field is identical to solving for a magnetic field resulting from some current. For this system, it is the surface current $\vec{K}$,
$$
\mu_{0}\vec{K} = -\frac{ \partial \vec{B} }{ \partial t } \implies \vec{K} = \sigma uv \hat{x}
$$
The magnetic field for some infinite plane of current $\vec{K}$ is,
$$
\vec{B} = \begin{cases}
\frac{\mu_{0}K}{2} \hat{y} & z>d \\
-\frac{\mu_{0}K}{2}\hat{y} & z<d
\end{cases} \implies \vec{E}_\text{induced} = \begin{cases}
\frac{\mu_{0}\sigma uv}{2} \hat{y} & z>d \\
-\frac{\mu_{0}\sigma uv}{2} \hat{y} & z<d
\end{cases}
$$
The force on some charge $q$ on the bottom plate is,
$$
\vec{F} = (-\sigma A)\left( -\frac{\mu_{0}\sigma uv}{2} \right) \hat{y} = \frac{\mu_{0}\sigma^{2}}{2}uvA\hat{y}
$$
This is identical to the force on the upper-plate. The total momentum is:
$$
\vec{p}_\text{mech} = \int \vec{F} \, dt = 2 \left( \frac{\mu_{0}\sigma^{2}}{2}vA \right) \hat{y} \int u \, dt = \mu_{0}\sigma^{2}vdA \hat{y}
$$
Which is identical to the original momentum in the system, as needed.
![[Pasted image 20251201165911.png]]
a.
$$
u = \frac{1}{2} \left( \epsilon E^{2} + \frac{1}{\mu} B^{2} \right)
$$
$$
\left< u \right> = \frac{1}{2} \left( \epsilon \left< E^{2} \right> +\frac{1}{\mu}\left< B^{2} \right>  \right)
$$
The two fields are:
$$
\vec{E} = E_{0} e^{ -\kappa z } \cos(kz-\omega t+\delta_{E})
$$
$$
\vec{B} = B_{0} e^{ -\kappa z } \cos(kz-\omega t + \delta_{E} + \phi)
$$
Square
$$
\left< E^{2} \right> = E_{0}^{2} e^{ -2\kappa z } \left( \frac{1}{2} \right)
$$
$$
\left< B^{2} \right> = B_{0}^{2}e^{ -2\kappa z } \left( \frac{1}{2} \right)
$$
Substitute,
$$
\left< u \right> = \frac{1}{4} \left( \epsilon E_{0}^{2}e^{ -2\kappa z } + \frac{1}{\mu} \frac{K^{2}}{\omega^{2}}E_{0}^{2} e^{ -2\kappa z } \right) = \frac{1}{4} \left( \epsilon  + \frac{1}{\mu} \frac{K^{2}}{\omega^{2}} \right) E_{0}^{2}e^{ -2\kappa z }
$$
$$
\epsilon + \frac{1}{\mu} \frac{K^{2}}{\omega^{2}} = \epsilon + \frac{1}{\mu \omega^{2}} \left( \omega^{2}\epsilon \mu \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} } \right) = \epsilon + \epsilon \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} }
$$
$$
\frac{\epsilon}{4} \left( 1+\sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} } \right)E_{0}^{2} e^{ -2\kappa z }
$$
Definition of $k$
$$
k^{2} = \omega^{2} \frac{\epsilon \mu}{2} \left( \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} }+1 \right) \implies \left( \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} }+1 \right) = \frac{2}{\epsilon \mu} \frac{k^{2}}{\omega^{2}}
$$
Then,
$$
\frac{\epsilon}{4} \left( \frac{2}{\epsilon \mu} \frac{k^{2}}{\omega^{2}} \right) E_{0}^{2} e^{ -2\kappa z } = \frac{k^{2}}{2\mu \omega^{2}} E_{0}^{2} e^{ -2\kappa z }
$$
As needed.

---
b.
The intensity is,
$$
I = \left< S \right> = \frac{1}{\mu} \left< \vec{E}\times \vec{B} \right>
$$
$$
\vec{E}\times \vec{B} = E_{0}B_{0} e^{ -2\kappa z } \cos(kz-\omega t+\delta_{E}) \cos(kz-\omega t+\delta_{E} + \phi) \hat{z}
$$
Define $\eta=kz-\omega t+\delta_{E}$, then,
$$
\cos(kz-\omega t+\delta_{E}) \cos(kz-\omega t+\delta_{E}+\phi) = \cos \eta \cos(\eta+\phi)
$$
Apply trigonometric identities:
$$
\cos \eta \cos(\eta+\phi) = \cos ^{2}\eta \cos \phi - \cos \eta \sin \eta \sin \phi
$$
The time averaged value of this is:
$$
\left< \cos ^{2}\eta \right>  \cos \phi - \left< \cos \eta \sin \eta \right> \sin \phi = \frac{1}{2} \cos \phi - 0\sin \phi = \frac{\cos \phi}{2}
$$
Therefore,
$$
\left< \vec{E}\times \vec{B} \right> = E_{0}B_{0} e^{ -2\kappa z } \left( \frac{\cos \phi}{2} \right)= \frac{K}{2\omega}\cos \phi E_{0}^{2} e^{ -2\kappa z }
$$
From the definition of $\tilde{k}$:
$$
\begin{align}
\tilde{k} & = k+i\kappa \\
\tilde{k} & = Ke^{ i\phi }
\end{align}
$$
Use Euler's identity,
$$
k+i\kappa = K\cos \phi + iK\sin \phi \implies k = K\cos \phi
$$
Hence,
$$
I = \left< S \right> = \frac{1}{\mu} \frac{K}{2\omega} \cos \phi E_{0}^{2} e^{ -2\kappa z } = \frac{k}{2\mu \omega} E_{0}^{2} e^{ -2\kappa z }
$$
