### Variational Approach
If we cannot find the exact solution, can we guess something reasonable for the problem?

Lets assume that for some Hamiltonian $H$, we have some eigenvalues $E_{n}$ with associated states $\ket{\psi_{n}}$. Lets further assume we can create more states with summations of the eigenstates,
$$
\ket{\psi_{var}} = \sum_{n=0}^{\infty} c_{n} \ket{\psi_{n}}
$$
How "good" is this state? We'll define a good state as one that minimizes the expectation value,
$$
\bra{\psi _\text{var}} H \ket{\psi _\text{var}}
$$
Which for the representation of our state we simply have,
$$
\sum_{m, n} C^*_{m} C_{n} \bra{\psi_{m}} H \ket{\psi_{n}} = \sum_{m, n} C^*_{m} C_{n} E_{n} \delta_{m, n} = \sum_{n} E_{n} |c_{n}|^{2}
$$
Where, because this state is normalized we have,
$$
\sum_{n} |c_{n}|^{2} =1
$$
Because the ground state always has the lowest state, we can check the value,
$$
E_\text{var} - E_{0} = \sum_{n} |c_{n}|^{2} (E_{n}-E_{0}) \geq 0
$$
Curiously, in the case where we have no idea what the states of the Hamiltonian are, this actually gives us an upper-bound for the energy of the ground state.
$$
E_{0} \leq \bra{\psi _\text{var}} H \ket{\psi _\text{var}}
$$
This is helpful because if we cannot solve a Hamiltonian, perhaps because it is very complex, we can use our intuition of the wave functions and test one we think they might look like.

---

Lets try tackling an example using a state similar to the harmonic oscillator:
$$
H = \frac{p^{2}}{2m} + \frac{1}{2} kx^{2}
$$
Where $k$ is some constant. This is the recognisable Harmonic oscillator. Something we know the states for. Lets modify it into something a little more complex,
$$
H = \frac{p^{2}}{2m} + \kappa x^{4}
$$
Where $\kappa$ is another constant. This looks very similar to the harmonic oscillator, so we are very tempted to just use something that looks like the ground state of the harmonic oscillator
$$
\psi _\text{var}(x) = \eta e^{ -\alpha x^{2} }
$$
The normalisation constant $\eta$ is,
$$
\eta = \left( \frac{2\alpha}{\pi} \right)^{1/4}
$$
A crude method of estimating what's happening in this oscillator is to claim that the $p$ will go something like $bhar /L$ and so we perhaps might have energies that look like,
$$
E \propto \frac{\hbar^{2}}{2mL^{2}} + \kappa L^{4}
$$
And if we want to minimise these we have,
$$
\frac{ \partial E }{ \partial L } =0 \implies L \propto \left( \frac{\hbar^{2}}{m\kappa} \right)^{1/6}
$$
Which gives us that the ground state energy is perhaps something similar to,
$$
E \propto \left( \frac{\hbar^{4}\kappa}{m^{2}} \right)^{1/3}
$$
Where this has been obtained by plugging in the minimised $L$ into the previous $E$ equation.

Now, lets go through the proper calculaton,
$$
\bra{\psi _\text{var}} H \ket{\psi _\text{var}} = \frac{\hbar^{2}}{2m} \int_{-\infty}^{\infty} \psi^*_\text{var}(x) \left( - \frac{ \partial^{2} }{ \partial x^{2} }  \right) \psi _\text{var}(x)  \, dx + \kappa \int_{-\infty}^{\infty} \left| \psi _\text{var}(x) \right| ^{2} \, dx
$$
Apply integration by parts,
$$
= \frac{\hbar^{2}}{2m} \int_{-\infty}^{\infty} \left| \frac{ \partial \psi _\text{var} }{ \partial x }  \right|^{2}  \, dx + \kappa  \int_{-\infty}^{\infty} x^{4} |\psi _\text{var}|^{2} \, dx
$$
Therefore,
$$
E_\text{var}(\alpha) = \frac{\hbar^{2}}{2m}\alpha + \frac{3}{16} \frac{\kappa}{\alpha^{2}}
$$
Minimise this,
$$
\frac{ \partial E_\text{var} }{ \partial \alpha } =0 \implies \alpha = \left( \frac{3}{4} \frac{m\kappa}{\hbar^{2}} \right)^{1/3}
$$
And so referring back to the crude estimation we had found before, we find that the hidden proportional constant is $(3 /4)^{1/3}$.