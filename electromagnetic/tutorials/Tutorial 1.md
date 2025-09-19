Textbook questions.
### Question 2.50
A sphere of radius $R$ carries a charge density $\rho(r)$. Find the energy of the configuration.

The charge density is $\rho(r)=kr$ where $k>0$. So the charge density increases as we travel further out.

We have two equations for the energy of a distribution,
$$
W = \frac{\epsilon_{0}}{2} \int E^{2} \, d\tau  = \frac{1}{2} \int \rho V \, d\tau
$$
We will use Gauss' law to solve for the electric field,
$$
\oint E \cdot da = \frac{Q_\text{enc}}{\epsilon_{0}}
$$
If we choose a Gaussian sphere around our charged sphere, then we can use symmetries to claim,
$$
\oint E \cdot da = E 4\pi r^{2}
$$
And now we need only to find the enclosed charge,
$$
\int \rho \, d\tau = \int(kr) r^{2} \sin \theta \cos \phi \, dr d\theta d\phi
$$
Solve for the two cases $r>R$ and $r<R$. The solutions are,
$$
\pi kr^{4} \qquad \pi kR^{4}
$$
Substituting this back into the Gauss' law we get the two cases,
$$
E = \frac{k}{4\pi\epsilon_{0}} r^{2} \hat{r} \qquad E = \frac{k}{4\pi\epsilon_{0}} \frac{R^{4}}{r^{2}} \hat{r}
$$
To find the total, energy, we need to take the integral from 0 to $\infty$. Conveniently, from our solution of the electric field, we can split this integral nicely.
- The problem is effectively just a bunch of computations from here. I didn't get the write down the integral, but it's solved.

---

Now lets try it with the other equation. The one with $\rho V$. We already know $\rho$, because it is given. So we need to solve for $V$.
$$
V(r) = - \int_{\infty}^{r} E\cdot dl =- \int_{\infty}^{R} \frac{kR^{4}}{4\epsilon_{0}r^{2}} \, dr - \int_{R}^{r} \frac{kr^{2}}{4\epsilon_{0}} \, dr
$$
Which has the solution
$$
\frac{k}{3\epsilon_{0}} \left( R^{3} - \frac{r^{3}}{4} \right)
$$
Now, plug this back into the energy equation, and solve the integral
$$
W = \frac{1}{2} \int_{0}^{R} (kr) \left[ \frac{k}{3\epsilon_{0}}\left( R^{3} - \frac{r^{3}}{4} \right) \right]  \, d\tau
$$
Which has the solution,
$$
\frac{\pi k^{2}R^{7}}{7\epsilon_{0}}
$$
### Question 5.18
A large parallel plate capacitor with uniform surface charge $\sigma$ on the upper plate and $-\sigma$ on the lower plate. They are moving with a constant speed $V$.

We are interested in solving for the magnetic fields from these two plates.

Use Ampere's law to solve for the magnetic field from one plate.
$$
\nabla \times \vec{B} = \mu_{0} \vec{J} \implies \oint \vec{B}\cdot d\vec{l} = \int \mu_{0} \vec{J} \, da
$$
Choose a small rectangular loop going through the plates. The total contribution of the magnetic field will just be from the two portions of the loop that are parallel to the magnetic field.
$$
\oint \vec{B}\cdot d\vec{l} = \vec{B}(2l)
$$
$$
\mu_{0} \int \vec{J} \, da = \mu_{0}Kl
$$
Therefore,
$$
\vec{B}(2l) = \mu_{9}Kl \implies \vec{B} = \frac{\mu_{0}K}{2}
$$
Where $K=\sigma v$ because it is the surface current, not surface charge. This does not depend on distance. I conclude that the magnetic field has magnitude $\mu_{0}K$ between the two plates, and it is zero everywhere else.

---

Find the force per unit area on the upper plate. Include its direction.

Use the Lorentz force law
$$
\vec{F} = q(\vec{E} + \vec{v}\times \vec{B})
$$
Since the velocity of the plate and the magnetic field are perpendicular, we have,
$$
\vec{v}\times \vec{B} = vB = v \frac{\mu_{0}K}{2}= \frac{\mu_{0}\sigma v^{2}}{2}
$$
Solve for the electric field from one charged plate. Use Gauss's law again.
$$
\oint \vec{E}\cdot d\vec{a} = \frac{\rho}{\epsilon_{0}} \implies E(2l^{2}) = \frac{\sigma l^{2}}{\epsilon_{0}}
$$
Where I have chosen a square as the Gaussian surface.
$$
E = \frac{\sigma l^{2}}{\epsilon_{0}} \frac{1}{2l^{2}} = \frac{\sigma}{2\epsilon_{0}}
$$
If you use the right hand rule, you will notice that the force from the electric and magnetic fields will be in the opposite directions. Substituting this back into the Lorentz force law,
$$
\vec{F} = q(\vec{E} + \vec{v}\times \vec{B}) = \sigma \left( \frac{\sigma}{2\epsilon_{0}} - \frac{\mu_{0}\sigma v^{2}}{2} \right)= \frac{\sigma^{2}}{2\epsilon_{0}} - \frac{\mu_{0}\sigma^{2}v^{2}}{2}
$$
We are interested in seeing at what velocity this will balanced.
$$
\frac{\sigma^{2}}{2\epsilon_{0}} = \frac{\mu_{0}\sigma^{2}v^{2}}{2} \implies \frac{1}{\epsilon_{0}} = \mu_{0}v^{2} \implies v = \frac{1}{\sqrt{ \mu_{0}\epsilon_{0} }}
$$
Which is the speed of light.