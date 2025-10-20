### Perturbation Theory
Recall that, for some simpler system $H_{0}$ we can apply the perturbation,
$$
(H_{0} + \lambda V) (\ket{\phi^{(0)}_{m}} + \lambda \ket{\phi^{(1)}_{m}}  + \dots) = (\mathcal{E}^{(0)}_{m} + \lambda \mathcal{E}^{(1)}_{m} + \dots) (\ket{\phi^{(0)}_{m}} + \dots)
$$
Where the energies are denoted by $\mathcal{E}$. We have used a Taylor series expansion on the original $\phi$ state. Last time, we found we can write out the first order correction term like,
$$
H_{0} \ket{\phi^{(1)}_{m}} + V\ket{\phi^{(0)}_{m}} = \mathcal{E}^{(0)}_{m} \ket{\phi^{(1)}_{m}} + \mathcal{E}^{(1)}_{m} \ket{\phi^{(0)}_{m}}
$$
We can accomplish the same thing for the second order. Gathering the second order terms we have that,
$$
H_{0} \ket{\phi^{(2)}_{m}} + V \ket{\phi^{(1)}_{m}} = \mathcal{E}^{(0)}_{m} \ket{\phi^{(2)}_{m}} + \mathcal{E}^{(1)}_{m} \ket{\phi^{(1)}_{m}} + \mathcal{E}^{(2)}_{m} \ket{\psi^{(0)}_{m}}
$$
Now, we will try to repeat the same process we did to solve for the order 1 correction. Multiply this whole system by $\bra{\psi^{(0)}_{m}}$. Some of the terms will cancel out.
$$
\bra{\phi^{(0)}_{m}} V \ket{\phi^{(1)}_{m}}  = \mathcal{E}^{(2)}_{m} \left< \phi^{(0)}_{m} | \phi^{^{0}}_{m} \right> = \mathcal{E}^{(2)}_{m}
$$
Recall that we have solved for $\ket{\phi^{(1)}_{m}}$ as a summation before. Substituting this into what we have above,
$$
\mathcal{E}^{(2)}_{m} = - \sum_{l \neq m} \frac{\left| \bra{\phi^{(0)}_{l}} V \ket{\phi^{(0)}_{m}}  \right|^{2} }{\mathcal{E}^{(0)}_{l}-\mathcal{E}^{(0)}_{m}}
$$
- So, interesting it looks like we can solve for the second order energies just from 0th order terms in the original model
### Perturbed Oscillator
$$
H = \frac{p^{2}}{2m} + \frac{1}{2} kx^{2} - gx
$$
So we have added some perturbation $gx$ to the oscillator. Factor,
$$
H = \frac{p^{2}}{2m} + \frac{1}{2} k \left( x-\frac{g}{k} \right)^{2} - \frac{g^{2}}{2k}
$$
Analytically, then, the energies can be found to be,
$$
E_{n} = \left( n+\frac{1}{2} \right) \hbar \omega - \frac{g^{2}}{2k}
$$
With the wave-functions,
$$
\psi_{n}(x) = \psi^{(0)}_{n} \left( x-\frac{g}{k} \right)
$$
In the interest of applying perturbation theory, lets shorten our notation.
$$
\text{Perturbed: } \ket{\tilde{n}}, \tilde{E}_{n} \qquad \text{Unperturbed: } \ket{n}, E_{n}
$$
The second order correction to the energy,
$$
\tilde{E}_{n} = E_{n} + \bra{n} (-gx) \ket{n} - \sum_{l \neq m} \frac{\left| \bra{l} (-gx) \ket{n}  \right| ^{2}}{E_{l} - E_{n}}
$$
The first order correct to the wave-function,
$$
\ket{\tilde{n}} = \ket{n} - \sum_{l \neq m} \frac{\bra{l} (-gx) \ket{n} }{E_{l} - E_{n}} \ket{l}
$$
In the harmonic oscillator, we have that,
$$
\hat{x} = \left( \frac{\hbar}{2m\omega} \right)^{1/2} (a + a^{\dagger})
$$
$$
\bra{n} x \ket{n} \propto \bra{n} (a+a^{\dagger}) \ket{n} =0
$$
And therefore our summation has two possible results.
$$
\bra{l} x \ket{n} \propto \bra{l} (a+a^{\dagger}) \ket{n} = \sqrt{ n } \delta_{l, n-1} + \sqrt{ n+1 } \delta_{l, n+1}
$$
The energy is therefore,
$$
\tilde{E}_{n} = E_{n} - \left( \frac{g^{2}\hbar}{2m\omega} \right) \sum_{l \neq n} \left( \frac{n\delta_{l, n-1}}{E_{n-1} - E_{n}} + \frac{(n+1)\delta_{l, n+1}}{E_{n+1} - E_{n}} \right)
$$
From our knowledge of the harmonic oscillator,
$$
E_{n-1} - E_{n} = -\hbar \omega \qquad E_{n+1} - E_{n} = \hbar \omega
$$
Evaluate for the ground state,
$$
\tilde{E}_{0} = E_{0} - \frac{g^{2}\hbar}{2m\omega} \frac{1}{\hbar \omega} = E_{0} - \frac{g^{2}}{2m\omega^{2}}
$$
Recall that $\omega^{2}=k /m$ and so the correct is $g^{2} /2k$ as we expected. Now, solve for the perturbed wave functions,
$$
\ket{\tilde{0}} = \ket{0} + \left( \frac{\hbar}{2m\omega} \right)^{1/2} \frac{g}{\hbar \omega} \ket{1}
$$
Interestingly, this is now a combination of two energies in the harmonic well.
$$
\left< \hat{x} \right> = (\bra{0} + \alpha \bra{1} ) x (\ket{0} + \alpha \ket{1} )
$$
Where we have defined the quantity,
$$
\alpha = \left( \frac{\hbar}{2m\omega} \right)^{1/2} \frac{g}{\hbar \omega}
$$
Which implies that,
$$
\bra{\tilde{0}}  \hat{x} \ket{\tilde{0}} = 2\alpha \left( \frac{\hbar}{2m\omega} \right)^{1/2} = \frac{2g}{\hbar \omega} \frac{\hbar}{2m\omega} = \frac{g}{k}
$$
Which is really what you would expect. It appears the position of the ground state has been shifted by some constant amount, scaling with the perturbation.
