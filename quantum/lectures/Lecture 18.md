Recall that, last class we went through the process of solving for a first order perturbation as a function of time. Where we found (for our function and perturbation) the correction can be expressed as:
$$
\Gamma_{i\to f} = \frac{2\pi}{\hbar^{2}} \lvert A_{fi} \rvert ^{2} \delta (\omega-\omega_{fi})
$$
- This can be interpreted as the chance of finding the state in the final state $f$, where it started in the initial state $i$.

Lets apply what we have learned to the hydrogen atom.
$$
V(r, t) = 2e E_{0} \vec{r}\cdot\hat{}{\varepsilon} \cos (\vec{k}\cdot \vec{r} - \omega t) = eE_{0} \vec{r}\cdot\hat{\varepsilon} (e^{ i\vec{k}\cdot \vec{r} - i \omega t } + \dots)
$$
Where $\hat{\varepsilon}$ is the polarization. The elements of the matrix are:
$$
\lvert A_{fi} \rvert ^{2} = \bra{f} eE_{0} \vec{r}\cdot\hat{\varepsilon} e^{ i\vec{k}\cdot \vec{r} } \ket{i}
$$
We will approximate the exponential as 1 here, because the perturbation from it is small:
$$
\Gamma_{fi} = \frac{2\pi}{\hbar^{2}} e^{2}E_{0}^{2} \left| \bra{f} \vec{r}\cdot\hat{\varepsilon} \ket{i}  \right| ^{2} \delta(\omega-\omega_{fi})
$$
This quantity is connected to the spectra and photoemission.
- Something with the processes where the hydrogen atom absorbs a photon, and then releases it
- Little unsure about this topic
# Scattering
Lets define the same system with a Hamiltonian $\hat{H}$, base Hamiltonian $H_{0}$ and perturbation $V(\vec{r})$. Lets model this system with the potential as a function of time:
$$
\hat{H} = H_{0} + V(\vec{r}) = H_{0} + V_{0}(\vec{r}) \lambda(t)
$$
Imagine we fired a plane eigenstate at the original system before applying the perturbation. We would expect nothing to happen here, because they are eigenstates. However, once we "turn on" the perturbation, then the particles will begin to scatter, since they are swapping into other states.

Define the initial and final states as $\vec{k}$ and $\vec{k}'$. According to Fermi's golden rule:
$$
\Gamma_{\vec{k}\to \vec{k}'} = \frac{2\pi}{\hbar} \left| \bra{\vec{k}'} V_{0}(\vec{r}) \ket{\vec{k}}  \right| ^{2} \delta(E_{\vec{k}'} - E_{\vec{k}})
$$
Where we have approximated the frequency of the perturbation as 0. This is because, while the perturbation is "on", we assume no fluctuation. The delta function (responsible for energy conservation) has been expressed in terms of the energies because of this.

Solve for the elements of the matrix.
$$
\bra{\vec{k}'} V_{0}(\vec{r}) \ket{\vec{k}} = \int \left< \vec{k}|\vec{R}' \right> \bra{\vec{R}'} V_{0}(\vec{r}) \ket{\vec{R}} \left< \vec{R} | \vec{k} \right> \, d^{3}R \, d^{3}R'
$$
The bra-kets on the edges are defined to be:
$$
\left< \vec{R} | \vec{k} \right> = \frac{1}{\sqrt{ L^{3} }} e^{ i\vec{k}\cdot \vec{R} }
$$
The version with $\vec{k}'$ is the complex conjugate with replaced variables. $L$ is a normalization constant. The inside becomes:
$$
\bra{\vec{R}'} V_{0}(\vec{r}) \ket{\vec{R}}  = V_{0}(\vec{R}) \delta(\vec{R}-\vec{R}')
$$
The integral is therefore,
$$
\frac{1}{L^{3}} \int e^{ -i\vec{k}'\cdot \vec{R}' } e^{ i\vec{k}\cdot \vec{R} } V_{0}(\vec{R}) \, d^{3}R
$$
Which is very similar to a Fourier transform, so we write it like
$$
\frac{1}{L^{3}} \tilde{V}_{0} (\vec{k}'-\vec{k})
$$
The difference here, $\vec{k}'-\vec{k}$ is called the momentum transfer. It is the change in the momentum between the two states. We have now obtained:
$$
\Gamma_{\vec{k}\to \vec{k}'} = \frac{2\pi}{\hbar} \frac{1}{L^{6}} \lvert \tilde{V}_{0}(\vec{k}'-\vec{k}) \rvert ^{2} \delta(E_{\vec{k}'} - E_{\vec{k}})
$$
Now imagine we have a detector, and we would like to measure how much the scattering is going in some particular direction. We can solve for this by taking an integral over the region of the detector:
$$
\int _{\text{Volume in }\vec{k}'} \Gamma_{\vec{k}\to \vec{k}'} \, d^{3}\vec{k}' = \iint_{\text{Region in }\vec{k}'} \frac{k'^{2}}{(2\pi /L)^{3}} d\Omega' \, d\vec{k}
$$
This integral can be approximated as:
$$
\tilde{\Gamma}_{\vec{k}\to \vec{k}'} = \frac{2\pi}{\hbar} \frac{1}{L^{6}} \left| \tilde{V}(\vec{k}'-\vec{k}) \right| ^{2} d\Omega' \int \frac{k'^{2}}{(2\pi /L)^{3}} \delta(E_{k}-E_{k'}) \, dk'
$$
This integral is:
$$
\int \frac{k'^{2}}{(2\pi /L)^{3}} \delta(E_{k}-E_{k'}) \, dk' = \frac{m}{\hbar^{3}} \sqrt{ 2mE_{\vec{R}} } \frac{L^{3}}{(2\pi)^{3}}
$$
$$
d\sigma (J_\text{inc}) = \tilde{\Gamma}_{\vec{k}\to \vec{k}'}
$$
Where $d\sigma$ is the cross sectional area, and $J_\text{inc}$ is the incoming current.
$$
J_\text{inc} = \frac{1}{L^{3}} \frac{\hbar|\vec{k}|}{m}
$$
We end up with an expression called the differential scattering cross section:
$$
\frac{d\sigma}{d\Omega} = \left( \frac{m}{2\pi \hbar^{2}} \right)^{2} \left| \tilde{V}(\vec{k}'-\vec{k}) \right| ^{2}
$$
- This is a fraction of two small quantities, not a derivative
