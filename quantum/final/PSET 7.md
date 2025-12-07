# Question 1
The Coulomb potential is,
$$
V_{0}(r) = -\frac{e^{2}}{4\pi\epsilon_{0}r}
$$
So the difference between this potential and the new potential is,
$$
V(r) = \frac{e^{2}}{4\pi\epsilon_{0}r} - \frac{e^{2}}{4\pi\epsilon_{0}b} = \frac{e^{2}}{4\pi\epsilon_{0}} \left( \frac{1}{r} - \frac{1}{b} \right)
$$
This is the perturbation. According to first order perturbation theory,
$$
E^{1}_{n} = \left< \psi^{0}_{n}  | H' | \psi^{0}_{n} \right>
$$
$$
\psi_{100}(r, \theta, \phi) = \frac{1}{\sqrt{ \pi a_{0}^{3} }} e^{ -r/a }
$$
Therefore,
$$
\frac{1}{\pi a_{0}^{3}} \frac{e^{2}}{4\pi\epsilon} \iiint \left( \frac{1}{r}-\frac{1}{b} \right) e^{ -2r/a } (r^{2} \sin\theta) \, dr \, d\theta \, d\phi
$$
Where the integral over the radius is taken from 0 to $b$. The answer to this integral is,
$$
\frac{e^{2}}{4\pi\epsilon_{0}a_{0}} \left[ \left( 1-\frac{a}{b} \right) + \left( 1+\frac{a}{b} \right)e^{ -2b/a } \right]
$$
Approximate $2b /a$ as small, and expand the exponential into a Taylor series. The terms cancel out, and you should be left with
$$
\Delta E = \frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{a} \frac{4b^{2}}{6a^{2}}
$$
The ground state energy is,
$$
E_{0} = - \frac{e^{2}}{2(4\pi\epsilon_{0})} \frac{1}{a_{0}}
$$
So,
$$
\frac{\Delta E}{E} = -\frac{4}{3} \left( \frac{b}{a} \right)^{2}
$$
Now you can just substitute in the given value for $b$.
# Question 2
---
a.
For this Hamiltonian we know
$$
H \ket{\psi_{n}} = E_{n} \ket{\psi_{n}}
$$
Differentiate,
$$
\frac{ \partial H }{ \partial \lambda } \ket{\psi_{n}} + H \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } } = \frac{ \partial E_{n} }{ \partial \lambda } \ket{\psi_{n}} + E_{n} \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } }
$$
Multiply by $\bra{\psi_{n}}$
$$
\bra{\psi_{n}} \frac{ \partial H }{ \partial \lambda } \ket{\psi_{n}} + \bra{\psi_{n}}  H \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } } =\bra{\psi_{n}}  \frac{ \partial E_{n} }{ \partial \lambda } \ket{\psi_{n}} +\bra{\psi_{n}}  E_{n} \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } }
$$
By the hermicity of $H$
$$
\bra{\psi_{n}} \frac{ \partial H }{ \partial \lambda } \ket{\psi_{n}} + \bra{\psi_{n}} E_{n} \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } } =\bra{\psi_{n}}  \frac{ \partial E_{n} }{ \partial \lambda } \ket{\psi_{n}} +\bra{\psi_{n}}  E_{n} \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } }
$$
This new term cancels out the term on the right, so:
$$
\left< \psi_{n} \left| \frac{ \partial H }{ \partial \lambda }  \right| \psi_{n} \right> = \frac{ \partial E_{n} }{ \partial \lambda }
$$
---
b.
$$
\frac{ \partial H }{ \partial \lambda } = m\lambda x^{2}
$$
Energies in the Harmonic oscillator are,
$$
\left( n+\frac{1}{2} \right)\hbar \lambda = \left( n+\frac{1}{2} \right) \hbar
$$
So,
$$
\bra{\psi_{n}} x^{2} \ket{\psi_{n}} = \left( n+\frac{1}{2} \right) \frac{\hbar}{m\omega}
$$
As needed.