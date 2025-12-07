![[Pasted image 20251203140215.png]]
I think that this image charge should be placed in the centre. Because the two existing charges cancel each other out on the boundary conditions, and new charge in the centre would adjust the potential on the boundary.

The potential for any point charge is,
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{q}{r}
$$
The potential for this charge is,
$$
V_{0}(R) = \frac{q_{0}}{4\pi\epsilon_{0}R} \implies q_{0} = 4\pi\epsilon_{0} R V_{0}
$$
The force of attraction would be,
$$
F = \frac{1}{4\pi\epsilon_{0}} \left[ \frac{qq'}{(a-b)^{2}} + \frac{qq_{0}}{a^{2}} \right]
$$
- The question asks for a neutral sphere, this means that $q'+q_{0}=0$
- My answers are all correct, it's just algebra from here
![[Pasted image 20251205214941.png]]
General solution for the potential:
$$
V(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + \frac{B_{l}}{r^{l+1}} \right) P_{l}(\cos\theta)
$$
This surface is an equipotential, and so can be solved like any other separation of variables problem. You will find that,
$$
A_{l}R^{l} = \frac{B_{l}}{R^{l+1}} \implies A_{l}R^{2l+1} = B_{l}
$$
Recall that the radial derivative of $V$ has a discontinuity at the surface according to,
$$
\left( \frac{ \partial V_\text{out} }{ \partial r } - \frac{ \partial V_\text{in} }{ \partial r }  \right) \bigg|_{r=R} = - \frac{\sigma_{0}(\theta)}{\epsilon_{0}}
$$
From which we have,
$$
A_{l} = \frac{1}{2\epsilon_{0} R^{l-1}} \int_{0}^{\pi} \sigma_{0}(\theta) P_{l}(\cos\theta) \sin\theta \, d\theta
$$
For $l=1$
$$
\int_{0}^{\pi} \sigma_{0} \cos\theta \sin\theta \, d\theta = 0
$$
For $l=2$
$$
\frac{\sigma_{0}}{2} \int_{0}^{\pi} (3\cos ^{2}\theta -1)\sin\theta \, d\theta = 0
$$
- You can go further and simplify the expression for $A_{l}$ to determine exactly which ones are zero and which ones are non-zero
- I'm too lazy to do that though
![[Pasted image 20251206183250.png]]
Separation of variables, solve Laplace equation where $V=0$ if $x=0,a$, $y=0, a$ and $z=0$. On the remaining boundary condition $V=V_{0}$ on $z=a$.

Equation to solve is,
$$
\frac{1}{X} \frac{d^{2}X}{dx^{2}} + \frac{1}{Y} \frac{d^{2}Y}{dy^{2}} + \frac{1}{Z} \frac{d^{2}Z}{dz^{2}}
$$
Which are all constant.
$$
C_{1}+C_{2}+C_{3}=0
$$
Define,
$$
\frac{d^{2}X}{dx^{2}} = -\beta^{2}X \qquad \frac{d^{2}Y}{dy^{2}} = -\eta^{2}Y \qquad \frac{d^{2}Z}{dz^{2}} = (\beta^{2}+\eta^{2})Z
$$
The solution to these equations are,
$$
X(x) = A \sin(\beta x) + B \cos(\beta x)
$$
$$
Y(y) = C \sin(\eta y) + D \cos(\eta y)
$$
$$
Z(z) = Ee^{ \sqrt{ \beta^{2}+\eta^{2} }z } + F e^{ -\sqrt{ \beta^{2}+\eta^{2} }z }
$$
From the boundary conditions I can conclude:
$$
B=D=0
$$
Furthermore,
$$
A \sin(\beta a) =0 \implies \beta a=n\pi \implies \beta = \frac{n\pi}{a}
$$
Same with $Y$
$$
C \sin(\eta y)=0 \implies \eta = \frac{m\pi}{a}
$$
At $z=0$ we have,
$$
Ee^{ 0 } + Fe^{ 0 } = E+F =0 \implies E=-F
$$
Collecting the admissible solutions into an infinite sum,
$$
V(x, y, z) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} A_{m, n}(e^{ \sqrt{ \beta^{2}+\eta^{2} }z } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }z }) \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
The final boundary condition tells us,
$$
V_{0} = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} A_{m, n}(e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a }) \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
The coefficients are therefore,
$$
A_{m, n}(e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a }) \left( \frac{a^{2}}{4} \right) = \int_{0}^{a} \int_{0}^{a} V_{0} \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right) \, dx  \, dy
$$
$$
A_{m, n} = \frac{4 V_{0}}{a^{2}(e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a })} \int_{0}^{a} \int_{0}^{a} \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right) \, dx  \, dy
$$
Solve this integral,
$$
\int_{0}^{a} \sin\left( \frac{n\pi x}{a} \right) \, dx = \frac{a}{n\pi} (1-\cos(n\pi)) = \begin{cases}
0 & n\text{ even} \\
\frac{2a}{n\pi} & n \text{ odd}
\end{cases}
$$
Therefore,
$$
A_{m, n} = \frac{16V_{0}}{nm\pi^{2}(e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a })}
$$
When $n$ is even and $A_{m, n}=0$ otherwise.

Evaluate the potential at $(a /2, a /2, a /2)$.
$$
V(x, y, z) = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} \frac{16V_{0}}{nm\pi^{2}} \frac{e^{ \sqrt{ \beta^{2}+\eta^{2} }z } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }z }}{e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a }} \sin\left( \frac{n\pi x}{a} \right) \sin\left( \frac{m\pi y}{a} \right)
$$
$$
V = \sum_{n=1}^{\infty} \sum_{m=1}^{\infty} \frac{16V_{0}}{nm\pi^{2}} \frac{e^{ \sqrt{ \beta^{2}+\eta^{2} }a/2 } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a/2 }}{e^{ \sqrt{ \beta^{2}+\eta^{2} }a } - e^{ -\sqrt{ \beta^{2}+\eta^{2} }a }} \sin\left( \frac{n\pi}{2} \right) \sin\left( \frac{m\pi}{2} \right)
$$
$$
V = \sum_{n\text{ odd}}^{\infty} \sum_{m\text{ odd}}^{\infty} \frac{16V_{0}}{mn\pi^{2}} \frac{e^{\sqrt{ n^{2}+m^{2} }\pi/2}}{e^{\sqrt{ m^{2}+n^{2} }\pi}+1}
$$
