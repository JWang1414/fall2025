### Question 1
In spherical coordinates, we require that $r>0$. So the azimuthal angle would be flipped by 180 degrees, and the polar angle flipped across 90 degrees.
$$
\theta \to \pi-\theta \qquad \phi \to \phi+\pi
$$
Generally speaking, the normalised eigenfunctions for the hydrogen atom are,
$$
\psi_{nlm}(r, \theta, \phi) = \sqrt{ \left( \frac{2}{na_{0}^*} \right)^{3} \frac{(n-l-1)!}{2n(n+l)!} } e^{ -\rho/2 } \rho^{l} L^{2l+1}_{n-l-1}(\rho) Y^{m}_{l} (\theta, \phi)
$$
Where,
- $\rho=2r /na_{0}^*$
- $a_{0}^*$ is the reduced Bohr radius
- $L^{2l+1}_{n-l-1}(\rho)$ is a generalised Laguerre polynomial of degree $n-l-1$
- $Y^{m}_{l}(\theta, \phi)$ is a spherical harmonic function of degree $l$ and order $m$

Notice that a large majority of this function is invariant under parity. The only thing changing is the spherical harmonic,
$$
Y^{m}_{l}(\theta, \phi) \to Y^m_{l}(\pi-\theta, \phi+\pi)
$$
The spherical harmonics become,
$$
N e^{ im\phi } P^m_{l} (\cos \theta) \to N e^{ im(\phi+\pi) } P^m_{l} (\cos(\pi-\theta))
$$
Note that because $m$ must be an integer,
$$
e^{ im(\phi+\pi) } = e^{ im\phi } e^{ im\pi } = (-1)^m e^{ im\phi }
$$
By the properties of cosine,
$$
\cos(\pi-\theta) = -\cos \theta
$$
- You can substitute this back into the $P$ function but it gets very complicated from there. I'm too tired to do this rn
### Question 2
In momentum basis, the position operator is now,
$$
\hat{x} = i\hbar \frac{ \partial  }{ \partial p }
$$
Similar to the momentum operator in the position basis.

Define some infinitely small momentum boost $T_{\xi}$, then,
$$
\bra{p} T_{\xi} \ket{\psi} = \psi(p-\xi) = \psi(p) - \xi \frac{ \partial \psi }{ \partial p }
$$
Which is equivalent to,
$$
\psi(p) - \xi \frac{i\hbar}{i\hbar} \frac{ \partial \psi }{ \partial p } = \psi(p) - \frac{\xi}{i\hbar} \left( i\hbar \frac{ \partial \psi }{ \partial p }  \right) = \psi(p) + \frac{i\xi}{\hbar} \hat{x} \psi(p)
$$
Factoring out the original function we obtain,
$$
T_{\xi} \psi(p) = \left( 1 + \frac{i\xi}{\hbar}\hat{x} \right) \psi(p) \implies T_{\xi} = \hat{1} + \frac{i\xi}{\hbar} \hat{x}
$$
For some discrete momentum boost $p_{0}$, define $\xi=\frac{p_{0}}{N}$ where $N\to \infty$.
$$
T_{p_{0}} = \left( \hat{1} + \frac{i}{\hbar} \frac{p_{0}}{N} \hat{x} \right)^{N} = e^{ i\hat{x}p_{0}/\hbar }
$$
And so from here it is simple to see that the position operator is the generator of momentum boosts,
$$
e^{ i\hat{x}p_{0}/\hbar } \ket{p} = \ket{p+p_{0}}
$$
- This problem seems equivalent to the one we did in class, showing the momentum is the generator of translations. The only difference is that I swapped into the momentum basis
### Question 3
---
a.
