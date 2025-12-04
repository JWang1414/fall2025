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
