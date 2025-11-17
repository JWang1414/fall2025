Recall the familiar Schrodinger picture is:
$$
H = H_{0} + V(t)
$$
Where the state inside the system is,
$$
\ket{\psi(t)} = \sum_{n} C_{n}(t) e^{ -iE_{n}t/\hbar } \ket{\psi_{n}}
$$
Where we have separated the time dependence of the original function into the coefficients. Recall that, in this picture, the states are the ones evolving in time.
$$
i\hbar \frac{dC_{m}}{dt} = \sum_{n} e^{ iE_{m, n}t/\hbar } C_{n}(t) V_{m, n}(t)
$$
Where we have defined,
$$
E_{m, n} = E_{m} - E_{n} \qquad V_{m, n}(t) = \bra{m} V(t) \ket{n}
$$
The first-order perturbation to this coefficient is,
$$
i\hbar \frac{dC^{(1)}_{m}}{dt} = \sum_{n} e^{ iE_{m, n}t/\hbar } C^{(0)}_{n} V_{m, n}(t)
$$
Solve for $C^{(1)}_{m}$ so that,
$$
C^{(1)}_{m} (t) = -\frac{i}{\hbar} \sum_{n} \int_{0}^{t} e^{ iE_{m, n}t'/\hbar } C^{(0)}_{n} V_{m, n}(t) \, dt'
$$

---

As an example, lets say we have some potential
$$
V(t) = 2\hat{A} \cos(\omega t) = \hat{A} (e^{ i\omega t } + e^{ -i\omega t })
$$
Assume that $\hat{A}$ is a hermitian operator.
- Makes sense, this is supposed to emulate a physical system

Note that,
$$
V_{mn} = A_{mn} (e^{ i\omega t } + e^{ -i\omega t })
$$
Substitute this into the perturbation we defined earlier to obtain:
$$
C^{(1)}_{m}(t) = \dots \sum_{n} \int_{0}^{t} \dots A_{mn}(e^{ i\omega t' } + e^{ -i\omega t' }) \, dt'
$$
I have omitted re-writing most of the expression here. We will also define the new quantities:
$$
\frac{E_{n}}{\hbar} = \omega_{n} \qquad \frac{E_{m}}{\hbar} = \omega_{m} \qquad \frac{E_{mn}}{\hbar} = \omega_{mn}
$$
This integral is,
$$
C^{(1)}_{m} (t) = -\frac{i}{\hbar} \sum_{n} C^{(0)}_{n} A_{mn} \left[ \frac{e^{ i(\omega_{mn}+\omega)t }-1}{i(\omega_{mn}+\omega)} + \frac{e^{ i(\omega_{mn}-\omega)t }-1}{i(\omega_{mn}-\omega)} \right]
$$
Define:
$$
C^{(0)}_{n} = \delta_{n, i} \qquad m=f
$$
These can kind of be imagined as the initial and final states. $f$ is intended to be the final state of interest, and $i$ is the initial. So, from the initial state to the final state we now have:
$$
C^{(1)}_{f} (t) = -\frac{i}{\hbar} \sum_{n} C^{(0)}_{n} A_{fi} \left[ \frac{e^{ i(\omega_{fi}+\omega)t }-1}{i(\omega_{fi}+\omega)} + \frac{e^{ i(\omega_{fi}-\omega)t }-1}{i(\omega_{fi}-\omega)} \right]
$$
- Wait, what happened to the coefficient term $C^{(0)}_{n}$?
The probability distribution is hence something like:
$$
\mathcal{P}_{i\to f} (t) = \frac{1}{\hbar^{2}} \lvert A_{fi} \rvert ^{2} I(\omega_{fi}, \omega, t)
$$
- There is a diagram here that I cannot draw, obviously

Physically, this implies that, over a very short period of time, it is very challenging to resolve energy differences. You need to wait a while for the energies to resolve and "split up".
- Experimentally though, everything in this range is really small. So waiting in the range of picoseconds is usually enough to resolve the energies

Lets focus on the portion that is on the right, at $\omega_{fi}$
$$
\begin{align}
I(\omega_{fi}, \omega \propto \omega_{fi}, t) & = \left| \frac{e^{ i(\omega_{fi}-\omega)t }-1}{i(\omega_{fi}-\omega)} \right|^{2} \\
 & = \frac{4 \sin ^{2}\left( \frac{(\omega_{fi}-\omega)t}{2} \right)}{(\omega_{fi}-\omega)^{2}}
\end{align}
$$
And, after a while, this will look similar to,
$$
I = 2\pi t \delta(\omega_{fi}-\omega)
$$
Substituting this back into our expression for the probability we get:
$$
\mathcal{P}_{i\to f} (t) = \frac{2\pi}{\hbar^{2}} \lvert A_{fi} \rvert ^{2} t \delta (\omega-\omega_{fi})
$$
And, the transition rate is:
$$
\Gamma_{i\to f} = \frac{2\pi}{\hbar^{2}} \lvert A_{fi} \rvert ^{2} \delta (\omega-\omega_{fi})
$$
