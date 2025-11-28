# Question 3
Recall that the differential cross section can be related to:
$$
\frac{d\sigma}{d\Omega} = \left( \frac{m}{2\pi \hbar^{2}} \right)^{2} \left| \int e^{ i(\vec{k}'- \vec{k})\cdot \vec{r} } V(\vec{r}) \, d^{3}\vec{r}  \right| ^{2}
$$
To conserve energy, $|\vec{k}'| = |\vec{k}|$. Define the new quantity $\vec{\kappa}=\vec{k}'-\vec{k}$ where $\vec{k}'$ and $\vec{k}$ are held fixed.
$$
(\vec{k}'-\vec{k})\cdot \vec{r} = \kappa r \cos\theta
$$
Where $\theta$ is the angle between $\vec{\kappa}$ and $\vec{r}$.

Substitute the potential and this quantity into the original integral. Use the substitution:
$$
\eta = \kappa r \cos\theta \implies d \eta = -\kappa r \sin\theta \, d\theta
$$
To help solve the integral.

First, you should get
$$
2\pi \int_{0}^{\infty} \frac{\beta}{\kappa} e^{ -\mu r } (2 \sin(\kappa r)) \, dr
$$
Which you can evaluate and end up with:
$$
\frac{4\pi \beta}{\kappa} \frac{9\kappa}{\kappa^{2}+\mu^{2}} = \frac{4\pi \beta}{|\vec{k}'-\vec{k}|^{2}+\mu^{2}}
$$
Now, if you solve for the differential cross section you get:
$$
\frac{d\sigma}{d \Omega} = \left( \frac{2m\beta}{\hbar^{2}} \right)^{2} \frac{1}{\left[ |\vec{k}'-\vec{k}|^{2}+\mu^{2} \right]^{2} }
$$
Define $\psi$ as the angle between $\vec{k}$ and $\vec{k}'$. Then,
$$
|\vec{k}' - \vec{k}| = k \sqrt{ 2-2\cos \psi }
$$
To find the total cross section, our goal is to integrate the differential cross section:
$$
\sigma = \left( \frac{2m\beta}{\hbar^{2}} \right)^{2} \iint \left[ k(2-2\cos \psi) + \mu^{2} \right] ^{-2} \sin \psi \, d\psi \, d\phi
$$
Luckily, the $\phi$ integral here is trivial. One method of solving this integral is using the substitution:
$$
\xi = k \sqrt{ 2-2\cos \psi } \implies \xi \, d\xi = k^{2} \sin \psi \, d\psi
$$
And the integral turns into:
$$
2\pi \left( \frac{2m\beta}{\hbar^{2}} \right)^{2} \int_{0}^{2k} \frac{\xi}{(\xi^{2}+\mu^{2})} \, d\xi
$$
The answer is:
$$
2\pi \left( \frac{2m\beta}{\hbar^{2}} \right)^{2} \frac{2}{\mu} \frac{1}{4k^{2}+\mu^{2}}
$$
- Question 2 is identical to this one, but the provided potential results in no closed form solution to the cross section
# Question 5
The Hamiltonian in this system swaps from:
$$
-\frac{\hbar^{2}}{2m} \frac{d^{2}}{dx^{2}} + \frac{1}{2} kx^{2}
$$
To,
$$
-\frac{\hbar^{2}}{2m} \frac{d^{2}}{dx^{2}} + 2 kx^{2}
$$
Which can actually be modelled as the perturbation
$$
H = H_{0} + 3 V_{0}(x)
$$
Recall that while $t<0$ the system had expectation values:
$$
\bra{\psi_{0}} H_{0} \ket{\psi_{0}} = \frac{1}{2} \hbar\omega
$$
Afterwards, this value becomes:
$$
\bra{\psi_{0}} H \ket{\psi_{0}} = \bra{\psi_{0}} H_{0} \ket{\psi_{0}} + 3 \bra{\psi_{0}} V_{0} \ket{\psi_{0}}
$$
Recall that in pset 7 we already solved this problem for the expectation value for the potential in the harmonic well
$$
\bra{\psi} V_{0} \ket{\psi_{0}} = \frac{1}{4} \hbar \omega
$$
So the expectation value is:
$$
\bra{\psi_{0}} H \ket{\psi_{0}} = \frac{1}{2} \hbar \omega + \frac{3}{4} \hbar \omega = \frac{5}{4} \hbar \omega
$$
So the energy in the ground state suddenly increase when we instantly stiffen the "spring" the state is bound to.

---

Now, solve for the probability of finding the state in the ground state and second excited state.

Note that $\omega \propto \sqrt{ k }$. Then, in the new eigen-basis, the energies are
$$
E_{n} = 2hb\omega \left( n+\frac{1}{2} \right)
$$
So the new ground state energy is:
$$
E_{0} = \hbar \omega
$$
The ground state wave function from $t<0$ to $t>0$ in this well goes from:
$$
\psi_{0}(x) = \left( \frac{m\omega}{\pi \hbar} \right)^{-1/4} \exp \left( -\frac{m\omega}{2\hbar}x^{2} \right) \to \left( \frac{2m\omega}{\pi \hbar} \right)^{-1/4} \exp \left( -\frac{m\omega}{\hbar}x^{2} \right)
$$
You will find the probability for the ground state is:
$$
\int \left| \psi_{0}(x) \right| ^{2} \, dx \approx 0.943
$$
