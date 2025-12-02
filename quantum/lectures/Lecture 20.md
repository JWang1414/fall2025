Recall that in the previous lecture we were considering an incoming wave incident onto a spherically symmetrical potential. The beam can be modelled like:
$$
\psi(\vec{r}) = A \left[ e^{ ikz } + f(\theta, \phi) \frac{e^{ ikr }}{r} \right]
$$
Where $f$ is some complex function. The first term represents the incoming wave, and the second the outgoing spherical wave.

The incoming current density is:
$$
J_\text{inc} = \lvert A \rvert ^{2} \hbar \frac{k}{m}
$$
(Didn't catch something here)
$$
\vec{J} = \frac{\hbar}{2mi} \left[ \psi^* \nabla \psi - \psi \nabla \psi^* \right]
$$
The outgoing wave becomes:
$$
J_\text{out, radial} = \frac{\hbar}{2mi} \lvert A \rvert ^{2} (f^*f) \left[ \frac{e^{ -ikr }}{r} \frac{ \partial  }{ \partial r } \left( \frac{e^{ ikr }}{r} \right) - \text{Complex Conjugate} \right]
$$
Compute this, and apply the limit $r\to \infty$ to obtain:
$$
J_\text{out, radial} = \frac{\hbar}{2mi} \lvert A \rvert ^{2} \lvert f(\theta, \phi) \rvert ^{2} \left( \frac{2ik}{r^{2}} \right) = \frac{\hbar k}{m} \lvert A \rvert ^{2} \lvert f(\theta, \phi) \rvert ^{2} \frac{1}{r^{2}}
$$
The number of particles that leave per unit time is therefore $J_\text{out, radial}$ multiplier by some area:
$$
\Delta N = J_\text{out, radial} (r^{2} \, d\Omega) \implies d\sigma = \frac{\Delta N}{J_\text{inc}} = \lvert f(\theta, \phi) \rvert ^{2} \, d\Omega
$$
Rearrange this to find another expression of the cross-section differential:
$$
\frac{d\sigma}{d\Omega} = \lvert f(\theta, \phi) \rvert ^{2}
$$
This works under any regime, with or without perturbation theory. You do, however, need to determine what $f(\theta, \phi)$ is supposed to be.
# Integral Form of the Schrodinger Equation
The time-independent Schrodinger equation,
$$
-\frac{\hbar^{2}}{2m} \nabla^{2}\psi + V\psi = E\psi
$$
Can be rearranged and written as:
$$
(\nabla^{2}+k^{2})\psi = Q
$$
Where we have defined,
$$
k\equiv \frac{\sqrt{ 2mE }}{\hbar} \qquad Q \equiv \frac{2m}{\hbar^{2}} V\psi
$$
Which looks very similar to the Helmholtz equation from electrodynamics. The difference here is that $Q$ depends on $\psi$, so we cannot really duplicate the exact solution.

Our goal is therefore to find some function $G(\vec{r})$ that solves the Helmholtz equation with a delta function "source"
$$
(\nabla^{2}+k^{2})G(\vec{r}) = \delta^{3}(\vec{r})
$$
Assuming we find this function, we have,
$$
\psi(\vec{r}) = \int G(\vec{r}-\vec{r}_{0}) Q(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
Which you can check will satisfy Schrodinger equation by substituting this $\psi(\vec{r})$ into $(\nabla^{2}+k^{2})\psi$.

We call $G(\vec{r})$ the Green's function for the Helmholtz equation, and our goal is to figure out what it is. The process with Fourier transforms and some algebra is in the textbook, but the answer is:
$$
G(\vec{r}) = \frac{1}{(2\pi)^{3}} \int \frac{e^{ i\vec{s}\cdot \vec{r} }}{k^{2}-s^{2}} \, d^{3}\vec{s}
$$
Which is a complex integral that can be solved with complex analysis techniques.
$$
G(\vec{r}) = - \frac{e^{ ikr }}{4\pi r}
$$
Which is the Greens function for our problem. However, notice that we can also add any arbitrary number of functions $G_{0}$ to $G$ so long as:
$$
(\nabla^{2}+k^{2}) G_{0}(\vec{r}) =0
$$
You can easily verify that $G+G_{0}$ will still satisfy the condition we would like. Turns out, this function is actually the free particle.
$$
(\nabla^{2}+k^{2})\psi_{0}=0
$$
Substitute this into the integral equation for $\psi(\vec{r})$ to find,
$$
\psi(\vec{r}) = \psi_{0}(\vec{r}) - \frac{m}{2\pi \hbar^{2}} \int \frac{e^{ ik|\vec{r}-\vec{r}_{0}| }}{|\vec{r}-\vec{r}_{0}|} V(\vec{r}_{0})\psi(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
Where the added $\psi_{0}$ term manifests as a consequence of the varying Green's functions. This equation is the integral form of Schrodinger's equation. The issue is, you can't really use this, because $\psi$ is on the left and right sides.
# The First Born Approximation
Suppose that $V(\vec{r}_{0})$ is localized about $\vec{r}_{0}=0$, and we are interested in regions where $\lvert \vec{r} \rvert\gg \lvert \vec{r}_{0} \rvert$. Then,
$$
\left| \vec{r}-\vec{r}_{0} \right| ^{2} = r^{2}+r_{0}^{2} - 2 \vec{r}\cdot \vec{r}_{0} \approx r^{2}\left( 1-2 \frac{\vec{r}\cdot \vec{r}_{0}}{r^{2}} \right)
$$
Then,
$$
\left| \vec{r}-\vec{r}_{0} \right|  \approx r-\hat{r}\cdot \vec{r}_{0}
$$
Let $\vec{k}=k\hat{r}$, then,
$$
e^{ ik|\vec{r}-\vec{r}_{0}| } \approx e^{ ikr } e^{ -i\vec{k}\cdot \vec{r}_{0} }
$$
So we approximate,
$$
\frac{e^{ ik|\vec{r}-\vec{r}_{0}| }}{|\vec{r}-\vec{r}_{0}|} \approx \frac{e^{ ikr }}{r} e^{ -i\vec{k}\cdot \vec{r}_{0} }
$$
Now, lets model
$$
\psi_{0}(\vec{r}) = A e^{ ikz }
$$
As an incident plane wave. From this we obtain:
$$
\psi(\vec{r}) \approx Ae^{ ikz } - \frac{m}{2\pi \hbar^{2}} \frac{e^{ ikr }}{r} \int e^{ -i\vec{k}\cdot \vec{r}_{0} } V(\vec{r}_{0}) \psi(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
And so the scattering amplitude is therefore,
$$
f(\theta, \phi) = -\frac{m}{2\pi \hbar^{2}A} \int e^{ -i\vec{k}\cdot \vec{r}_{0} } V(\vec{r}_{0}) \psi(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
The Born approximation claims that the incoming plane wave is not substantially altered by the potential, and so,
$$
\psi(\vec{r}_{0}) \approx \psi \vec{r}_{0}(\vec{r}_{0}) = Ae^{ ikz_{0} } = Ae^{ i\vec{k}'\cdot \vec{r}_{0} }
$$
Where we have defined,
$$
\vec{k}'=k\hat{z}
$$
Note that $\vec{k}'$ points in the direction of the incident beam, and $\vec{k}$ points toward the detector. Under this regime, the scattering amplitude is now,
$$
f(\theta, \phi) \approx -\frac{m}{2\pi \hbar^{2}} \int e^{ i(\vec{k}'-\vec{k})\cdot \vec{r}_{0} } V(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
For low energy scattering, the exponential factor is roughly constant,
$$
f(\theta, \phi) \approx -\frac{m}{2\pi \hbar^{2}} \int V(\vec{r}) \, d^{3}\vec{r}
$$
And for a spherically symmetrical potential $V(\vec{r})=V(r)$
$$
f(\theta) \approx -\frac{2m}{\hbar^{2}\kappa} \int_{0}^{\infty} rV(r) \sin(\kappa r) \, dr
$$
Where $\vec{\kappa}=\vec{k}'-\vec{k}$.
