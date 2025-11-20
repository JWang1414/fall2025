# Question 1
---
i.
Recall that the perturbation for the first coefficient is,
$$
c^{(1)}_{-} (t) = \frac{i}{\hbar} \int_{-\infty}^{t} H_{+ -}(t') e^{ i\omega_{0}t' } \, dt'
$$
Where we have an energy difference of $\hbar \omega_{0}$. We are interested in the case when $t\to \infty$, so this integral becomes:
$$
c^{(1)}_{-} (t) = \frac{i}{\hbar} \int_{-\infty}^{\infty} \frac{\alpha}{\tau \sqrt{ \pi }} \exp \left[ -\left( \frac{t'}{\tau} - i \frac{\omega_{0}\tau}{2} \right)^{2}  - \left( \frac{\omega_{0}\tau}{2} \right)^{2} \right]  \, dt'
$$
Where we have completed the square to simplify the exponential. The integral is now relatively simple to compute. You should find that:
$$
c^{(1)}_{-} (\infty) = -\frac{i\alpha}{\hbar} e^{ -(\omega_{0}\tau)^{2}/4 }
$$
The probability that the state swaps is the square of this:
$$
\mathcal{P}^{(1)}_{+ \to -} = \left| c^{(1)}_{-}(\infty) \right| ^{2} = \frac{\alpha^{2}}{\hbar^{2}} e^{ -(\omega_{0}\tau)^{2}/2 }
$$
---
ii.
In the case when $\tau\to 0$, the probability reduces into:
$$
\mathcal{P}^{(1)}_{+ \to -} \to \frac{\alpha^{2}}{\hbar^{2}}
$$
And so, from the instant kick, part of the state appears to instantaneously swap from one state to another
- Not very physical, because it must result from something turning off and on instantly

---
iii.
In the opposite case when $\tau\to \infty$,
$$
\mathcal{P}^{(1)}_{+ \to -} \to 0
$$
And so there is no transition in the state
- This change is called adiabatic
# Question 3
This problem is actually possible to be solved exactly. We get that,
$$
\ket{\psi} = \hat{\tau} \exp \left( -\frac{i}{\hbar} \int_{-\infty}^{t} H(t') \, dt'  \right) \ket{\psi_{0}}
$$
Where $\hat{\tau}$ is the time ordering operator. You can see here that if you take $t\to 0$, then the integral will vanish, and so the state you receive is just $\ket{\psi_{0}}$.
- The reason the integral vanishes is because the Hamiltonian doesn't exist for $t<0$. So the bounds are just 0 and 0.

Okay, well, what if we use perturbation theory then?
$$
c^{(1)}_{+} = -\frac{i}{\hbar}  \int_{0}^{t} H_{+ -}(t') e^{ -i\omega_{0}t' } \, dt' = -\frac{i}{\hbar}  \int_{0}^{t} B e^{ -i\omega_{0}t' } \, dt'
$$
Once, again in the limit, this reduces to 0,
$$
\lim_{ t \to 0^+ } c^{(1)}_{+}(t) =0
$$
The exact solution tells us that there are no higher order terms.

---

For $t>0$, the eigenstates of the Hamiltonian are $\ket{+}_{x}$ and $\ket{-}_{x}$, with the energies $E=\pm B$.

For some arbitrary state $\ket{\psi(0)}$, the time dependency can be represented as some time dependent term:
$$
\ket{\psi(t)} = c_{+x} e^{ -iE_{+x}t/\hbar } \ket{+} _{x} + c_{-x} e^{ -iE_{-x}t/\hbar } \ket{-} _{x}
$$
We are starting in the down state:
$$
\ket{\psi_{0}} = \ket{-} = \frac{1}{\sqrt{ 2 }} \ket{+} _{x} - \frac{1}{\sqrt{ 2 }} \ket{-} _{x}
$$
If you express $\ket{\psi(t)}$ in terms of the $z$-basis, than you should find that:
$$
\ket{\psi(t)} = -i \sin\left( \frac{B}{\hbar}t \right) \ket{+} + \cos\left( \frac{B}{\hbar}t \right)\ket{-}
$$
This is a Rabi oscillation. This state, under the driving force from the applied magnetic field, begins to oscillate between the down and up states.
# Question 2
---
i.
The perturbation on this Hamiltonian is proportional to:
$$
H_{0n} (t) \propto \bra{0} x^{3} \ket{n}  \frac{A}{\tau} e^{ -t^{2}/\tau }
$$
The $x$ operator is composed of one raising and lowering operator, and so we can conclude that this is 0 for $n>3$ and $=2$.
