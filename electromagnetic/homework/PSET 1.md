### Problem 2.53
The electric field of a finite line segment of length $2L$ is with a uniform line charge as:
$$
\vec{E} = \frac{1}{4\pi\varepsilon_{0}} \frac{2\lambda L}{z\sqrt{ z^{2}+L^{2} }}\hat{z}
$$
I have taken this from the textbook. The electric potential is defined to be,
$$
V(\vec{r}) = - \int_{\mathcal{O}}^{\vec{r}} \vec{E}\cdot d\vec{l}
$$
Rough work ---

$$
V(\vec{r}) = - \frac{1}{4\pi\epsilon_{0}} 2\lambda L \int_{\mathcal{O}}^{\vec{r}} \frac{1}{z\sqrt{ z^{2}+L^{2} }} \, dz
$$
- The steps for this integral are surprisingly intuitive after the first step. I'll write them down later, but the result of this integral is,
$$
\int \frac{1}{z\sqrt{ z^{2}+L^{2} }} \, dz = \frac{1}{2L} \left[ \ln \left| \sqrt{ z^{2}+L^{2} }-L \right| - \ln \left| \sqrt{ z^{2}+L^{2} } +L \right|  \right]
$$
Which can also be simplified into,
$$
\frac{1}{2L} \ln \left( \frac{\left| \sqrt{ z^{2}+L^{2} } -L \right| }{ \left| \sqrt{ z^{2}+L^{2} }+L \right|  } \right)
$$
Perform the approximation done here: <https://www.miniphysics.com/uy1-electric-potential-of-an-infinite-line-charge.html>
- I'm getting conflicting answers from this source <https://physics.stackexchange.com/questions/348692/electric-potential-of-uniformly-charged-wire>

For an infinite line of charge, the potential should be,
$$
V(\vec{r}) \approx \frac{\lambda}{2\pi\epsilon_{0}} \ln\left( \frac{2L}{|\vec{r}|} \right)
$$
Because the wires stretch infinitely in the $x$ dimension, the closest point the distance $\vec{r}$ will always be measured from for both wires is purely in the $y$ and $z$ dimensions. This length will be the difference in $y$ followed by the difference in $z$.

The magnitude from each wire is,
$$
\vec{r}_{+} = \sqrt{ (y-a)^{2} + z^{2} } \qquad \vec{r}_{-} = \sqrt{ (y+a)^{2}+z^{2} }
$$
Where the subscripts indicate the wires with charge $+\lambda$ and $-\lambda$ respectively


$$
1-4ay = C \left[ (a+y)^{2}+z^{2} \right] = C(a^{2}+2ay+y^{2}+z^{2})= Ca^{2} + 2Cay + Cy^{2} + Cz^{2}
$$
$$
Cz^{2} + Cy^{2} + 2Cay + 4ay + Ca^{2} - 1 =0
$$
Complete the square,
$$
Cy^{2} + 2Cay + 4ay = Cy^{2} + (2Ca + 4a)y = C \left[ y^{2} + \frac{2}{C}(Ca + 2a)y \right]
$$
$$
C \left[ y^{2} + 2\left( a + \frac{2a}{C} \right)y + \left( a+\frac{2a}{C} \right)^{2} - \left( a+\frac{2a}{C} \right)^{2} \right]
$$
$$
C \left[ \left( y + \left( a+\frac{2a}{C} \right) \right)^{2} - \left( a+\frac{2a}{C} \right)^{2} \right]
$$
$$
C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} - a^{2} (C+2)
$$
Substitute back in,
$$
Cz^{2} + C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} - a^{2}(C+2) + Ca^{2}-1 =0
$$
Re-arrange,
$$
Cz^{2} + C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} = a^{2}(C+2) - Ca^{2} - 1 = 2a^{2}-1
$$
$$
z^{2} + \left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} = \frac{2a^{2}-1}{C}
$$
The formula for an arbitrary cylinder is,
$$
(y-a)^{2} + (z-b)^{2} = r^{2}
$$
From here it's trivial to see the axis and radius of the cylinder. Note that I have used $C$ to represent some arbitrary constant, it will actually be something dependent on $V_{0}$. Interestingly (something that can also be seen from graphing) is that the axis of the cylinder also depends on $V_{0}$, not just the radius.
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