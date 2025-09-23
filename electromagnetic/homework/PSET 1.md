### Problem 2.53
---
a.
According to the textbook, the electric field from a uniformly charged wire with infinite length is,
$$
\vec{E}(\vec{r}) = \frac{\lambda}{2\pi\epsilon_{0}} \frac{1}{r} \hat{r}
$$
From the definition of electric potential, the potential from this same charge distribution is,
$$
\begin{align}
V(r) & = - \int_{\mathcal{O}}^{r} \vec{E} \cdot d\vec{l} = -\frac{\lambda}{2\pi\epsilon_{0}} \int_{\mathcal{O}}^{r} \frac{1}{r'} \, dr' \\
 & = -\frac{\lambda}{2\pi\epsilon_{0}} \left[ \ln r' \right] ^{r}_{\mathcal{O}} = - \frac{\lambda}{2\pi\epsilon_{0}} \ln\left( \frac{r}{\mathcal{O}} \right)
\end{align}
$$
Choose reference point $\mathcal{O}=1$ and,
$$
V(r) = - \frac{\lambda}{2\pi\epsilon_{0}} \ln r = \frac{\lambda}{2\pi\epsilon_{0}} \ln\left( \frac{1}{r} \right)
$$
The distance to each wire is,
$$
r_{+}= \sqrt{ (y-a)^{2} + z^{2} } \qquad r_{-} = \sqrt{ (y+a)^{2}+z^{2} }
$$
Where the subscripts indicate the wires with charge $+\lambda$ and $-\lambda$ respectively. The total field is the sum:
$$
V(r) = \frac{\lambda}{2\pi\epsilon_{0}} \left[ \ln\left( \frac{1}{r_{+}} \right)- \ln\left( \frac{1}{r_{-}} \right) \right] = \frac{\lambda}{2\pi\epsilon_{0}} \ln\left( \frac{r_{-}}{r_{+}} \right)
$$
Expanding this out,
$$
V(r) = \frac{\lambda}{2\pi\epsilon_{0}} \ln \left[ \frac{\sqrt{ (y+a)^{2}+z^{2} }}{\sqrt{ (y-a)^{2}+z^{2} }} \right]
$$
---
b.
For some equipotential surfaces corresponding to a given potential $V_{0}$,
$$
V_{0} = \frac{\lambda}{2\pi\epsilon_{0}} \ln \left[ \frac{\sqrt{ (y+a)^{2}+z^{2} }}{\sqrt{ (y-a)^{2}+z^{2} }} \right]
$$
This can be re-arranged into,
$$
e^{ 4\pi\epsilon_{0}V_{0}/\lambda } = \frac{(y+a)^{2}+z^{2}}{(y-a)^{2}+z^{2}} = \frac{4ay}{(y-a)^{2}+z^{2}}+1
$$
Define a new quantity $\xi=e^{ 4\pi\epsilon_{0}V_{0}/\lambda }-1$, which is constant. Expanding this equation,
$$
4ay = \xi \left[ (y-a)^{2}+z^{2} \right] = \xi(a^{2}-2ay+y^{2}+z^{2})
$$
Moving all terms to one side,
$$
\xi a^{2} - 2\xi ay + \xi y^{2} + \xi z^{2} - 4ay = (\xi z^{2}) + (\xi y^{2} - 2\xi ay - 4ay) + (\xi a^{2}) =0
$$
Where I have suggestively grouped together some parts of this expression. With the intention of achieving a formula similar to the typical cylinder formula, I intend to complete the square of the parts in terms of $y$.
$$
\xi y^{2} - 2\xi ay - 4ay = \xi y^{2} - (2\xi a + 4a)y = \xi  \left[ y^{2} - \frac{2a}{\xi }(\xi  + 2)y \right]
$$
Now, complete the square,
$$
\begin{align}
 & = \xi  \left[ y^{2} - \frac{2a}{\xi }(\xi  + 2)y + a^{2}\left( 1+\frac{2}{\xi} \right)^{2} - a^{2}\left( 1+\frac{2}{\xi} \right)^{2} \right] \\
 & = \xi \left[ \left( y - a \left( 1+\frac{2}{\xi} \right) \right)^{2} - a^{2}\left( 1+\frac{2}{\xi} \right)^{2} \right]  \\
 & = \xi \left( y - a \left( 1+\frac{2}{\xi} \right) \right)^{2} - \frac{a^{2}}{\xi} \left( 1+\frac{2}{\xi} \right)^{2}
\end{align}
$$
Substitute this back into the equation,
$$
\xi z^{2} + \xi \left( y - a \left( 1+\frac{2}{\xi} \right) \right)^{2} - \frac{a^{2}}{\xi} \left( 1+\frac{2}{\xi} \right)^{2} + \xi a^{2} =0
$$
Divide everything by $\xi$,
$$
z^{2} + \left( y-a\left( 1+\frac{2}{\xi} \right) \right)^{2} - \frac{a^{2}}{\xi^{2}}\left( 1+\frac{2}{\xi} \right)^{2} + a^{2} =0
$$
Move the constant terms to the right-hand side,
$$
z^{2} + \left( y-a\left( 1+\frac{2}{\xi} \right) \right)^{2} = \frac{a^{2}}{\xi^{2}} \left( 1+\frac{2}{\xi} \right)^{2} - a^{2}
$$
Now, the formula for some arbitrary cylinder is,
$$
(y-a')^{2} + (z-b')^{2} = r^{2}
$$
Where $a'$ and $b'$ are two constants shifting the axis of the cylinder, and $r$ is the radius of the cylinder. By inspection, the axis of the cylinder (which stretches infinitely in the $x$ direction) is located at,
$$
(y_{0}, z_{0}) = \left( a\left( 1+\frac{2}{\xi} \right), 0 \right)
$$
It has radius,
$$
r = \sqrt{ \frac{a^{2}}{\xi^{2}} \left( 1+\frac{2}{\xi} \right)^{2} - a^{2} }
$$
### Problem 2.55
---
a.
The electric field from the single charge $Q$ is,
$$
\vec{F} = q\vec{E} \implies \vec{E} = \frac{1}{4\pi\epsilon_{0}} \frac{Q}{r^{2}} \left( 1+\frac{r}{\lambda} \right) e^{ -r/\lambda } \hat{r}
$$
Replacing $Q$ with an integral, the electric field for a continuous distribution of charges is:
$$
\vec{E} = \frac{1}{4\pi\epsilon_{0}} \int \frac{e^{ -r/\lambda }}{r^{2}}\left( 1+\frac{r}{\lambda} \right) \hat{r} \, dq
$$
For a volume charge, $dq\to \rho \, d\tau$.
$$
\vec{E} = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho(\vec{r}')}{r^{2}}\left( 1+\frac{r}{\lambda} \right)e^{ -r/\lambda }\hat{r} \, d\tau' 
$$
---
b.
The corrective term is exclusively in terms of radius, or distance. Because it has no dependence on radial components, the new electric field is unlikely to have developed any curl. A theorem states that any vector whose curl is zero is equal to the gradient of some scalar. I conclude this field admits a scalar potential.

---
c.
Using $\mathcal{O}\to \infty$, I will compute the potential using the definition.
$$
\begin{align}
V(r) & =- \int_{\mathcal{O}}^{\vec{r}} \vec{E} \cdot d\vec{l} =-\frac{1}{4\pi\epsilon_{0}} \int_{\infty}^{r} \frac{q}{r'^{2}}\left( 1+\frac{r'}{\lambda} \right) e^{ -r'/\lambda } \, dr' \\
 & = -\frac{q}{4\pi\epsilon_{0}} \int_{\infty}^{r} \left( \frac{1}{r'^{2}} + \frac{1}{\lambda r'} \right)e^{ -r'/\lambda } \, dr'  \\
\end{align}
$$
By linearity, this integral is,
$$
\int \left( \frac{1}{r^{2}} + \frac{1}{\lambda r} \right)e^{ -r/\lambda } \, dr = \int \frac{e^{ -r/\lambda }}{r^{2}} \, dr + \frac{1}{\lambda} \int \frac{e^{ -r/\lambda }}{r} \, dr
$$
Apply integration by parts to the first integral,
$$
\int \frac{e^{ -r/\lambda }}{r^{2}} \, dr = - \frac{e^{ -r/\lambda }}{r}- \frac{1}{\lambda} \int \frac{e^{ -r/\lambda }}{r} \, dr
$$
Therefore,
$$
\int \left( \frac{1}{r^{2}} + \frac{1}{\lambda r} \right) e^{ -r/\lambda } \, dr = - \frac{e^{ -r/\lambda }}{r}- \frac{1}{\lambda} \int \frac{e^{ -r/\lambda }}{r} \, dr + \frac{1}{\lambda} \int \frac{e^{ -r/\lambda }}{r} \, dr = -\frac{e^{ -r/\lambda }}{r}
$$
This integral vanishes at $\infty$. Substituting it back into the computation,
$$
V(r) = -\frac{q}{4\pi\epsilon_{0}} \left[ -\frac{e^{ -r/\lambda }}{r} \right] = \frac{1}{4\pi\epsilon_{0}} \frac{q}{r} e^{ -r/\lambda }
$$
---
d.
Using a "Gaussian sphere", the electric field about this point is,
$$
\oint_{S} \vec{E}\cdot d\vec{a} = (4\pi r^{2}) \vec{E} = \frac{q}{\epsilon_{0}} \left( 1+\frac{r}{\lambda} \right) e^{ -r/\lambda }
$$
The electric potential is,
$$
\int _{\mathcal{V}} V \, d\tau = \frac{q}{4\pi\epsilon_{0}} \int_{0}^{r} \int_{0}^{\pi} \int_{0}^{2\pi} \frac{e^{ -r'/\lambda }}{r'} (r'^{2} \sin \theta) \, d\phi  \, d\theta  \, dr' = \frac{q}{\epsilon_{0}} \int_{0}^{r} r'e^{ -r'/\lambda } \, dr'
$$
Using the substitution $u=-r /\lambda$, this integral becomes,
$$
\int re^{ -r/\lambda } \, dr = \lambda^{2} \int ue^{ u } \, du
$$
Apply integration by parts,
$$
\int ue^{ u } \, du = ue^{ u } - \int e^{ u } \, du = ue^{ u } - e^{ u }
$$
Substituting variables back in,
$$
\lambda^{2} \int ue^{ u } \, du = \lambda^{2} (ue^{ u } - e^{ u })= -\lambda re^{ -r/\lambda } - \lambda^{2} e^{ -r/\lambda }
$$
Simplifying this result,
$$
\int re^{ -r/\lambda } \, dr = -\lambda (r+\lambda) e^{ -r/\lambda }
$$
Substitute back into the original equation,
$$
\begin{align}
\frac{q}{\epsilon_{0}} \int_{0}^{r} r'e^{ -r'/\lambda } \, dr' & = -\frac{q\lambda}{\epsilon_{0}} \left[ (r'+\lambda)e^{ -r'/\lambda } \right] ^{r}_{0} \\
 & = -\frac{q\lambda}{\epsilon_{0}} \left[ (r+\lambda)e^{ -r/\lambda } - \lambda \right]
\end{align}
$$
Distributing the $-\lambda$ term, the electric potential is,
$$
\int _{\mathcal{V}} V \, d\tau = \frac{q}{\epsilon_{0}} \left[ \lambda^{2} - (\lambda^{2} + r\lambda) e^{ -r/\lambda } \right]
$$
Hence, the full expression is,
$$
\oint_{S} \vec{E}\cdot d\vec{a} + \frac{1}{\lambda^{2}} \int _{\mathcal{V}} V \, d\tau = \frac{q}{\epsilon_{0}} \left( 1+\frac{r}{\lambda} \right) e^{ -r/\lambda } + \frac{1}{\lambda^{2}} \left( \frac{q}{\epsilon_{0}} \left[ \lambda^{2} - (\lambda^{2} + r\lambda) e^{ -r/\lambda } \right] \right)
$$
$$
\frac{q}{\epsilon_{0}} \left( 1+\frac{r}{\lambda} \right) e^{ -r/\lambda } + \frac{q}{\epsilon_{0}} \left[ 1 - \left( 1 + \frac{r}{\lambda} \right) e^{ -r/\lambda } \right]
$$
$$
\frac{q}{\epsilon_{0}} \left( 1+\frac{r}{\lambda} \right) e^{ -r/\lambda } + \frac{q}{\epsilon_{0}} - \frac{q}{\epsilon_{0}}\left( 1 + \frac{r}{\lambda} \right) e^{ -r/\lambda } = \frac{q}{\epsilon_{0}}
$$
As needed.

---
e.
For $n$ number of charges contained within a surface,
$$
\sum_{i=1}^{n} \left[ \oint_{S} \vec{E}_{i}\cdot d\vec{a} + \frac{1}{\lambda^{2}} \int _{\mathcal{V}} V_{i} \, d\tau  \right] = \sum_{i=1}^{n} \frac{q_{i}}{\epsilon_{0}}
$$
By linearity,
$$
\oint_{S} \sum_{i=1}^{n} \vec{E}_{i}\cdot d\vec{a} + \frac{1}{\lambda^{2}} \int _{\mathcal{V}} \sum_{i=1}^{n} V_{i} \, d\tau = \frac{1}{\epsilon_{0}} \sum_{i=1}^{n} q_{i}
$$
Each of these summations are equivalent to the total electric field, potential, and charge enclosed within the surface, respectively.
$$
\vec{E} = \sum_{i=1}^{n} \vec{E}_{i} \qquad V = \sum_{i=1}^{n} V_{i} \qquad Q_\text{enc} = \sum_{i=1}^{n} q_{i}
$$
Therefore,
$$
\oint_{S} \vec{E} \cdot d\vec{a} + \frac{1}{\lambda^{2}} \int _{\mathcal{V}} V \, d\tau = \frac{Q_\text{enc}}{\epsilon_{0}}
$$
---
f.
Here is the one in the textbook for reference
![[Pasted image 20250921140908.png]]

- The bottom line doesn't change
- Curl of $\vec{E}$ is still 0
- $\rho\to \vec{E}$ is given
- $\rho\to V$ should be very similar to the given equation

Find the differential form for Gauss' law,
$$
\oint_{S} \vec{E}\cdot d\vec{a} = \int _{\mathcal{V}} (\nabla \cdot \vec{E}) \, d\tau
$$
Therefore,
$$
\int _{\mathcal{V}} (\nabla \cdot \vec{E}) \, d\tau  + \frac{1}{\lambda^{2}} \int _{\mathcal{V}} V \, d\tau = \frac{1}{\epsilon_{0}} \int _{\mathcal{V}} \rho \, d\tau
$$
The volume $\mathcal{V}$ here is the same for every single integral,
$$
\int _{\mathcal{V}} (\nabla \cdot \vec{E}) + \frac{V}{\lambda^{2}} \, d\tau = \frac{1}{\epsilon_{0}} \int _{\mathcal{V}} \rho \, d\tau
$$
Differential equation,
$$
\vec{\nabla}\cdot \vec{E} + \frac{V}{\lambda^{2}} = \frac{\rho}{\epsilon_{0}} \implies \vec{\nabla} \cdot \vec{E} = \frac{\rho}{\epsilon_{0}} - \frac{V}{\lambda^{2}}
$$
For the Laplacian of $V$,
$$
\nabla^{2}V = \nabla \cdot \nabla V= - \nabla \cdot \vec{E} = \frac{V}{\lambda^{2}} - \frac{\rho}{\epsilon_{0}}
$$
Which is equivalent to,
$$
\left( \nabla^{2} - \frac{1}{\lambda^{2}} \right)V =-\frac{\rho}{\epsilon_{0}}
$$
The last equation, $\rho\to V$ is,
$$
V = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho}{r} e^{ -r/\lambda } \, d\tau
$$
- Should be all the equations I need. Just have to write this down on a piece of paper.
---
g.
Since $\vec{E}=0$, I can largely apply the same logic used in existing electrostatics. by Gauss' law,
$$
\vec{\nabla} \cdot \vec{E} + \frac{V}{\lambda^{2}} = \vec{\nabla}\cdot \vec{E} - \frac{1}{\lambda^{2}} \int \vec{E}\cdot d\vec{l} =0= \frac{\rho}{\epsilon_{0}}
$$
Therefore, the inside of a conductor is an equipotential, with constant charge density. The net charge must therefore reside on the surface of the conductor.