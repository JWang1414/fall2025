### Question 3
For the unperturbed Hamiltonian, we would have an interaction for each boson
$$
H^{0} = H_{1}^{0} + H_{2}^{0}
$$
Write out the total eigenfunction as the protect of one for each of the two particles
$$
\ket{\psi^{0}} = \ket{\psi_{1}^{0} \psi_{2}^{0}}
$$
Which also have the wave functions,
$$
\psi(x_{1}, x_{2}) = \psi_{1, 0}(x_{1}) \psi_{2, 0}(x_{2})
$$
Where the energies are,
$$
E_{0} = E_{1, 0} + E_{2, 0}
$$
The perturbation from this question is,
$$
H = H_{1}^{0} + H_{2}^{0} + H' \qquad H' = -\alpha V_{0} \delta(x_{1}-x_{2})
$$
First order perturbation theory states that the change in energy is,
$$
\Delta E = \iint \left[ \psi_{1, 0}(x_{1})\psi_{2, 0}(x_{2}) \right] ^* \left[ -\alpha V_{0} \delta(x_{1}-x_{2}) \right] \left[ \psi_{1, 0}(x_{1}) \psi_{2, 0}(x_{2}) \right] \, dx_{1} \, dx_{2}
$$
The Delta-dirac function reduces this into,
$$
\int \lvert \psi_{1, 0}(x) \rvert ^{2} \lvert \psi_{2, 0} \rvert ^{2} (-\alpha V_{0}) \, dx
$$
These two states are just the ground state in the infinite well,
$$
\psi(x) = \sqrt{ \frac{2}{a} } \sin\left( \frac{\pi x}{a} \right)
$$
For the first excited state, the model wave function becomes,
$$
\psi(x_{1}, x_{2}) = \frac{1}{\sqrt{ 2 }} \left[ \psi_{1, 1}(x_{1}) \psi_{2, 0}(x_{2}) + \psi_{1, 0}(x_{1}) \psi_{2, 1}(x_{2}) \right]
$$
