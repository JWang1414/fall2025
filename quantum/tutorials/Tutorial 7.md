### Question 1
Use the perturbation,
$$
H' = \frac{e^{2}}{4\pi\epsilon_{0}} \left( \frac{1}{b} - \frac{1}{r} \right) \qquad \text{for }0<r<b
$$
Recall that the ground state wave function and associated energy is,
$$
\psi(r) = \frac{1}{\sqrt{ \pi a^{3} }}e^{ -r/a } \qquad E_{0} = -\frac{e^{2}}{2(4\pi\epsilon_{0})} \frac{1}{a}
$$
Where $a$ is the Bohr radius. The change in the energy is related to this inner product,
$$
\begin{align}
\Delta E & = \bra{\psi} H' \ket{\psi}  \\
 & = -\frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{\pi a^{3}} 4\pi  \int_{0}^{b} \left( \frac{1}{b} - \frac{1}{r} \right) e^{ -2r/a } (r^{2}) \, dr  \\
 & = \frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{a} \left[ \left( 1-\frac{a}{b} \right) + \left( 1+\frac{a}{b} \right) e^{ -2b/a } \right]
\end{align}
$$
Expand the exponential as a Taylor series to find that the portion in brackets simplifies to:
$$
= \frac{\epsilon^{2}}{6} + \mathcal{O}(\epsilon^{3}) \approx \frac{4}{6} \left( \frac{b}{a} \right)^{2}
$$
Where we have defined the new quantity $\epsilon=2b /a$. Therefore we have,
$$
\frac{\Delta E}{E} = -\frac{4}{3} \left( \frac{b}{a} \right)^{2}
$$
Estimated for $b=10^{-15}$ we have,
$$
\frac{\Delta E}{E} \approx -5 \times 10^{-10}
$$
So the change here (for the ground state) is incredibly small.
### Question 2
---
a.
We know that,
$$
H(\lambda) \ket{\psi_{n}} = E_{n} \ket{\psi_{n}}
$$
Take $\partial \lambda$ on both sides to get,
$$
\frac{ \partial H(\lambda) }{ \partial \lambda } \ket{\psi_{n}} + H \frac{ \partial  }{ \partial \lambda } \ket{\psi_{n}} = \frac{ \partial E_{n} }{ \partial \lambda } \ket{\psi_{n}} + E_{n} \frac{ \partial  }{ \partial \lambda } \ket{\psi_{n}}
$$
Multiply both sides by $\bra{\psi_{n}}$
$$
\bra{\psi_{n}} \frac{ \partial H(\lambda) }{ \partial \lambda } \ket{\psi_{n}} + \bra{\psi_{n}} H(\lambda) \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } } = \frac{ \partial E_{n} }{ \partial \lambda } \left< \psi_{n} | \psi_{n} \right> + E_{n} \left< \psi_{n} | \frac{ \partial \psi_{n} }{ \partial \lambda }  \right>
$$
By the hermicity of the Hamiltonian, the 2nd term on the left-side is equivalent to the 2nd term on the right-side. Therefore, this simplifies into,
$$
\frac{ \partial E_{n} }{ \partial \lambda } = \left< \psi_{n} \left| \frac{ \partial H }{ \partial \lambda }  \right| \psi_{n} \right>
$$
As needed.

---
b.
The energies in the harmonic well become,
$$
\frac{ \partial E_{n} }{ \partial \lambda } = \frac{ \partial  }{ \partial \lambda } \left[ \left( n+\frac{1}{2} \right) \hbar \lambda \right] = \left( n+\frac{1}{2} \right)\hbar
$$
And the Hamiltonian becomes,
$$
\frac{ \partial H }{ \partial \lambda } = m\lambda x^{2}
$$
Therefore we have,
$$
\left( n+\frac{1}{2} \right)\hbar = \bra{\psi_{n}}  m\lambda x^{2} \ket{\psi_{n}} \implies \left< x^{2} \right> = \left( n+\frac{1}{2} \right) \frac{\hbar}{m\lambda}
$$

---

Lets try another example with $\hbar=\lambda$
$$
H(\lambda) = - \frac{\lambda^{2}}{2m} \frac{ \partial^{2}  }{ \partial x^{2} } + \frac{1}{2} m\omega^{2} x^{2}
$$
So,
$$
\frac{ \partial H }{ \partial \lambda } = \frac{2}{\lambda} \left( - \frac{\lambda^{2}}{2m} \frac{ \partial^{2} }{ \partial x^{2} }  \right) = \frac{2}{\lambda} T
$$
Where we have defined the kinetic energy $T$. Therefore,
$$
\frac{ \partial E_{n} }{ \partial \lambda } = \left( n+\frac{1}{2} \right) \omega = \frac{2}{\lambda} \left< T \right> _{n} \implies \left< T_{n} \right> = \left( n+\frac{1}{2} \right) \frac{\hbar \omega}{2}
$$

---

If we take $m=\lambda$. Then we now have,
$$
0 = -\frac{1}{m} \left< T \right> + \frac{1}{m} \left< V \right>
$$
$$
\left< T \right> = \left< V \right>
$$
### Question 3
The full Hamiltonian of the system will involve every single interaction,
$$
H = H_{e_{1}, p_{1}} + H_{e_{2}, p_{2}} + H_{pp} + H_{e e} + H_{p_{1}, e_{2}} + H_{p_{2}, e_{1}}
$$
However, beyond the first two terms, the other will be incredibly small. We will denote 4 smaller terms at the perturbation $H'$. It an be expanded into,
$$
H' = \frac{e^{2}}{4\pi\epsilon_{0}} \left[ \frac{1}{|R|} - \frac{1}{|R+r_{2}-r_{1}|} - \frac{1}{|R+r_{2}|} - \frac{1}{|R-r_{1}|} \right]
$$
Expand in terms of,
$$
\epsilon_{1} = \left\lvert  \frac{r_{1}}{R}  \right\rvert \qquad \epsilon_{2} = \left\lvert  \frac{r_{2}}{R}  \right\rvert
$$
