### Question 1
The ground state in this box will simply be the combination of three infinite square well ground states,
$$
\psi _\text{ground} (x, y, z) = \sqrt{ \frac{2}{a} } \sin\left( \frac{\pi x}{a} \right) \sin\left( \frac{\pi y}{a} \right) \sin\left( \frac{\pi z}{a} \right)
$$
The perturbation on the ground state is therefore,
$$
E^{(1)}_{gs} = \bra{\psi_{gs}} V \ket{\psi_{gs}} = \left( \frac{2}{a} \right)^{3} a^{3} V_{0} \int \sin ^{2}\left( \frac{\pi x}{a} \right) \sin ^{2}\left( \frac{\pi y}{a} \right) \sin ^{2}\left( \frac{\pi z}{a} \right) V(x, y, z) \, dr^{3}
$$
Which becomes,
$$
E_{gs}^{(1)} = 2V_{0}
$$
The excited states, however, are degenerate, so we need to be more careful with our approach.

Define the three new states,
$$
\psi_{a}(x, y, z) \propto \sin\left( \frac{2\pi x}{a} \right) \sin\left( \frac{\pi y}{a} \right) \sin\left( \frac{\pi z}{a} \right)
$$
$$
\psi_{b}(x, y, z) \propto \sin\left( \frac{\pi x}{a} \right) \sin\left( \frac{2\pi y}{a} \right) \sin\left( \frac{\pi z}{a} \right)
$$
$$
\psi_{c}(x, y, z) \propto \sin\left( \frac{\pi x}{a} \right) \sin\left( \frac{\pi y}{a} \right) \sin\left( \frac{2\pi z}{a} \right)
$$
For the perturbation, we must find the good states using the matrix
$$
W_{ij} = \bra{\psi_{i}} V' \ket{\psi_{j}} \qquad i, j\in \{ a, b, c \}
$$
This is,
$$
W = 4V_{0} \begin{bmatrix}
1 & 0 & -1 \\
0 & 0 & 0 \\
-1 & 0 & 1
\end{bmatrix}
$$
Which has eigenvalues $\lambda = 0, 2$. We have a double degenerate state $\lambda=0$ and single state $\lambda=2$. The associated first-order corrections to the energies would be,
$$
\lambda=0 \implies E^{(1)}=0 \qquad \lambda=2 \implies E^{(1)} = 8V_{0}
$$
### Question 2
---
a.
In the case when $\vec{B}=0$ then the Hamiltonian becomes $H=DS_{z}^{2}$. This Hamiltonian has three states and two energies. $\ket{0}$ with $E=0$ and $\ket{\pm 1}$ with $E=D$

---
b.
Now include the perturbation $H=DS_{z}^{2}-BS_{z}$. Where $\vec{B}=B\hat{z}$.

Notice that the previous eigenstates remain eigenstates here. If you plug them in, you find that the new energies are:
$$
E_{0} = 0 \qquad E_{\pm 1} = D\pm B
$$
What about in the case when $\vec{B}=B\hat{x}$?. Well the Hamiltonian becomes $H=DS_{z}^{2} - BS_{x}$. If you rewrite the $S_{x}$ operator in terms of the raising and lowering operators, you will see that the previous eigenstates are no longer eigenstates.
$$
H = DS_{z}^{2} - \frac{B}{\sqrt{ 2 }} (a^{\dagger} + a)
$$
$$
\bra{0} S_{x} \ket{0} = \bra{1} S_{x} \ket{1} = \bra{-1} S_{x} \ket{-1} =0
$$
However, since we are familiar with the raising and lowering operators, we can manually create the good states for ourselves.
$$
\bra{\pm 1} S_{x} \ket{0} = \frac{1}{\sqrt{ 2 }}
$$
With the energies,
$$
E_{gs}^{2} = - \frac{B^{2}}{D} \left( \lvert \bra{-1} S_{x} \ket{0}  \rvert^{2} + \lvert \bra{1} S_{x} \ket{0}  \rvert^{2}  \right)
$$
This energy is therefore,
$$
E^{2}_{gs} = \frac{B^{2}}{D} \left( \frac{1}{2} + \frac{1}{2} \right) = \frac{B^{2}}{D}
$$
### Question 4
The ground state in this well is familiarly a combination of two states. One in the $x$ and one in the $y$.
$$
\psi_{gs}(x, y) \propto \bar{\psi}_{gs}(x) \bar{\psi}_{gs}(y) = \sqrt{ \frac{m\omega}{\pi \hbar} } \exp \left( -\frac{m\omega}{2\hbar}(x^{2}+y^{2}) \right)
$$
The first correction to the energies is,
$$
\begin{align}
E_{0}' & = \bra{\psi_{gs}} H' \ket{\psi_{gs}} \\
 & = \frac{m\omega}{\pi \hbar} \left( -\frac{qB_{0}}{2m} \right) \int \exp\left( -\frac{m\omega}{2\hbar} (x^{2}+y^{2}) \right) (xp_{y}-yp_{x}) \exp\left( -\frac{m\omega}{2\hbar} (x^{2}+y^{2}) \right) \, dxdy 
\end{align}
$$
Swapping into the position basis, recall that the momentum operators become,
$$
-i\hbar \left( x \frac{ \partial  }{ \partial y } - y \frac{ \partial  }{ \partial x }  \right)
$$
Substituting this in, you will find that this integral collapses to 0. Which means that the first-order correction $E^{(1)}_{gs}=0$.
