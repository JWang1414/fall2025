### Hydrogen Atom
$$
H = \frac{p^{2}}{2m} - \frac{e^{2}}{4\pi\epsilon_{0}r} - eEx
$$
Where we have added an extra position term to the hydrogen atom. $e$ is the electron charge and $E$ indicates an electric field.
$$
\mathcal{E}_{nlm} = -\frac{1}{2n^{2}} \frac{me^{4}}{(4\pi\epsilon_{0}\hbar)^{2}} \qquad a_{0} = \frac{4\pi\epsilon_{0}\hbar}{me^{2}}
$$
Where on the left are the energies and on the right is the Bohr radius. This is just for reference. The relevant wavefunctions here are,
$$
\psi_{1s} (\vec{r}) = \left( \frac{1}{\pi a_{0}^{3}} \right)^{1/2} e^{ -r/a_{0} }
$$
$$
\psi_{2p_{x}} (\vec{r}) = \frac{1}{4\sqrt{ 2\pi a_{0}^{3} }} \frac{x}{a_{0}} e^{ -r/2a_{0} }
$$
The first and second order corrections to the energy are,
$$
\tilde{\mathcal{E}}_{1s} = \mathcal{E}_{1s} + \bra{1s} (-eE\hat{x}) \ket{1s} - \sum_{(nlm)\neq 1s} \frac{\left| \bra{nlm} (-eE\hat{x})\ket{1s}  \right| ^{2}}{\mathcal{E}_{nlm}-\mathcal{E}_{1s}}
$$
The expectation value for a symmetric state in angular momentum with something that breaks angular momentum symmetry is always zero,
$$
\bra{1s} (-eE\hat{x})\ket{1s} =0
$$
Because of the previously defined property, we require that the state $\bra{nlm}$ is proportional to $x$ and nothing else. Everything else would break angular momentum symmetry and vanish.

Note that the higher energy terms will be smaller, because of the larger denominator. So, we'll try to approximate this perturbation to establish a bound on the results,
$$
\tilde{\mathcal{E}}_{1s} \approx \mathcal{E}_{1s} -e^{2}E^{2} \frac{\left| \bra{2p_{\times}} x \ket{1s}   \right|^{2} }{\mathcal{E}_{2p_{x}} - \mathcal{E}_{1s}}
$$
Where $\ket{2p_{x}}$ is the smallest excited state that will yield a non-zero value from the integral.
$$
\bra{2p_{x}}  x \ket{1s} = \int \psi_{2p_{x}}^*(\vec{r}) x \psi_{1s}(\vec{r}) \, dr^{3} = \frac{1}{3\sqrt{ 2 }} \frac{256}{81} a_{0} \approx 0.74a_{0}
$$
Therefore,
$$
\tilde{\mathcal{E}}_{2p_{x}} \approx \mathcal{E}_{1s} - (0.74a_{0})^{2} e^{2}E^{2} \left[ \frac{3}{8} \frac{me^{4}}{(4\pi\epsilon_{0}\hbar)^{2}} \right] ^{-1}
$$
$$
\Delta \mathcal{E}_{1s} \approx -\frac{8}{3} E^{2} (4\pi\epsilon_{0}a_{0}^{3}) (0.74)^{2}
$$
Recall that the term $\Delta \mathcal{E}_{1s}$ can also be expressed in terms of the polarizability $\alpha$,
$$
\Delta \mathcal{E}_{1s} = -\frac{1}{2} \alpha E^{2} \implies \alpha \approx \frac{16}{3} (0.74)^{2} (4\pi\epsilon_{0}a_{0}^{3})
$$
Lets return to the original discussion regarding the 2-D matrix Hamiltonian
$$
\mathcal{H} = \begin{bmatrix}
\mathcal{E}_{0} & \lambda \beta \\
\lambda \beta^* & \mathcal{E}_{0}
\end{bmatrix}
$$
Where $\mathcal{E}_{0}$ are the energies for the original Hamiltonian, and the $\beta$ terms are the perturbations. So, what is the first order correction for the first energy with the eigenvector $\begin{bmatrix}1 & 0\end{bmatrix}$?
$$
\Delta \mathcal{E}^{(1)}_{1} = \begin{bmatrix}
1 & 0
\end{bmatrix} V \begin{bmatrix}
1 \\
0
\end{bmatrix}
$$
Where $V$ is the perturbation,
$$
V = \begin{bmatrix}
0 & \lambda \beta \\
\lambda \beta^* & 0
\end{bmatrix}
$$
The second order correction is,
$$
\Delta \mathcal{E}^{(2)}_{1} = - \frac{(\lambda \left| \beta \right| )^{2}}{\mathcal{E}_{0}-\mathcal{E}_{0}}
$$
And so we have to divide by zero. Which tells us that there is an issue with our process.
- Where does this $\lambda \left| \beta \right|$ come from? I didn't quite catch it
