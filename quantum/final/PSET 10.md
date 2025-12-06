# Question 1
In the dipole approximation
$$
V = eE_{0}z
$$
And we have,
$$
V_{if} = \bra{\psi_{i}}  eE_{0}z \ket{\psi_{f}}
$$
According to FGR, the rate at which particles are scattered into the solid angle $d\Omega$ is,
$$
R_{i\to d\Omega} = \frac{2\pi}{\hbar} \frac{1}{l^{6}} \left| \int e^{ i(\vec{k}'-\vec{k})\cdot \vec{r} } V(\vec{r}) \, d^{3}\vec{r}  \right| ^{2} \left( \frac{l}{2\pi} \right)^{3} \frac{\sqrt{ 2m^{3}E_{f} }}{\hbar^{3}} d\Omega
$$
- What's done in the answer I could have never possibly come up with on my own
- You're supposed to take the integral to determine $V_{if}$, as expected, but you need to know how to transform $z$ into the radial basis
- Once you've computed the huge computations it's mostly smooth sailing from there
# Question 2
FGR:
$$
\frac{d\sigma}{d\Omega} = \left| -\frac{m}{2\pi \hbar^{2}} \int e^{ i(\vec{k}-\vec{k}')\cdot \vec{r} } V(\vec{r}) \, d^{3}\vec{r}  \right| ^{2}
$$
For energy conservation, $|\vec{k}|=|\vec{k}'|$. Define $\vec{\kappa}=\vec{k}-\vec{k}'$
$$
(\vec{k}-\vec{k}')\cdot \vec{r} = \vec{\kappa}\cdot \vec{r} = |\vec{\kappa}||\vec{r}|\cos\theta
$$
Where $\theta$ is the angle between the two. The integral becomes,
$$
\int e^{ i\kappa r\cos\theta } [V_{0}\Theta(r_{0}-r)] \, d^{3}\vec{r} = 2\pi V_{0} \int_{0}^{\pi} \int_{0}^{r_{0}} e^{ \kappa r\cos\theta } \, dr \, d\theta
$$
The answer to this integral is,
$$
\frac{4\pi V_{0}}{\kappa} \left[ \frac{\sin(\kappa r_{0})}{\kappa^{2}} - \frac{r_{0}\cos(\kappa r_{0})}{\kappa} \right]
$$
Substitute this into the FGR equation,
$$
\frac{d\sigma}{d\Omega} = \left| -\frac{m}{2\pi \hbar^{2}} \left( \frac{4\pi V_{0}}{\kappa} \left[ \frac{\sin(\kappa r_{0})}{\kappa^{2}} - \frac{r_{0}\cos(\kappa r_{0})}{\kappa} \right] \right)  \right|^{2}
$$
Now you solve for the cross section $\sigma$ by integrating over $d\Omega$. That is, integrate over $\phi:0\to 2\pi$  and $\psi:0\to \pi$. Where $\psi$ is the angle between $\vec{k}$ and $\vec{k}'$

# Question 4
The original state is the ground state in the infinite square well with width $L$. The potential in the system swaps from,
$$
\begin{cases}
0 & 0<x<L \\
\infty & \text{otherwise}
\end{cases} \to \begin{cases}
0 & 0<x<2L \\
\infty & \text{otherwise}
\end{cases}
$$
The expectation value at $t=0$ is the familiar,
$$
\bra{\psi_{1}} H_{0} \ket{\psi_{1}} = E_{1} = \frac{(\pi \hbar)^{2}}{2mL^{2}}
$$
The initial wave function is,
$$
\psi_{1}(x) = \sqrt{ \frac{2}{L} } \sin\left( \frac{\pi}{L}x \right)
$$
And inside the new potential the states are,
$$
\psi_{n}(x) = \sqrt{ \frac{1}{L} } \sin\left( \frac{n\pi}{2L}x \right)
$$
From here, you compute the probability of measuring the states based on a summation of summation of the original state in terms of these new eigenstates.
$$
\psi_{1}(x) = \sum_{n=1}^{\infty} c_{n}\psi_{n}(x)
$$
You can find the coefficients,
$$
c_{n} = \int_{0}^{2L} \psi_{0}^*(x)\psi_{n}(x) \, dx
$$
And the absolute square of these coefficients will give you the probability of measuring the eigenstates
- But why doesn't it depend on time at all?
- Is this just a first order correction or something?