![[Pasted image 20251004112822.png]]
3-D problem with the boundary conditions
$$
\begin{cases}
V=0 & x=0 \\
V=0 & x=a \\
V=0 & y=0 \\
V=0 & y=a \\
V=0 & z=0 \\
V=V_{0} & z=a
\end{cases}
$$
Assuming separable equations to the Laplace equation:
$$
\frac{ \partial^{2}V }{ \partial x^{2} } + \frac{ \partial^{2}V }{ \partial y^{2} } + \frac{ \partial^{2}V }{ \partial z^{2} }  =0
$$
$$
V(x, y, z) =X(x) Y(y) Z(z)
$$
$$
\frac{1}{X} \frac{d^{2}X}{dx^{2}} + \frac{1}{Y} \frac{d^{2}Y}{dy^{2}} + \frac{1}{Z} \frac{d^{2}Z}{dz^{2}} =0
$$
Split into separate equations,
$$
\frac{1}{X} \frac{d^{2}X}{dx^{2}} =C_{1} \qquad  \frac{1}{Y} \frac{d^{2}Y}{dy^{2}} =C_{2} \qquad  \frac{1}{Z} \frac{d^{2}Z}{dz^{2}} =C_{3}
$$
Where,
$$
C_{1} + C_{2} + C_{3} =0
$$
Define $C_{1}=-a^{2}$ and $C_{2}=-b^{2}$. Therefore $C_{3}=a^{2}+b^{2}$. The problem is now,
$$
\frac{d^{2}X}{dx^{2}} = -\alpha^{2}X \qquad \frac{d^{2}Y}{dy^{2}} = -\beta^{2}Y \qquad \frac{d^{2}Z}{dz^{2}} = (\alpha^{2}+\beta^{2})Z
$$
The solution for $X$ and $Y$ are the same.
$$
\begin{align}
X(x) & = A \sin(\alpha x) + B \cos(\alpha x) \\
Y(y) & = C \sin(\beta y) + D \cos(\beta y)
\end{align}
$$
From boundary conditions 1 and 3 we have $B=0$ and $D=0$. From boundary condition 2 we have,
$$
X(a) = A \sin(\alpha a) =0 \implies \alpha a = n\pi \implies \alpha = \frac{n\pi}{a}
$$
Where $n\in \mathbb{N}$. Boundary condition 4 implies the same thing, giving $\beta=m\pi /a$. The solutions here are,
$$
X(x) = A \sin\left( \frac{n\pi x}{a} \right) \qquad Y(y) = C \sin\left( \frac{m\pi y}{a} \right)
$$
For the last Cartesian dimension,
$$
Z(z) = E e^{ \sqrt{ \alpha^{2}+\beta^{2} }z } + F e^{ -\sqrt{ \alpha^{2}+\beta^{2} }z }
$$
From boundary condition 5,
$$
Z(0) = E + F =0 \implies E=-F
$$
$$
Z(z) = E (e^{ \sqrt{ \alpha^{2}+\beta^{2} }z } - e^{ -\sqrt{ \alpha^{2}+\beta^{2} }z }) = 2E \sinh(\sqrt{ a^{2}+\beta^{2} }z) = 2E \sinh\left( \frac{\pi z}{a} \sqrt{ n^{2}+m^{2} } \right)
$$
Collecting the admissible solutions into an infinite sum,
$$
V(x, y, z) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \left[ 2 \sinh\left( \frac{\pi z}{a} \sqrt{ n^{2}+m^{2} } \right) \right] \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
Where the constants $A$, $C$, and $E$ have been combined into one $C_{n, m}$.

Use the final boundary condition,
$$
V(x, y, a) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \left[ 2 \sinh\left( \pi \sqrt{ n^{2}+m^{2} } \right) \right] \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right) = V_{0}
$$
Multiply both sides by $\sin(n'\pi x /a) \sin(m'\pi y /a)$ and integrate in the interval $[0, a]$ to obtain:
$$
\sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \dots \int_{0}^{a} \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{n'\pi x}{a} \right) \, dx \int_{0}^{a} \sin\left( \frac{m\pi y}{a} \right) \sin\left( \frac{m'\pi y}{a} \right) \, dy
$$
Which resolves into,
$$
2 \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right) \left( \frac{a}{2} \delta_{nn'} \right)\left( \frac{a}{2} \delta_{mm'} \right)
$$
The Dirac deltas collapse the summation,
$$
\frac{a^{2}}{2} C_{n, m} \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right)
$$
The RHS with the potential is,
$$
V_{0} \int_{0}^{a} \sin\left( \frac{n'\pi x}{a} \right) \, dx \int_{0}^{a} \sin\left( \frac{m'\pi y}{a} \right) \, dy = V_{0} \left[ \frac{a}{n'\pi} (1-\cos(n'\pi)) \right] \left[ \frac{a}{m'\pi}(1-\cos(m'\pi)) \right]
$$
From the Dirac delta we have $n=n'$ and $m=m'$. Furthermore, since $n$ and $m$ are integers, $1-\cos(n\pi)$ is 2 when they are odd, and 0 when they are even. The above simplifies into the cases,
$$
= \begin{cases}
\frac{4a^{2}}{\pi^{2}nm}V_{0} & n\text{ and }m \text{ are odd} \\
0 & \text{otherwise}
\end{cases}
$$
The coefficients $C_{n, m}$ are therefore,
$$
C_{n, m} \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right)  = \frac{2}{a^{2}} \frac{4a^{2}}{\pi^{2}nm} V_{0} = \frac{8V_{0}}{\pi^{2}nm}
$$
$$
C_{n, m} = \frac{8V_{0}}{\pi^{2}nm} \sinh ^{-1}\left( \pi \sqrt{ n^{2}+m^{2} } \right)
$$
Recall that the full series is,
$$
V(x, y, z) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \left[ 2 \sinh\left( \frac{\pi z}{a} \sqrt{ n^{2}+m^{2} } \right) \right] \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
- Substituting this in would be too wide for the page to fit it
![[Pasted image 20251004163920.png]]
