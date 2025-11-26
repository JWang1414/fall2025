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

Lets look at this problem from another standpoint, starting with the Schrodinger equation:
$$
-\frac{\hbar^{2}}{2m} \nabla^{2}\psi(\vec{r}) + V(r) \psi(\vec{r}) = E\psi(\vec{r})= \frac{\hbar^{2}k^{2}}{2m} \psi(\vec{r})
$$
Notice that this system is independent of time. The energy has be substituted in. Rearrange this to find:
$$
(\nabla^{2} + k^{2}) \psi(\vec{r}) = \frac{2m}{\hbar^{2}} V(r) \psi(\vec{r})
$$
In electrostatics, we mind solve a similar problem such that:
$$
\nabla^{2}\phi(\vec{r}) = \frac{\rho(\vec{r})}{\epsilon_{0}}
$$
$$
\phi(\vec{r}) = \int \frac{1}{4\pi\epsilon_{0}} \frac{\rho(\vec{r}')}{\lvert \vec{r}-\vec{r}' \rvert } \, d^{3}\vec{r}' = \int \mathcal{K}(\vec{r}-\vec{r}') \rho(\vec{r}') \, d^{3}\vec{r}'
$$
Where we have defined the function $\mathcal{K}$, which essentially acts as a sort of "determining" function. Something often called a "Green's function" or "kernel". We would like to draw a similar metaphor for this system with the quantum system we have created:
$$
\psi(\vec{r}) = \int G(\vec{r}-\vec{r}_{0}) \left( \frac{2m}{\hbar^{2}} \right) V(\vec{r}_{0}) \psi(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
Where we have the new Green's function in this problem $G$. For this to work, we would like to have:
$$
(\nabla^{2} + k^{2}) G(\vec{r}) = \delta (\vec{r})
$$
We won't go through the details, but the correct function is:
$$
G(\vec{r}) = - \frac{e^{ ikr }}{\lvert \vec{r} \rvert }
$$
Which gives us:
$$
\psi(\vec{r}) = \psi _\text{free}(\vec{r}) +  \int \left( -\frac{e^{ ik\lvert \vec{r}-\vec{r}_{0} \rvert  }}{\lvert \vec{r}-\vec{r}_{0} \rvert } \right)  \left( \frac{2m}{\hbar^{2}} \right) V(\vec{r}_{0}) \psi(\vec{r}_{0}) \, d^{3}\vec{r}_{0}
$$
However, notice that if we have a solution to the Schrodinger equation for this problem for the potential $V(\vec{r})=0$, the result will completely vanish. So we can actually add an extra $\psi _\text{free}(\vec{r})$ term to this.
- This is an addendum, which is why it is written afterwards

The wave function for the free particle is:
$$
\psi _\text{free}(\vec{r}) = A e^{ ikz }
$$
If we assume that $\psi(\vec{r}_{0})$ is small, than we can use perturbation theory. The 1st order approximation is:
$$
\psi(\vec{r}) = A e^{ ikz } +  \int \left( -\frac{e^{ ik\lvert \vec{r}-\vec{r}_{0} \rvert  }}{\lvert \vec{r}-\vec{r}_{0} \rvert } \right)  \left( \frac{2m}{\hbar^{2}} \right) V(\vec{r}_{0}) (e^{ ikz_{0} }) \, d^{3}\vec{r}_{0}
$$
Lets assume that $\vec{r}\gg \vec{r}_{0}$.
$$
e^{ ik\lvert \vec{r}-\vec{r}_{0} \rvert  } \approx \exp \left( ikr\left( 1- \frac{\vec{r}_{0}\cdot \vec{r}}{r^{2}} \right) \right)
$$
Then,
$$
- \frac{e^{ ik\lvert \vec{r}-\vec{r}_{0} \rvert  }}{\lvert \vec{r}-\vec{r}_{0} \rvert } \approx - \frac{e^{ ikr } e^{ -ik\vec{r}_{0}\cdot \hat{r} }}{r}
$$
Where we have defined $\hat{r}=\vec{r} / r$. Notice that $\vec{r}_{0}\cdot \hat{r}=r_{0}$.
- Something with the math went wrong. Fix this later.
