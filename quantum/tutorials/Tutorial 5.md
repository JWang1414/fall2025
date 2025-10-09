### Question 1
---
i.
Setup the spherical integral to find that,
$$
\int \left| \psi(r) \right|^{2}  \, dr^{3} = 4\pi \left| A \right| ^{2} \int_{0}^{\infty} e^{ -2\beta r/r_{0} } r^{2} \, dr
$$
Compute this, you will find that,
$$
= |A|^{2} \frac{\pi r_{0}^{3}}{\beta^{3}}
$$
And so the normalization is,
$$
A = \sqrt{ \frac{\beta^{3}}{\pi r_{0}^{3}} }
$$
---
ii.
The expectation value for the Hamiltonian is,
$$
\left< H \right>  = 4\pi \int \psi^*(r) \left[ \frac{\hbar^{2}}{2m} \partial r (r^{2} \partial r \psi(r)) - r_{0}V_{0} \frac{e^{ -r/r_{0} }}{r} \psi(r) \right] r^{2} \, dr
$$
Where the extra factors of $4\pi$ and $r^{2}$ are once again because the integral is in spherical coordinates. Skipping past the algebra, this results in,
$$
= \frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \left[ 1 - \frac{4\beta \gamma}{(2\beta+1)^{3}} \right]
$$
Where we have defined,
$$
\gamma = \frac{2\mu r_{0}^{2}}{\hbar}V_{0}
$$
---
iii. iv.
We are searching for the optimal value of $\beta$. And so we are searching for,
$$
\frac{ \partial  }{ \partial \beta } \left< H \right> =0
$$
Compute the derivative.
$$
\frac{ \partial  }{ \partial \beta } \left< H \right> = \frac{\hbar^{2}}{2\mu r_{0}^{2}} \left[ 2\beta - \frac{12\beta^{2}\gamma}{(2\beta+1)^{2}} + \frac{16\beta^{3}\gamma}{(2\beta+1)^{3}} \right]
$$
Multiply through by $(2\beta+1)^{3}$, and then simplify into,
$$
(2\beta+1)^{3} - 2\beta(3+2\beta)\gamma =0 \implies \gamma = \frac{(2\beta+1)^{3}}{2\beta(3+2\beta)}
$$
Recall that $\gamma$ is in terms of $V_{0}$. This equation is an expression of $\gamma$ (and therefore $V_{0}$) when $\gamma$ is minimized. Substitute this into $\left< H \right>$ to find the minimized energy for this state,
$$
\left< H \right> = \frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \left[ 1 - \frac{4\beta \gamma}{(2\beta+1)^{3}} \right] \implies E_\text{min} = \frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \frac{1-2\beta}{3+2\beta}
$$
Notice that $E_\text{min}<0$ only for $\beta>1 /2$. This is the requirement we need for there to be bound states.
$$
\beta=\frac{1}{2} \implies V_{0} = 42\text{ MeV}
$$
- If you plot the graph of $E_\text{min}$ is a function of $\beta$, you will find that it will have a "bump" and the beginning before decreasing to infinity
### Question 3
---
This question is incredibly long, and so only the general idea will be passed through.

We are interested in computing the variational energy in terms of $Z_{1}$ and $Z_{2}$, then optimising for $Z_{1}$ and $Z_{2}$.

Define,
$$
\psi_{i}(r_{i}) = \sqrt{ \frac{Z_{i}^{3}}{\pi a^{3}} } e^{ -Z_{i}r_{i}/a }
$$
- This function is normalised
Now, the chosen wave function becomes,
$$
\bar{\psi}(r_{1}, r_{2}) = A' \left[ \psi_{1}(r_{1}) \psi_{2}(r_{2}) + \psi_{1}(r_{2}) \psi_{2}(r_{1}) \right]
$$
Solve for $A'$,
$$
\int \lvert \bar{\psi}(r_{1}, r_{2}) \rvert ^{2} \, dr_{1}^{3} dr_{2}^{3} = 2A'^{2} \left[ 1 + \Omega^{2} \right]
$$
Where,
$$
\Omega = \int \psi^*(r_{1})\psi_{2}(r_{1}) \, dr_{1}^{3} = 8 \left( \frac{\sqrt{ Z_{1}Z_{2} }}{Z_{1}+Z_{2}} \right)^{3}
$$
And so,
$$
A' = \sqrt{ \frac{1}{2(1+\Omega^{2})} }
$$
We are not interested in trying to optimise the variational energy. The Hamiltonian for this state is,
$$
H = \frac{\hbar^{2}}{2m} (\nabla_{1}^{2} + \nabla_{2}^{2}) - \frac{e^{2}}{4\pi\epsilon_{0}} \left[ \frac{1}{r_{1}} + \frac{1}{r_{2}} \right] + \frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{\lvert r_{1}-r_{2} \rvert }
$$
Multiply our state by the Hamiltonian,
$$
\begin{align}
H \bar{\psi}(r_{1}, r_{2}) & = \left\{  \left[ \frac{\hbar^{2}}{2m} (\nabla_{1}^{2} + \nabla_{2}^{2}) - \frac{e^{2}}{4\pi\epsilon_{0}} \left( \frac{Z_{1}}{r_{1}} + \frac{Z_{2}}{r_{2}} \right) \right] \bar{\psi}(r_{1}r_{2})   \right\} \\
 & + \frac{e^{2}}{4\pi\epsilon_{0}} \left[ \frac{Z_{1}-1}{r_{1}} + \frac{Z_{2}-1}{r_{2}} \right] \bar{\psi} + \frac{e^{2}}{4\pi\epsilon_{0}} \frac{1}{\lvert r_{1}-r_{2} \rvert } \bar{\psi}(r_{1}, r_{2})
\end{align}
$$
Notice that the first term in curly brackets looks very similar to a known state. Everything in those brackets simplifies into,
$$
(Z_{1}^{2} + Z_{2}^{2}) E_{1} \bar{\psi} (r_{1}, r_{2})
$$
Where $E_{1}$ is the energy for a single electron in a screened potential.

- We don't have enough time to finish this question. Here are some helpful identities to solve it

$$
\left< \psi_{1}|\psi_{2} \right> = \Omega \qquad \bra{\psi_{1}} \frac{1}{r_{2}} \ket{\psi_{1}} = \frac{Z_{1}}{a} \qquad \bra{\psi_{1}} \frac{1}{r} \ket{\psi_{2}} = \frac{y^{3}}{2ax^{2}}
$$
	Where $y = 2\sqrt{ Z_{1}Z_{2} }$ and $x=Z_{1}+Z_{2}$
$$
\bra{\psi_{2}} \frac{1}{r_{2}} \ket{\psi_{2}}  = \frac{Z_{2}}{a}
$$
The answer to the problem is,
$$
\left< H \right> = \frac{E_{1}}{x^{6}+y^{6}} \left( -x^{8} + 2x^{7} + \frac{1}{2} x^{6} y^{2} - \frac{1}{2} x^{5} y^{2} - \frac{1}{8} x^{3}y^{4} + \frac{11}{8} xy^{6} - \frac{1}{2} y^{8} \right)
$$
And the goal is to optimise this function for $x$ and $y$.
