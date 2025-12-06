# Question 1
Infinite square well states:
$$
E_{n} = \frac{(n\pi \hbar)^{2}}{2ma^{2}}
$$
$$
\psi_{n}(x) = \sqrt{ \frac{2}{a} } \sin\left( \frac{n\pi}{a}x \right)
$$
First order correction is,
$$
E^{1}_{n} = \left< \psi^{0}_{n} | H' | \psi^{0}_{n} \right>
$$
Where $H'$ is the perturbation.

Ground state has no degeneracy.
$$
\psi_{0}(x, y, z) = \psi_{0}(x)\psi_{0}(y)\psi_{0}(z) = \left( \frac{2}{a} \right)^{3/2} \sin\left( \frac{\pi}{a}x \right)\dots
$$
$$
E^{1}_{n} = \left( \frac{2}{a} \right)^{3} a^{3} V_{0} \iiint \delta\left( x-\frac{a}{4} \right) \delta\left( x-\frac{a}{2} \right) \delta\left( x-\frac{3a}{4} \right) \sin ^{2}\left( \frac{\pi}{a}x \right) \sin ^{2}\left( \frac{\pi}{a}y \right) \sin ^{2}\left( \frac{\pi}{a}z \right)
$$
$$
= 8 V_{0} \sin ^{2}\left( \frac{\pi}{a} \frac{a}{4} \right) \sin ^{2}\left( \frac{\pi}{a} \frac{a}{2} \right) \sin ^{2}\left( \frac{\pi}{a} \frac{3a}{4} \right) = 8V_{0} \left( \frac{1}{2} \right) (1) \left( \frac{1}{2} \right) = 2 V_{0}
$$
Solve for the elements of the perturbation matrix
$$
W_{ij} = \bra{\psi^{0}_{i}} H' \ket{\psi^{0}_{j}}
$$
$$
W_{aa} = 8V_{0} \sin ^{2}\left( \frac{2\pi}{a} \frac{a}{4} \right) \sin ^{2}\left( \frac{\pi}{a} \frac{a}{2} \right) \sin ^{2}\left( \frac{\pi}{a} \frac{3a}{4} \right) = 4 V_{0}
$$
$$
W_{ab} = 8 V_{0} \sin\left( \frac{\pi}{4} \right) \sin\left( \frac{\pi}{2} \right) \sin\left( \frac{\pi}{2} \right) \sin(\pi) \sin ^{2}\left( \frac{3\pi}{a} \right) = 0
$$
You can continue doing this to make the whole thing, but you find
$$
W = 4 V_{0} \begin{bmatrix}
1 & 0 & -1 \\
0 & 0 & 0 \\
-1 & 0 & 1
\end{bmatrix}
$$
The eigenvalues are $\lambda=0, 2$ with a two fold degeneracy on $\lambda=0$. The perturbed energies are therefore 0 and $8V_{0}$.