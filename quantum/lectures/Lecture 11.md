Recall that the first order correction on the energy of the first state in perturbation theory is:
$$
\varepsilon_{n} = \varepsilon_{n}^{(0)} + \lambda \bra{\psi_{n}^{(0)}} V \ket{\psi_{n}^{(0)}} + \mathcal{O}(V^{2})
$$
And for the function is,
$$
\ket{\psi_{n}} = \ket{\psi_{n}^{(0)}} - \lambda \sum_{m\neq n} \left( \frac{\bra{\psi_{m}^{(0)}} V \ket{\psi_{n}^{(0)}} }{\varepsilon_{m}^{(0)} - \varepsilon_{n}^{(0)}} \right) \ket{\psi_{m}^{(0)}} + \mathcal{O}(V^{2})
$$
Which, using shorthand, can be expressed as:
$$
\varepsilon_{n} = \varepsilon_{n}^{(0)} + V_{nn}
$$
$$
\ket{\psi_{n}} = \ket{\psi_{n}^{(0)}} - \sum_{m\neq n} \frac{V_{mn}}{\varepsilon_{m}^{(0)}-\varepsilon_{n}^{(0)}} \ket{\psi_{m}^{(0)}}
$$
---
Example:
$$
\begin{bmatrix}
a+b & c \\
c^* & a-b
\end{bmatrix} = \begin{bmatrix}
a+b & 0 \\
0 & a-b
\end{bmatrix} + \begin{bmatrix}
0 & c \\
c^* & 0
\end{bmatrix}
$$
For the base matrix we have written, we will label the two energies $a+b$ and $a-b$ are $E_{1}$ and $E_{2}$. The energies we have are,
$$
E_{1} = a+b + V_{11} = a+b + 0 = a+b
$$
$$
E_{2} = a-b
$$
And so, there are no leading order correcting to be made. Define our two states for $H_{0}$ as,
$$
\ket{\psi_{1}^{(0)}} = \begin{bmatrix}
1 \\
0
\end{bmatrix} \qquad \ket{\psi_{2}^{(0)}} = \begin{bmatrix}
0 \\
1
\end{bmatrix}
$$
And so the new wave functions are,
$$
\ket{\psi_{1}} = \ket{\psi_{1}^{(0)}} - \frac{V_{21}}{E_{2}-E_{1}} \ket{\psi_{2}^{(0)}} = \begin{bmatrix}
1 \\
0
\end{bmatrix} - \frac{c^*}{-2b} \begin{bmatrix}
0 \\
1
\end{bmatrix} = \begin{bmatrix}
1 \\
c^* / 2b
\end{bmatrix}
$$
Notice that this state is not normalized. We simply need to normalized this afterwards. The order state is,
$$
\ket{\psi_{2}} = \begin{bmatrix}
-c / 2b \\
1
\end{bmatrix}
$$
These perturbed eigenstates are orthogonal.

---
Example:
$$
H = \frac{p^{2}}{2m} + \frac{1}{2} kx^{2} + gx^{4}
$$
This is just the harmonic oscillator with some added term $gx^{4}$. So, the first order correction on the energies would be,
$$
E_{0} = E_{0}^{(0)} + \bra{\psi_{0}^{(0)}} gx^{4} \ket{\psi_{0}^{(0)}}
$$
Recall that the wave functions for the harmonic oscillator are,
$$
\left( \frac{m\omega}{2\hbar} \right)^{1/4} \int e^{ -m\omega x^{2}/2\hbar } \, dx
$$
And so the expectation value is,
$$
g \left( \frac{m\omega}{2\hbar} \right)^{1/2} \int x^{4} e^{ -m\omega x^{2}/\hbar } \, dx = \frac{3}{4}g \left( \frac{\hbar}{m\omega} \right)^{2}
$$
---
Example, but with the ladder operators this time:
$$
H = \hbar \omega \left( a^{\dagger}a + \frac{1}{2} \right)
$$
$$
\hat{x} = \left( \frac{\hbar}{2m\omega} \right)^{1/2} (a+a^{\dagger})
$$
$$
\hat{p} = i \left( \frac{m\omega \hbar}{2} \right)^{1/2} (a^{\dagger}-a)
$$
Recall the effect these operators have on the eigenstates of the harmonic well
$$
a^{\dagger} \ket{n^{(0)}}  \sqrt{ n+1 } \ket{(n+1)^{(0)}} \qquad a\ket{n^{(0)}}  = \sqrt{ n } \ket{(n-1)^{(0)}}
$$
Now, because the additive term is $gx^{4}$, this can be written out in these terms as,
$$
V = g \left( \frac{\hbar}{2m\omega} \right)^{2} (a+a^{\dagger})^{4}
$$
In this way, the energies are,
$$
E_{n} = E_{n}^{(0)} + g \left( \frac{\hbar}{2m\omega} \right)^{2} \bra{n^{(0)}} (a+a^{\dagger})^{4} \ket{n^{(0)}}
$$
Where of course the base energy here is the familiar
$$
E_{n}^{(0)} = \left( n+\frac{1}{2} \right) \hbar \omega
$$
---
Example:
$$
H = \left( \frac{p^{2}}{2m} - \frac{e^{2}}{4\pi\epsilon_{0}r} \right) + eE_{x}
$$
This is the Hamiltonian for the hydrogen atom. See that there is an additive energy term along the $x$-axis proportional to the electron charge.

Take a look at the ground state.
$$
\psi_{1s}(\vec{r}) = \psi_{1s}^{(0)}(\vec{r}) - \sum_{nlm\neq 100} \frac{\bra{nlm^{(0)}} eE_{x}\ket{100^{(0)}} }{\varepsilon_{nlm}^{(0)} - \varepsilon_{100}^{(0)}} \ket{nlm^{(0)}}
$$
