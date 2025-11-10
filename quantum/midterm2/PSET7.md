### Question 1
Use the perturbation,
$$
H' = \frac{e^{2}}{4\pi\epsilon_{0}} \left( \frac{1}{b} - \frac{1}{r} \right) \qquad \text{for }0<r<b
$$
- I think this perturbation is because we're basing this off the hydrogen atom states, and we need to cancel out the $1 /r$ term? Since we're just interested in the constant potential inside the proton, we remove that portion.

The ground state of the hydrogen atom and the associated energies are:
$$
\psi(r) = \frac{1}{\sqrt{ \pi a^{3} }}e^{ -r/a } \qquad E_{0} = -\frac{e^{2}}{2(4\pi\epsilon_{0})} \frac{1}{a}
$$
According to perturbation theory the first order corrections to the energy is,
$$
E^{1}_{1} = \bra{\psi} H' \ket{\psi} = \frac{1}{\pi a^{3}} \frac{e^{2}}{4\pi\epsilon_{0}} \int e^{ -r/a } \left( \frac{1}{b} - \frac{1}{r} \right) e^{ -r/a } \, dr^{3}
$$
Compute this integral,
$$
= 4\pi \int_{0}^{b} e^{ -2r/a } \left( \frac{1}{b} - \frac{1}{r} \right)r^{2} \, dr = -\frac{a^{2}e^{ -2b/a }}{4b} \left[ (b-a)e^{ 2b/a } + b + a \right]
$$
Substitute back in,
$$
E_{1}^{1} = \frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{a} \left[ \left( 1-\frac{a}{b} \right) + \left( 1+\frac{a}{b} \right) e^{ -2b/a } \right]
$$
Expand the bracketed term as a Taylor series
$$
e^{ -2b/a } = \sum_{k=0}^{\infty} \frac{2^{k}}{k!} \left( -\frac{b}{a} \right)^{k} = \sum_{k=0}^{\infty} \frac{(-2)^{k}}{k!}\left( \frac{b}{a} \right)^{k}
$$
$$
\left( 1+\frac{a}{b} \right)e^{ -2b/a } = e^{ -2b/a } + \sum_{k=0}^{\infty} \frac{(-2)^{k}}{k!} \left( \frac{b}{a} \right)^{k-1}
$$
I think this expands into something like,
$$
1 - \frac{a}{b} + \left( 1 - \frac{2b}{a} + \dots \right) + \left( \frac{a}{b} -2 + \frac{2b}{a} + \dots \right)
$$
All of these terms cancel each other out,
$$
\frac{2b^{2}}{a^{2}} - \frac{4b^{2}}{3a^{2}} = \frac{2}{3} \frac{b^{2}}{a^{2}}
$$
I believe that this is the first term that doesn't cancel out. Therefore we have that,
$$
\frac{\Delta E}{E} = -\frac{4}{3} \left( \frac{b}{a} \right)^{2}
$$
Substitute in $b=10^{-15}$ to find that,
$$
\frac{\Delta E}{E} \approx -5 \times 10^{-10}
$$
This number is significantly smaller than the fine structure constant
### Question 2
---
a.
Suppose we have some Hamiltonian $H$ with associated eigenfunctions such that,
$$
H \ket{\psi_{n}} =E_{n} \ket{\psi_{n}}
$$
Take the derivative,
$$
\frac{ \partial H }{ \partial \lambda } \ket{\psi_{n}} + H \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } } = \frac{ \partial E_{n} }{ \partial \lambda } \ket{\psi_{n}} + E_{n} \ket{\frac{ \partial \psi_{n} }{ \partial \lambda } }
$$
Multiply both sides by $\bra{\psi_{n}}$
$$
\left< \psi_{n} \left| \frac{ \partial H }{ \partial \lambda }  \right| \psi_{n} \right> + \left< \psi_{n} \left| H \right| \frac{ \partial \psi_{n} }{ \partial \lambda }  \right> = \frac{ \partial E_{n} }{ \partial \lambda } \left< \psi_{n} | \psi_{n} \right> + E_{n} \left< \psi_{n} | \frac{ \partial \psi_{n} }{ \partial \lambda }  \right>
$$
By the hermicity of $H$ we have,
$$
\left< \psi_{n} \left| H \right| \frac{ \partial \psi_{n} }{ \partial \lambda }  \right> = E_{n} \left< \psi_{n} | \frac{ \partial \psi_{n} }{ \partial \lambda }  \right>
$$
Which cancels out the identical term on the opposite side. This yields,
$$
\frac{ \partial E_{n} }{ \partial \lambda } = \left< \psi_{n} \left| \frac{ \partial H }{ \partial \lambda }  \right| \psi_{n} \right>
$$
As needed.

---
b.
Energies in the harmonic well are,
$$
E_{n} = \left( n+\frac{1}{2} \right) \hbar \omega \to \left( n+\frac{1}{2} \right) \hbar \lambda
$$
Furthermore,
$$
\frac{ \partial H }{ \partial \lambda } = m\lambda x^{2}
$$
Therefore,
$$
\frac{ \partial E_{n} }{ \partial \lambda } = \left< \psi_{n} \left| \frac{ \partial H }{ \partial \lambda }  \right| \psi_{n} \right> \implies \left( n+\frac{1}{2} \right) \hbar = m\lambda \left< x^{2} \right>
$$
Re-arrange to find,
$$
\left< x^{2} \right> = \left( n+\frac{1}{2} \right) \frac{\hbar}{m\omega}
$$
