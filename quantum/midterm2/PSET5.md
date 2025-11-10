### Question 1
---
i.
$$
\int \lvert \psi(r) \rvert^{2}  \, dr^{3} = \lvert A \rvert ^{2} \int e^{ -2\beta r/r_{0} } \, dr^{3}
$$
Where I have assumed $\beta \in \mathbb{R}$.
$$
= 4\pi \lvert A \rvert ^{2} \int_{0}^{\infty} r^{2} e^{ -2\beta r/r_{0} } \, dr = 4\pi \lvert A \rvert ^{2} \left( \frac{r_{0}^{3}}{4\beta^{3}} \right)
$$
To normalize this function, this must be 1,
$$
4\pi \lvert A \rvert ^{2} \left( \frac{r_{0}^{3}}{4\beta^{3}} \right) =1 \implies \lvert A \rvert ^{2} = \frac{1}{4\pi} \frac{4\beta^{3}}{r_{0}^{3}} = \frac{\beta^{3}}{\pi r_{0}^{3}}
$$
Therefore,
$$
A = \sqrt{ \frac{\beta^{3}}{\pi r_{0}^{3}} }
$$
---
ii.
The Hamiltonian for this system is,
$$
H = \frac{p^{2}}{2m} - r_{0} V_{0} \frac{e^{ -r/r_{0} }}{r}
$$
Therefore we have,
$$
\left< H \right> = \frac{1}{2m}\left< p \right> - r_{0}V_{0} \left< \frac{e^{ -r/r_{0} }}{r} \right>
$$
Solve for $\left< p \right>$,
$$
\begin{align}
\left< p \right>  & = \bra{\psi} p \ket{\psi} = -\hbar^{2} \bra{\psi} \nabla^{2} \ket{\psi}  \\
 & = -\hbar^{2} \lvert A \rvert ^{2} \int e^{ -\beta r/r_{0} } \nabla^{2} e^{ -\beta r/r_{0} } \, dr^{3}  \\
 & = -4\pi \hbar^{2} \lvert A \rvert ^{2} \int r^{2} e^{ -\beta r/r_{0} } \nabla^{2} e^{ -\beta r/r_{0} } \, dr  \\
 & = 0
\end{align}
$$
- I probably should have been able to tell this because the momentum operator is odd, and the given function $\psi$ is even. Everything in that integral is even except for $\hat{p}$.

Solve for the second half,
$$
\begin{align}
\left< \frac{e^{ -r/r_{0} }}{r} \right>  & = \left< \psi \left\lvert  \frac{e^{ -r/r_{0} }}{r}  \right\rvert \psi \right>  \\
 & = \lvert A \rvert ^{2} \int e^{ -\beta r/r_{0} } \left( \frac{e^{ -r/r_{0} }}{r} \right) e^{ -\beta r/r_{0} } \, dr^{3}  \\
 & = 4\pi \lvert A \rvert ^{2} \int_{0}^{\infty} r e^{ -2\beta r/r_{0} } e^{ -r/r_{0} } \, dr  \\
 & = 4\pi \lvert A \rvert ^{2} \left[ \frac{r_{0}^{2}}{(2\beta+1)^{2}} \right]  \\
 \left< \frac{e^{ -r/r_{0} }}{r} \right>  & = \frac{4\sqrt{ \pi r_{0}\beta^{3} }}{(2\beta+1)^{2}}
\end{align}
$$
$\left< H \right>$ is therefore,
$$
\left< H \right> = \frac{\left< p \right> }{2m} - r_{0}V_{0} \left< \frac{e^{ -r/r_{0} }}{r} \right> = - r_{0}V_{0} \left( \frac{4\sqrt{ \pi r_{0}\beta^{3} }}{(2\beta+1)^{2}} \right)
$$
 - I keep getting the wrong numbers here
---
iii.
The correct answer for part 2 is,
$$
\left< H \right> = \frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \left[ 1 - \frac{4\beta \gamma}{(2\beta+1)^{3}} \right] \qquad \text{where } \gamma = \frac{2\mu r_{0}^{2}}{\hbar}V_{0}
$$
Minimize this for $\beta$,
$$
\left< H \right> = \frac{\hbar^{2}}{2\mu r_{0}^{2}} \left[ \beta^{2} - \frac{4\beta^{3}\gamma}{(2\beta+1)^{3}} \right]
$$
$$
\frac{d}{d\beta} \left< H \right> = \frac{\hbar^{2}}{2\mu r_{0}^{2}} \left[ \frac{d}{d\beta} \beta^{2} - \frac{d}{d\beta} \frac{4\beta^{3}\gamma}{(2\beta+1)^{3}} \right] = \frac{\hbar^{2}}{2\mu r_{0}^{2}} \left[ 2\beta - \frac{12\beta^{2}\gamma}{(2\beta+1)^{4}} \right] =0
$$
Factoring out $2\beta$ and optimize for $\beta$,
$$
2\beta \left[ 1 - \frac{6\beta \gamma}{(2\beta+1)^{4}} \right] =0 \implies (2\beta+1)^{4} - 6\beta \gamma =0
$$
