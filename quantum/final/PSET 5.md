# Question 1
---
i.
$$
1 = 4\pi \lvert A \rvert ^{2} \int_{0}^{\infty} e^{ -2\beta r/r_{0} } \, dr = 4\pi \lvert A \rvert ^{2} \left( \frac{r}{2\beta} \right) = \frac{2\pi r}{\beta} \lvert A \rvert ^{2}
$$
$$
A = \sqrt{ \frac{\beta^{3}}{\pi r_{0}^{3}} }
$$
---
ii.
$$
H = -\frac{\hbar^{2}}{2m} \nabla^{2} + V(r, t)
$$
$$
\left< H \right> = -\frac{\hbar^{2}}{2m} \left< \nabla^{2} \right> -r_{0}V_{0} \left< \frac{e^{ -r/r_{0} }}{r} \right>
$$
$$
\left< \nabla^{2} \right> = \lvert A \rvert ^{2} \int e^{ -\beta r/r_{0} } \nabla^{2} e^{ -\beta r/r_{0} } \, d^{3}\vec{r}
$$
$$
\left( \frac{\beta}{r_{0}} \right)^{2} \lvert A \rvert ^{2} (4\pi) \int e^{ -2\beta r/r_{0} } (r^{2}) \, dr = \left( \frac{\beta}{r_{0}} \right)^{2} \lvert A \rvert ^{2} \left( \frac{r_{0}^{3}}{4\beta^{3}} \right) (4\pi)
$$
$$
\left( \frac{\beta}{r_{0}} \right)^{2} \left( \frac{\beta^{3}}{\pi r_{0}^{3}} \right) \left( \frac{r_{0}^{3}}{4\beta^{3}} \right) (4\pi) = \left( \frac{2\beta}{r_{0}} \right)^{2}
$$
This question is just integrals. Assuming you do it right, you get,
$$
= \frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \left[ 1 - \frac{4\beta \gamma}{(2\beta+1)^{3}} \right]
$$
Where we have defined,
$$
\gamma = \frac{2\mu r_{0}^{2}}{\hbar}V_{0}
$$
---
iii.
So now we need to solve for the optimal $\beta$
$$
\frac{d}{d\beta} \left< H \right> = \frac{\hbar^{2}}{2\mu r_{0}^{2}} \frac{d}{d\beta} \beta^{2} \left[ 1 - \frac{4\beta \gamma}{(2\beta+1)^{3}} \right] =0
$$
$$
(2\beta+1)^{3} - 2\beta(3-2\beta)\gamma =0
$$
Therefore,
$$
\gamma = \frac{(2\beta+1)^{3}}{2\beta(3+2\beta)}
$$
Substitute this $\gamma$ into our expression for the energy, and you obtain,
$$
\frac{\hbar^{2}\beta^{2}}{2\mu r_{0}^{2}} \frac{1-2\beta}{3+2\beta}
$$
Bound states will arise when $E<0$ or,
$$
1-2\beta < 0 \implies \beta > \frac{1}{2}
$$
