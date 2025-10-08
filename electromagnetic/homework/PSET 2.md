![[Pasted image 20251004112822.png]]
The goal is to solve the 3-D Laplace equation in Cartesian coordinates with the boundary conditions:
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
Assuming separable equations in the for $V(x, y, z)=X(x)Y(y)Z(z)$, the Laplace question yields the expression:
$$
\frac{1}{X} \frac{d^{2}X}{dx^{2}} + \frac{1}{Y} \frac{d^{2}Y}{dy^{2}} + \frac{1}{Z} \frac{d^{2}Z}{dz^{2}} =0
$$
Which, because each component must be constant, can be further broken down into the system of equations:
$$
\frac{1}{X} \frac{d^{2}X}{dx^{2}} =C_{1} \qquad  \frac{1}{Y} \frac{d^{2}Y}{dy^{2}} =C_{2} \qquad  \frac{1}{Z} \frac{d^{2}Z}{dz^{2}} =C_{3}
$$
Where,
$$
C_{1} + C_{2} + C_{3} =0
$$
Define $C_{1}=-\alpha^{2}$, $C_{2}=-\beta^{2}$, and $C_{3}=\alpha^{2}+\beta^{2}$. The system of equations becomes,
$$
\frac{d^{2}X}{dx^{2}} = -\alpha^{2}X \qquad \frac{d^{2}Y}{dy^{2}} = -\beta^{2}Y \qquad \frac{d^{2}Z}{dz^{2}} = (\alpha^{2}+\beta^{2})Z
$$
The solutions to $X$ and $Y$ are identical.
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
Where $n\in \mathbb{N}$. Replicating the same algebra for boundary condition 4, I obtain $\beta=m\pi /a$. The solutions to $X(x)$ and $Y(y)$ are therefore:
$$
X(x) = A \sin\left( \frac{n\pi x}{a} \right) \qquad Y(y) = C \sin\left( \frac{m\pi y}{a} \right)
$$
For the last Cartesian dimension, the solution to the differential equation yields the result:
$$
Z(z) = E e^{ \sqrt{ \alpha^{2}+\beta^{2} }z } + F e^{ -\sqrt{ \alpha^{2}+\beta^{2} }z }
$$
From boundary condition 5,
$$
Z(0) = E + F =0 \implies E=-F
$$
Substituting this into $Z(z)$,
$$
\begin{align}
Z(z) & = E (e^{ \sqrt{ \alpha^{2}+\beta^{2} }z } - e^{ -\sqrt{ \alpha^{2}+\beta^{2} }z }) \\
 & = 2E \sinh(\sqrt{ a^{2}+\beta^{2} }z) \\
 & = 2E \sinh\left( \frac{\pi z}{a} \sqrt{ n^{2}+m^{2} } \right)
\end{align}
$$
Collecting the constants and admissible solutions into an infinite sum,
$$
V(x, y, z) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \sinh\left( \frac{\pi z}{a} \sqrt{ n^{2}+m^{2} } \right) \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
According to the remaining boundary condition,
$$
V(x, y, a) = V_{0} = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \sinh\left( \pi \sqrt{ n^{2}+m^{2} } \right) \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
Multiply both sides by $\sin(n'\pi x /a) \sin(m'\pi y /a)$ and integrate in the interval $[0, a]$ to obtain:
$$
\sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \sinh(\pi \sqrt{ n^{2}+m^{2} }) \int_{0}^{a} \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{n'\pi x}{a} \right) \, dx \int_{0}^{a} \sin\left( \frac{m\pi y}{a} \right) \sin\left( \frac{m'\pi y}{a} \right) \, dy
$$
By orthogonality, the above resolves into:
$$
\begin{align}
 & = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} C_{n, m} \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right) \left( \frac{a}{2} \delta_{nn'} \right)\left( \frac{a}{2} \delta_{mm'} \right) \\
 & = \frac{a^{2}}{4} C_{n, m} \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right)
\end{align}
$$
The RHS with the potential is,
$$
V_{0} \int_{0}^{a} \sin\left( \frac{n\pi x}{a} \right) \, dx \int_{0}^{a} \sin\left( \frac{m\pi y}{a} \right) \, dy = V_{0} \left[ \frac{a}{n\pi} (1-\cos(n\pi)) \right] \left[ \frac{a}{m\pi}(1-\cos(m\pi)) \right]
$$
Since $n$ and $m$ are integers by definition, the above can be further simplified into two cases:
$$
= \begin{cases}
4a^{2}V_{0} / \pi^{2}nm & n\text{ and }m \text{ are odd} \\
0 & \text{otherwise}
\end{cases}
$$
The coefficients $C_{n, m}$ are therefore,
$$
\begin{align}
\frac{a^{2}}{4} C_{n, m} \sinh(\pi \sqrt{ n^{2}+m^{2} }) & = \frac{4a^{2}}{\pi^{2}nm} \\
 C_{n, m} & = \frac{16V_{0}}{\pi^{2}nm} \sinh ^{-1}\left( \pi \sqrt{ n^{2}+m^{2} } \right)
\end{align}
$$
The solution can be explicitly written as,
$$
V(x, y, z) =\frac{16V_{0}}{\pi^{2}} \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} \frac{\sinh \left( \pi z\sqrt{ n^{2}+m^{2} } /a \right) }{nm \sinh \left( \pi \sqrt{ n^{2}+m^{2} } \right) } \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
![[Pasted image 20251004163920.png]]
Use triple angle formulae to simplify the boundaries,
$$
V_{0} = k(4 \cos ^{3}\theta - 3 \cos\theta) = 4k \cos ^{3}\theta - 3k \cos\theta
$$
From the textbook, the general solution to the Laplace equation for a sphere is,
$$
V(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + B_{l}r^{-(l+1)} \right)  P_{l}(\cos\theta)
$$
Inside $B_{l}=0$, because otherwise the solution would blow up at the origin. Outside, $A_{l}=0$, because otherwise the solution would blow up at $\infty$. Furthermore, the potential must be continuous at the surface of the sphere, at radius $R$.
$$
\sum_{l=0}^{\infty} A_{l} R^{l} P_{l}(\cos\theta) = \sum_{l=0}^{\infty} \frac{B_{l}}{R^{l+1}} P_{l} (\cos\theta)
$$
The coefficients in the Legendre polynomial must match such that,
$$
A_{l} R^{l} = \frac{B_{l}}{R^{l+1}} \implies A_{l} R^{2l+1} = B_{l}
$$
Applying the boundary conditions to the equation for the potential on the inside of the sphere,
$$
V(R, \theta) = \sum_{l=0}^{\infty} A_{l} R^{l} P_{l} (\cos\theta) = 4k \cos ^{3}\theta - 3k \cos\theta = V_{0}
$$
Based on the order of the boundary conditions, I will attempt to match it with the 1st and 3rd Legendre polynomials.
$$
A_{3} R^{3} \left[ \frac{1}{2}(5x^{3}-3x) \right] + A_{1} R (x) = \frac{5}{2} A_{3} R^{3} x^{3} + \left( A_{1}R - \frac{3}{2}A_{3} R^{3} \right)x = 4kx^{3} - 3kx
$$
Where I have used $x=\cos\theta$. Which yields the system of equations,
$$
\begin{align}
\frac{5}{2} A_{3} R^{3} & =4k \\
A_{1}R - \frac{3}{2}A_{3} R^{3} & = -3k
\end{align}
$$
The solution is,
$$
A_{3} = \frac{8k}{5R^{3}} \qquad A_{1} = -\frac{3k}{5R}
$$
The associated versions for the outside of the sphere are,
$$
B_{3} = \frac{8}{5} kR^{4} \qquad -\frac{3}{5} kR^{2}
$$
Note that all the other coefficients must be zero. To determine the surface charge density, recall that the radial derivative of $V$ has a discontinuity at the surface,
$$
\left[ \frac{ \partial V_\text{out} }{ \partial r } - \frac{ \partial V_\text{in} }{ \partial r }  \right] _{r=R} = -\frac{\sigma_{0}(\theta)}{\epsilon_{0}}
$$
Substituting in the general forms for the potential on the inside and outside of a sphere:
$$
-\sum_{l=0}^{\infty} (l+1) \frac{B_{l}}{R^{l+2}} P_{l}(\cos\theta) - \sum_{l=0}^{\infty} lA_{l} R^{l-1} P_{l}(\cos\theta) = - \frac{\sigma_{0}(\theta)}{\epsilon_{0}}
$$
And, after applying the equivalence of the polynomials derived previously, this generally means that,
$$
\sum_{l=0}^{\infty} (2l+1) A_{l} R^{l-1} P_{l} (\cos\theta) = \frac{\sigma_{0}(\theta)}{\epsilon_{0}}
$$
Explicitly written out, the potentials are,
$$
\begin{align}
\sum_{l=0}^{\infty} A_{l} r^{l} P_{l}(\cos\theta) & = A_{3} r^{3} P_{3}(\cos\theta) + A_{1} r P_{1} (\cos\theta) \\
 & = \frac{4k}{R^{3}} r^{3} \cos ^{3}\theta - \frac{3k}{5R}\left( \frac{4r^{2}}{R^{2}} + 1 \right)  r \cos \theta
\end{align}
$$
$$
\begin{align}
\sum_{l=0}^{\infty} \frac{B_{l}}{r^{l+1}} P_{l} (\cos\theta) & = \frac{B_{3}}{r^{4}} P_{3} (\cos\theta) + \frac{B_{1}}{r^{2}} P_{1} (\cos\theta) \\
 & = 5kR^{4} \frac{\cos ^{3}\theta}{r^{4}} - 3kR^{2}\left( \frac{R^{2}}{r^{2}} + \frac{1}{5} \right) \frac{\cos\theta}{r^{2}}
\end{align}
$$
The surface charge is,
$$
\sigma_{0}(\theta) = \epsilon_{0} \sum_{l=0}^{\infty} (2l+1) A_{l} R^{l-1} P_{l} (\cos\theta) = \frac{k \cos\theta}{5R} (140\cos ^{2}\theta - 93)
$$
