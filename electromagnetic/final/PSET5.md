![[Pasted image 20251203170819.png]]
a.
The flux rule for emf says,
$$
\mathcal{E} = - \frac{d\phi}{dt}
$$
Solve for the flux,
$$
\phi = \pi r^{2}(\alpha t) \implies -\frac{d}{dt} \phi = - \alpha \pi r^{2}
$$
So,
$$
\mathcal{E} = -\alpha \pi r^{2}
$$
And the current running through the circuit is,
$$
\mathcal{E} = IR \implies I = \frac{\mathcal{E}}{R} = - \frac{\alpha \pi r^{2}}{R}
$$

---
b.
They way you're supposed to solve this is to determine the electric field with Faraday's law, and then compute the potential from there.

Faraday's law,
$$
\oint \vec{E}\cdot d\vec{l} = -\frac{d\phi}{dt}
$$
$$
\oint \vec{E}\cdot d\vec{l} = 2\pi s E
$$
$$
2\pi sE = -\alpha \pi s^{2} \implies \vec{E} = - \frac{\alpha \pi s^{2}}{2\pi s} \hat{\phi} = -\frac{\alpha}{2}s\hat{\phi}
$$
Swap to Cartesian coordinates,
$$
-\frac{\alpha}{2}s \hat{\phi} = -\frac{\alpha s}{2} (-\sin \phi \hat{x} + \cos \phi \hat{y})
$$
$$
\frac{\alpha}{2} (s \sin \phi \hat{x} - s \cos \phi \hat{y}) = \frac{\alpha}{2} (y\hat{x} - x\hat{y})
$$
Now parameterize the line from $P$ to $Q$
$$
dl=dx \hat{x} \qquad y = \frac{r}{\sqrt{ 2 }}
$$
In the Cartesian plane, this arises because the line from $P$ to $Q$ is horizontal, and $y$ stays constant at $r /\sqrt{ 2 }$.
$$
V = - \int \vec{E}\cdot d\vec{l} = - \frac{\alpha}{2} \int y \, dx = -\frac{\alpha}{2} \left( \frac{r}{\sqrt{ 2 }} \right) \int dx
$$
$$
= -\frac{\alpha}{2} \left( \frac{r}{\sqrt{ 2 }} \right) (r\sqrt{ 2 }) = -\frac{\alpha r^{2}}{2}
$$
![[Pasted image 20251203194312.png]]
![[Pasted image 20251203194334.png]]
a.
Oh my god I was right

The electric field between the two is,
$$
\vec{E} = \frac{\sigma}{\epsilon_{0}} \hat{z} = \frac{Q}{\pi a^{2}\epsilon_{0}}
$$
The charge build up from the current is,
$$
Q = It \implies \vec{E} = \frac{It}{\pi a^{2}\epsilon_{0}}\hat{z}C
$$
Use Ampere's law with the displacement current to find the magnetic field,
$$
\oint \vec{B}\cdot d\vec{l} = \mu_{0}I_\text{enc} + \mu_{0}\epsilon_{0} \int \frac{ \partial \vec{E} }{ \partial t } \cdot d\vec{a}
$$
There is no enclosed current. Solve this integral,
$$
\int \frac{ \partial \vec{E} }{ \partial t } \cdot d\vec{a} = \frac{I}{\pi\epsilon_{0}a^{2}} (\pi s^{2}) = \frac{Is^{2}}{\epsilon_{0}a^{2}}
$$
So,
$$
\oint \vec{B}\cdot d\vec{l} = 2\pi sB =\mu_{0}\epsilon_{0} \frac{Is^{2}}{a^{2}\epsilon_{0}}
$$
$$
\vec{B} = \frac{\mu_{0}I}{2\pi a^{2}}s \hat{\phi}
$$
---
b.
Solve for energy density.
$$
u = \frac{1}{2} \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}} B^{2} \right)
$$
$$
E^{2} = \left( \frac{It}{\pi a^{2}\epsilon_{0}} \right)^{2} \qquad B^{2} = \left( \frac{\mu_{0}I}{2\pi a^{2}}s \right)^{2}
$$
$$
u = \frac{1}{2} \left( \frac{(It)^{2}}{\pi^{2}a^{4}\epsilon_{0}} + \frac{\mu_{0}I^{2}}{4\pi^{2}a^{4}}s^{2} \right) = \frac{1}{2} \left( \frac{I}{\pi a^{2}} \right)^{2} \left( \frac{t^{2}}{\epsilon_{0}} + \frac{\mu_{0}s^{2}}{4} \right)
$$
Solve for Poynting vector.
$$
\vec{S} \equiv \frac{1}{\mu_{0}} (\vec{E}\times \vec{B})
$$
$$
\frac{1}{\mu_{0}}\left( \frac{It}{\pi a^{2}\epsilon_{0}}\hat{z} \times \frac{\mu_{0}I}{2\pi a^{2}}s \hat{\phi} \right) = \frac{I^{2}st}{2\pi^{2}a^{4}\epsilon_{0}} \hat{z}\times \hat{\phi} = - \frac{I^{2}st}{2\pi^{2}a^{4}\epsilon_{0}}\hat{s}
$$
Check this,
$$
\frac{ \partial u }{ \partial t } = -\nabla \cdot \vec{S}
$$
For reference,
$$
\frac{1}{s} \frac{ \partial (sA_{s}) }{ \partial s }
$$
$$
-\nabla \cdot \vec{S} = \frac{I^{2}t}{2\pi^{2}a^{4}\epsilon_{0}} \frac{1}{s} \frac{ \partial s^{2} }{ \partial s } = \frac{I^{2}t}{\pi^{2}a^{4}\epsilon_{0}}
$$
$$
\frac{ \partial u }{ \partial t } = \frac{I^{2}}{2\pi^{2}a^{4}\epsilon_{0}} \frac{d}{dt}t^{2} = \frac{I^{2}t}{\pi^{2}a^{4}\epsilon_{0}}
$$
Confirmed.

---
c.
$$
\int \vec{S}\cdot d\vec{a} = - \frac{I^{2}bt}{2\pi^{2}a^{4}\epsilon_{0}} (2\pi bw) = - \frac{I^{2}wb^{2}t}{\pi a^{4}\epsilon_{0}}
$$
Now you can find the total with $b=a$
$$
P_\text{in} = \frac{I^{2}wa^{2}t}{\pi a^{4}\epsilon_{0}} = \frac{I^{2}wt}{\pi a^{2}\epsilon_{0}}
$$
