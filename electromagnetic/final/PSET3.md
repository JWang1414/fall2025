![[Pasted image 20251203150129.png]]
![[Pasted image 20251203150228.png]]
The electric field of this dipole is,
$$
\vec{E}_\text{dip} (r, \theta) = \frac{p}{4\pi\epsilon_{0}r^{3}} (2\cos\theta \hat{r} + \sin\theta \hat{\theta})
$$
The force on an electric charge is,
$$
\vec{F} = q\vec{E} = \frac{qp}{4\pi\epsilon_{0}r^{3}} (2\cos\theta \hat{r} + \sin\theta \hat{\theta})
$$
The force as a function of position makes it intuitively clear that it would travel in an arc like a pendulum. The $\theta$ force is maximized at the two ends when the pendulum is highest, and the force in the $r$ direction is balance to stop the charge from running off.

Definition of force,
$$
\vec{F} = m \frac{d^{2}\vec{r}}{dt^{2}} = \frac{d^{2}r}{dt^{2}}\hat{r} + \frac{d^{2}\theta}{dt^{2}} \hat{\theta} + \frac{d^{2}\phi}{dt^{2}} \hat{\phi}
$$
In the $\hat{\theta}$ direction we have,
$$
\frac{d^{2}\theta}{dt^{2}} \propto \sin\theta \implies \frac{d^{2}\theta}{dt^{2}} - k \sin\theta =0
$$
---
The way you're supposed to solve this problem is by modelling the classical pendulum,
$$
\vec{F} = -mg\hat{z} - T \hat{r}
$$
Balancing the forces with the centripetal force,
$$
T - mg\cos \phi = \frac{mv^{2}}{l}
$$
Where $l$ is the length of the pendulum, and $\phi$ is the angle from the horizontal. And, from conservation of energy,
$$
mgl\cos \phi = \frac{1}{2} mv^{2} \implies v^{2} = 2gl \cos \phi
$$
Recall that,
$$
\hat{z} = \cos\theta \hat{r} - \sin\theta \hat{\theta}
$$
Using these two equations, it is possible to rewrite the model of the classical pendulum as,
$$
\vec{F} = mg(2\cos\theta \hat{r} + \sin\theta \hat{\theta})
$$
Which is proportional to the force from $\vec{E}_\text{dip}$. So the movement is in the shape of a pendulum
- This makes perfect sense, but I could not possibly see myself coming up with this solution during a final exam
![[Pasted image 20251205210820.png]]
Use Gauss' law
$$
\oint \vec{E}\cdot d\vec{a} = \frac{Q_\text{enc}}{\epsilon_{0}}
$$
$$
\oint \vec{E}\cdot d\vec{a} = 4\pi r^{2} E
$$
$$
Q_\text{enc} = \frac{q}{\pi a^{3}} (4\pi) \int_{0}^{r} r^{2} e^{ -2r/a } \, dr = \frac{4q}{a^{3}} \left[ \frac{1}{4} a (a^{2}-e^{ -2r/a } (a^{2}+2ar+2r^{2})) \right]
$$
$$
Q = \frac{q}{a^{2}} (a^{2} - e^{ -2r/a } (a^{2}+2ar + 2r^{2})) = q - \frac{qe^{ -2r/a }}{a^{2}} (a^{2}+2ar+2r^{2})
$$
Field is therefore,
$$
\vec{E} = \frac{q}{4\pi \epsilon_{0} r^{2}} \left( 1 - \frac{e^{ -2r/a }}{a^{2}} (a^{2}+2ar+2r^{2}) \right)
$$
Expand out the exponential as a Taylor series and the first non-zero term will be,
$$
E = \frac{q}{4\pi\epsilon_{0}d^{2}} \left( \frac{4}{3} \frac{d^{3}}{a^{3}} \right)= \frac{1}{3\pi\epsilon_{0}a^{3}} qd \implies \alpha = 3\pi \epsilon_{0} a^{3}
$$
