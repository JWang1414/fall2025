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