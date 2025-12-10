# Question 1
---
a.
Infinite square well energies and states:
$$
E_{n} = \frac{(n\pi \hbar)^{2}}{2ma^{2}} \qquad \psi_{n}(x) = \sqrt{ \frac{2}{a} } \sin\left( \frac{n\pi x}{a} \right)
$$
First order perturbation on the energies:
$$
E^{1}_{n} = \bra{\psi^{0}_{n}} H' \ket{\psi^{0}_{n}}
$$
Where the perturbation here is,
$$
V(x) = \alpha\delta \left( x-\frac{a}{2} \right)
$$
Therefore,
$$
E^{1}_{n} = \alpha \bra{\psi^{0}_{n}} \delta\left( x-\frac{a}{2} \right) \ket{\psi^{0}_{n}} = \alpha \left( \frac{2}{a} \right) \int \sin ^{2}\left( \frac{n\pi x}{a} \right) \delta\left( x-\frac{a}{2} \right) \, dx = \frac{2\alpha}{a} \sin ^{2}\left( \frac{n\pi}{2} \right)
$$
Note that $\sin ^{2}(n\pi /2)$ is 0 if $n$ is even. Therefore,
$$
E^{1}_{n} = \frac{2\alpha}{a} \qquad \text{if }n\text{ is odd}
$$
And $E^{1}_{n}$ is zero otherwise.

---
b.
The energies are not affected for even $n$ because the even wave functions are always zero at $x=a /2$. So, in a sense, they "do not see" the perturbation.

---
c.
First order correction to the wave function is:
$$
\psi^{1}_{n} = \sum _{m\neq n} \frac{\bra{\psi^{0}_{m}} H' \ket{\psi^{0}_{n}} }{E^{0}_{n} - E^{0}_{m}} \psi^{0}_{m}
$$
For $n=1$,
$$
E_{1} = \frac{(\pi \hbar)^{2}}{2m_{0}a^{2}} \qquad \psi_{1}(x) = \sqrt{ \frac{2}{a} } \sin\left( \frac{\pi x}{a} \right)
$$
Compute,
$$
\bra{\psi^{0}_{m}} H' \ket{\psi_{1}^{0}} = \alpha \left( \frac{2}{a} \right) \int_{0}^{a} \sin\left( \frac{m\pi x}{a} \right) \delta\left( x-\frac{a}{2} \right) \sin\left( \frac{\pi x}{a} \right) \, dx
$$
$$
\frac{2\alpha}{a} \sin\left( \frac{m\pi}{2} \right) \sin\left( \frac{\pi}{2} \right) = \frac{2\alpha}{a} \sin\left( \frac{m\pi}{2} \right)
$$
This is 0 for $n$ even. However, for $n$ odd, it oscillates between 1 and -1.

The difference in energies is,
$$
E^{0}_{n} - E^{0}_{m} = \frac{(\pi \hbar)^{2}}{2m_{0}a^{2}} - \frac{(m\pi \hbar)^{2}}{2m_{0}a^{2}} = \frac{(\pi \hbar)^{2}}{2m_{0}a^{2}} (1-m^{2})
$$
The perturbed function is therefore,
$$
\psi^{1}_{n} = \frac{2\alpha}{a} \sqrt{ \frac{2}{a} } \frac{2m_{0}a^{2}}{(\pi \hbar)^{2}} \sum_{m \neq n, m\text{ odd}} (1-m^{2})^{-1} \sin\left( \frac{m\pi x}{a} \right)
$$
- This is right, and you can just compute the first three non zero terms ($m=3,5,7$) from here.
# Question 3
Inside the well we have,
$$
\Psi(x_{1}, x_{2}) = \psi(x_{1}) \psi(x_{2})
$$
The ground state and first excited states are:
$$
\Psi(x_{1}, x_{2}) = \psi_{0}(x_{1}) \psi_{0}(x_{2})
$$
$$
\Psi(x_{1}, x_{2}) = \psi_{1}(x_{1}) \psi_{0}(x_{2}) \qquad \Psi(x_{1}, x_{2}) = \psi_{0}(x_{1}) \psi_{1}(x_{2})
$$
The energy in the infinite square well:
$$
E_{n} = \frac{(n\pi \hbar)^{2}}{2ma^{2}}
$$
Without the perturbation the energies are,
$$
\left[ \frac{(\pi \hbar)^{2}}{2ma^{2}} \right] ^{2} \qquad  \frac{(\pi \hbar)^{2}}{2ma^{2}} \frac{(2\pi \hbar)^{2}}{2ma^{2}} = \left[ \frac{(2\pi \hbar)^{2}}{2ma^{2}} \right] ^{2}
$$
For first order perturbation theory,
$$
E^{(1)}_{n} = \bra{\psi^{(0)}_{n}} H' \ket{\psi^{(0)}_{n}}
$$
For the ground state,
$$
\Psi(x_{1}, x_{2}) = \frac{2}{a} \sin\left( \frac{\pi x_{1}}{2} \right) \sin\left( \frac{\pi x_{2}}{a} \right)
$$
$$
\left( \frac{2}{a} \right)^{2}(-aV_{0}) \int_{0}^{a} \int_{0}^{a} \sin ^{2}\left( \frac{\pi x_{1}}{2} \right) \sin ^{2}\left( \frac{\pi x_{2}}{2} \right) \delta(x_{1}-x_{2}) \, dx_{1}  \, dx_{2}
$$
$$
-\frac{4V_{0}}{a} \int_{0}^{a} \sin ^{4}\left( \frac{\pi x_{1}}{2} \right) \, dx_{1} = -\frac{3}{2} V_{0}
$$
