Generally, in quantum mechanics we are most familiar with the Schrodinger representation. The one with some state $\ket{\psi(t)}$ and operators $\hat{A}$.
- We use the familiar Hamiltonian to propagate the wave function through space-time

For example, a state might be summarised as,
$$
\bra{\phi(t)} \hat{A} \ket{\psi(t)}
$$
In the Heisenberg representation, we can instead claim,
$$
\bra{\psi(0)} e^{ -iHt/\hbar }\hat{A} e^{ -iHt/\hbar } \ket{\psi(0)} = \bra{\phi(0)} \hat{A}_{H}(t) \ket{\psi(0)}
$$
Where $H$ is some time-independent $H(t)$. And so instead we have operators evolving in time, as opposed to states evolving in time.
### Interaction Picture
For some Hamiltonian
$$
H(t) = H_{0} + V(t)
$$
In the Schrodinger picture, in the interaction picture we would instead have:
$$
\ket{\psi_{I}(t)} = e^{ iH_{0}t/\hbar } \ket{\psi_{S}(t)}
$$
This factor is particularly chosen so that, if $V=0$, it cancels out the time evolution from the Schrodinger picture,
$$
\ket{\psi_{S}(t)} = e^{ -iH_{0}t/\hbar } \ket{\psi_{S}(t)}
$$
Now, take the time derivative of this state to find,
$$
i \hbar \frac{ \partial  }{ \partial t } \ket{\psi_{I}(t)} = -H_{0} \ket{\psi_{I}(t)} + e^{ iH_{0}t/\hbar } (H_{0} + V(t)) \ket{\psi_{S}(t)}
$$
If you expand out the $\ket{\psi_{S}(t)}$ term, than the final remaining term is,
$$
i\hbar \frac{ \partial  }{ \partial t } \ket{\psi_{I}(t)} = V_{I}(t) \ket{\psi_{I}(t)}
$$
Where of course the subscript $I$ indicates that everything here is in the interaction picture.

From the Heisenberg picture, we can also derive the time evolution of operators:
$$
i\hbar \frac{ \partial  }{ \partial t } A_{I}(t) = \left[ A_{I}(t), H_{0} \right]
$$
And so both the operators and states are evolving in time.

Assume that, initially, the states start out as,
$$
\ket{\psi_{I}(0)} = \ket{\psi(0)} \qquad \hat{A}_{I}(0) = \hat{A}
$$
Lets formulate a formal solution for this system.
$$
i\hbar \frac{ \partial  }{ \partial t } \ket{\psi_{I}^{(0)}(t)} =0 \implies \ket{\psi_{I}^{0}(t)} = \ket{\psi(0)}
$$
$$
i\hbar \frac{ \partial  }{ \partial t } \ket{\psi^{(1)}_{I}(t)} = V_{I}(t) \ket{\psi(0)} \implies \ket{\psi_{I}^{(1)}(t)} = \ket{\psi(0)} + \frac{1}{i\hbar} \int_{0}^{t} V_{I}(t')\ket{\psi(0)}  \, dt'
$$
$$
\ket{\psi_{I}^{(2)}(t)} = \ket{\psi(0)} + \frac{1}{i\hbar} \int_{0}^{t} V_{I}(t_{1})\ket{\psi(0)}  \, dt_{1} + \left( \frac{1}{i\hbar} \right)^{2} \int_{0}^{t} V_{I}(t_{2})\int_{0}^{t_{2}} V_{I}(t_{1})\ket{\psi(0)}  \, dt_{1}  \, dt_{2}
$$
Note that, by using the time ordering operator, we can simplify this nested integral into,
$$
\frac{1}{2} \left( \frac{1}{i\hbar} \right)^{2} \mathcal{T}_{t} \left[ \int_{0}^{t} V_{I}(t_{2}) \int_{0}^{t} V_{I}(t_{1})\ket{\psi(0)}  \, dt_{1}  \, dt_{2}  \right]
$$
- I don't have the definition of the time ordering operator

If you keep continuing these perturbations, you will find that,
$$
\ket{\psi_{I}(t)} = \mathcal{T}_{t} \exp \left( -\frac{i}{h} \int_{0}^{t} V_{I})t' \, dt'  \right)  \ket{\psi(0)}
$$
### Two-level Systems
- Also called Rabi oscillators

Say we have two levels that are $\hbar \omega_{0}$ from each like. Something like a ground state and excited state, or the two states in the spin-1/2 system.

One state might release an energy $\omega$. Generally speaking, $\omega \neq \omega_{0}$, but it is called the *resonant drive* when it is.
- I'm not sure what $\omega$ and $\omega_{0}$ are supposed to represent.

Define:
$$
H_{0} = \hbar \frac{\omega_{0}}{2} (\ket{e} \bra{e} + \ket{g} \bra{g} )= \hbar \frac{\omega_{0}}{2} \sigma_{z}
$$
$$
V(t) = \hbar \Omega(\cos(\omega t) \sigma_{x} + \sin(\omega t)\sigma_{y}) = \hbar \frac{\Omega}{2}(e^{ i\omega t } (\sigma_{x}-i\sigma_{y}) + e^{ -i\omega t } (\sigma_{x}+ i\sigma))
$$
Recall that we have,
$$
\sigma_{x}-i \sigma_{y} = \sigma^+ = \begin{bmatrix}
0 & 2 \\
0 & 0
\end{bmatrix} \qquad \sigma_{x} + i \sigma_{y} = \sigma^- = \begin{bmatrix}
0 & 0 \\
2 & 0
\end{bmatrix}
$$
Therefore,
$$
V(t) = \frac{\hbar \Omega}{4} (e^{ i\omega t } \sigma^- + e^{ -i\omega t } \sigma^+) \implies V_{I}(t) = e^{ i\omega_{0}\sigma_{z}t/2 } \left( \frac{\hbar \Omega}{4} \right) (e^{ i\omega t }\sigma^- + e^{ -i\omega t }\sigma^+) e^{ -i\omega_{0}\sigma_{z}t/2 }
$$
Which becomes,
$$
V_{I}(t) = \frac{\hbar \Omega}{4} \left( e^{ -i\omega t }e^{ i\omega_{0}t } \sigma^+ + e^{ i\omega t }e^{ -i\omega_{0}t } \sigma^- \right)
$$
Notice how this drastically simplifies on resonance, when $\omega=\omega_{0}$.
$$
V_{I}(t) = \frac{\hbar \Omega}{2} \sigma_{x}
$$
With the corresponding state,
$$
\ket{\psi_{I}(t)} = \exp \left( -\frac{i\Omega}{2} \sigma_{x}t \right) \ket{\psi(0)}
$$
If you presume $\ket{\psi(0)}=\ket{-}$, for example, then this becomes,
$$
\ket{\psi_{I}(t)} = \cos\left( \frac{\Omega t}{2} \right)\ket{-} -i \sin\left( \frac{\Omega t}{2} \right) \ket{+}
$$
Which highlights the time evolution behaviour of this state.
- This state oscillates with period $2\pi /\Omega$. This is known as the Rabi oscillations
- $2\pi /\Omega$ is called the *revival time*, and $\Omega$ is called the *coupling strength*

While off-resonance, you will find that,
$$
V_{I}(t) = \frac{\hbar}{2} (\omega_{0}-\omega) \sigma_{z} + \hbar \frac{\Omega}{2} \sigma_{x}
$$
If you imagine the potentials here as magnetic fields. In resonance, they appear to be entirely in the $x$-direction. Whereas here, they are slightly in the $z$-direction as well.

The normalized Rabi frequency the results is,
$$
\Omega_{R} = \sqrt{ \Omega^{2} + (\omega_{0}-\omega)^{2} }
$$
- The probabilities do not completely "swap" in this case. That is, the possibility of the up state appearing here is never 100% unlike the resonance case.