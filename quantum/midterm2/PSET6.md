### Question 1
---
a.
Recall that the first order correction for the energies from a perturbation are,
$$
E^{(1)}_{n} = \bra{\psi^{(0)}_{n}} H' \ket{\psi^{(0)}_{n}}
$$
Where $\psi^{(0)}_{n}$ are the original unperturbed states.

The eigenfunctions for the infinite square well are,
$$
\psi_{n}(x) = \sqrt{ \frac{2}{L} } \sin\left( \frac{n\pi x}{L} \right)
$$
Where $L$ is the width of the well. In this case, $L=a$. Therefore,
$$
\begin{align}
E^{(1)}_{n} & =\frac{2}{a} \int_{-\infty}^{\infty} \sin\left( \frac{n\pi x}{a} \right) \left[ \alpha \delta\left( x-\frac{a}{2} \right) \right] \sin\left( \frac{n\pi x}{a} \right) \, dx \\
 & = \frac{2\alpha}{a} \int_{-\infty}^{\infty} \sin ^{2}\left( \frac{n\pi x}{a} \right) \delta\left( x-\frac{a}{2} \right) \, dx 
\end{align}
$$
From the Dirac-delta function,
$$
E^{(1)}_{n}= \frac{2\alpha}{a} \sin ^{2} \left( \frac{n\pi}{2} \right)
$$
---
b.
For even $n$, the eigenfunctions are zero in the centre of the well. The centre happens to be the only place where the perturbations affect

Mathematically, this amounts to the first-order correction in the sine function vanishing for all even numbers

---
c.
The first order correction to the eigenfunction is,
$$
\psi^{(1)}_{n} = \sum_{m\neq n} \frac{\bra{\psi^{(0)}_{m}} H' \ket{\psi^{(0)}_{n}} }{(E^{(0)}_{n} - E^{(0)}_{m})} \psi^{(0)}_{m}
$$
In the numerator,
$$
\bra{\psi^{(0)}_{m}} H' \ket{\psi^{(0)}_{n}} = \frac{2\alpha}{a} \sin\left( \frac{n\pi}{2} \right) \sin\left( \frac{m\pi}{2} \right)
$$
I have just copied this over from the first-order correction to the energies.

The energies in the infinite square well are,
$$
E_{n} = \frac{\hbar^{2}\pi^{2}}{2Ma^{2}} n^{2}
$$
The denominator is therefore,
$$
E^{(0)}_{n} - E^{(0)}_{m} = \frac{\hbar^{2}\pi^{2}}{2Ma^{2}} (n^{2}-m^{2})
$$
For the state $\psi^{(1)}_{1}$ we have,
$$
\sin\left( \frac{n\pi}{2} \right) = \sin\left( \frac{\pi}{2} \right) = 1 \qquad n^{2}=1
$$
The non-zero terms are dictated by the values of $m$ inside $\sin(m\pi /2)$. The first three non-zero terms will therefore be for $m=3, 5, 7$. The coefficients are therefore,
$$
-\frac{2\alpha}{a} - \frac{4\hbar^{2}\pi^{2}}{Ma^{2}} \qquad \frac{2\alpha}{a} - \frac{12\hbar^{2}\pi^{2}}{Ma^{2}} \qquad -\frac{2\alpha}{a} - \frac{24\hbar^{2}\pi^{2}}{Ma^{2}}
$$
- From here you can write out the summation with the unperturbed eigenfunctions, but it's pretty boring and simple, so I won't do it
### Question 2
---
a.
For the new potential, the energies are,
$$
E_{n} = \left( n+\frac{1}{2} \right) \sqrt{ 1+\epsilon } \hbar \omega
$$
The Taylor series expansion of $\sqrt{ 1+\epsilon }$ is,
$$
\sqrt{ 1+\epsilon } = \sum_{n=0}^{\infty} \begin{pmatrix}
1 /2 \\
n
\end{pmatrix} \epsilon^{n} = 1 + \frac{\epsilon}{2} - \frac{\epsilon^{2}}{8} + \mathcal{O}(\epsilon^{3})
$$
---
b.
Recall the first-order perturbation to the energy is:
$$
E^{(1)}_{n} = \bra{\psi^{(0)}_{n}} H' \ket{\psi^{(0)}_{n}}
$$
The perturbation to the Hamiltonian is,
$$
V(x) = \frac{1}{2} (1+\epsilon) kx^{2} = \frac{1}{2} kx^{2} + \frac{\epsilon}{2} kx^{2} = V_{0} + V'
$$
$$
H' = V' = \frac{\epsilon}{2} kx^{2}
$$
Therefore,
$$
E^{(1)}_{n} = \bra{\psi^{(0)}_{n}} H' \ket{\psi^{(0)}_{n}} = \epsilon \bra{\psi^{(0)}_{n}} V_{0} \ket{\psi^{(0)}_{n}} = \epsilon E_{n}^{(0)}
$$
$$
E^{(1)}_{n} = \left( n+\frac{1}{2} \right) \epsilon \hbar \omega
$$
This is a result strikingly similar to the Taylor series expansion on the exact answer.
### Question 3
---
a.
Ignoring the interaction between the two particles, the total wave function should just be the product between two wave-functions of the infinite square well.
$$
\ket{\psi} = \ket{\psi_{1} \psi_{2}} = \ket{\psi_{1}} \ket{\psi_{2}}
$$
The ground state is,
$$
\psi(x_{1}, x_{2}) = \psi_{1}(x_{1}) \psi_{1}(x_{2})
$$
With energy,
$$
E_\text{ground} = E_{1} + E_{1} = 2E_{1} = \frac{\hbar^{2}\pi^{2}}{ma^{2}}
$$
The first excited state is,
$$
\psi(x_{1}, x_{2}) = \frac{1}{\sqrt{ 2 }} \left[ \psi_{1}(x_{1})\psi_{2}(x_{2}) + \psi_{2}(x_{1})\psi_{1}(x_{2}) \right]
$$
With energy,
$$
E_\text{first excited} = E_{1} + E_{2} = \frac{\hbar^{2}\pi^{2}}{2ma^{2}} + \frac{2\hbar^{2}\pi^{2}}{ma^{2}} = \frac{5\hbar^{2}\pi^{2}}{2ma^{2}}
$$
- I don't really get how the energies are derived
---
b.
For the ground state we have,
$$
E_{1}^{(1)} = \iint \psi_{1}^*(x_{1}) \psi_{2}^*(x_{2}) (-aV_{0} \delta(x_{1}-x_{2})) \psi_{1}(x_{1})\psi_{2}(x_{2}) \, dx_{1} \, dx_{2}
$$
Which simplifies into,
$$
= -a V_{0} \int_{0}^{a} \lvert \psi_{1}(x) \rvert ^{2} \lvert \psi_{2}(x) \rvert ^{2} \, dx
$$
$$
\psi_{n}(x) = \sqrt{ \frac{2}{L} } \sin\left( \frac{n\pi x}{L} \right)
$$
Hence,
$$
= -aV_{0} \left( \frac{2}{a} \right)^{2} \int_{0}^{a} \sin ^{2}\left( \frac{\pi x}{a} \right) \sin ^{2}\left( \frac{\pi x}{a} \right) \, dx = -\frac{4V_{0}}{a} \int_{0}^{a} \sin ^{4}\left( \frac{\pi x}{a} \right) \, dx
$$
Evaluate the integral,
$$
E^{(1)}_{1} = -\frac{4V_{0}}{a} \left( \frac{3a}{8} \right) = -\frac{3}{2} V_{0}
$$
- You repeat the exact same computation for the first excited state

If you do everything correctly, you find that,
$$
E^{(1)}_{2} = -2V_{0}
$$
So the particle-particle interactions decrease the energies in comparison to the infinite square well states in both cases