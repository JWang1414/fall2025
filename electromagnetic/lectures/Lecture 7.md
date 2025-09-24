### Separation of variables
Given the Laplace equation $\nabla^{2}\phi=0$ with the boundary conditions,
- $\phi(x, a, z)=\phi(x, 0, z)=0$
- $\phi(x\to \infty, y, z)=0$
- $\phi(0, y, z)=V_{0}(y)$

Notice that $\phi$ is independent of $z$. So, the equation can be simplified into,
$$
\frac{ \partial^{2}\phi }{ \partial x^{2} } + \frac{ \partial^{2}\phi }{ \partial y^{2} } =0
$$
Look for solution in the form $X(x)Y(y)$. Substitute this into the given problem,
$$
X''Y + XY'' =0 \implies \frac{X''}{X} = -\frac{Y''}{Y} = k^{2}
$$
Split this into the two problems,
$$
X''=k^{2}X \qquad Y''=-k^{2}Y
$$
Therefore,
$$
X(x) = Ae^{ -kx } + Be^{ kx }
$$
But $B=0$ because $x\to \infty$ must vanish.

Furthermore,
$$
Y''=-k^{2}Y \implies Y(y) = A \sin(ky) + B \cos(ky)
$$
Conclude that $Y(y)=A\sin(ky)$.

The boundary conditions $\phi(x, 0)=\phi(x, a)=0$ require that $ka=n\pi$.

Collect the admissible solutions into an infinite sum,
$$
\phi(x, y) = \sum_{n} A_{n} e^{ -n\pi x/a } \sin\left( \frac{n\pi y}{a} \right)
$$
Recall that we have,
$$
(\psi_{n}, \psi_{m}) = \int_{0}^{a} \sin\left( \frac{n\pi y}{a} \right)\sin\left( \frac{m\pi y}{a} \right) \, dy = \frac{a}{2} \delta_{nm}
$$
Where $\delta_{nm}$ is the Kronecker delta.

From the final boundary condition,
$$
\phi(0, y) = V_{0}(y) = \sum_{n} A_{n} \psi_{n}(y)
$$
Use the properties of orthogonality,
$$
(\psi_{m}, V_{0}) = \sum_{n} A_{n} (\psi_{m}, \psi_{n}) = \frac{a}{2} \sum_{n} A_{n} \delta_{nm} = \frac{a}{2} A_{m}
$$
Write out the scalar product,
$$
A_{m} = \frac{2}{a} \int_{0}^{a} \sin\left( \frac{m\pi y}{a} \right)V_{0}(y) \, dy
$$
Now, try a problem with cylindrical coordinates. Lets say this problem is independent of $z$. Imagine this as two sheets of conductors with an angle $\beta$ between the two. So,
$$
\frac{1}{r} \frac{ \partial  }{ \partial r } \left( r \frac{ \partial \phi }{ \partial r }  \right) + \frac{1}{r^{2}} \frac{ \partial^{2}\phi }{ \partial \theta^{2} } =0
$$
Look for solutions of the form $R(r)\psi(\theta)$. From which we obtain,
$$
\frac{r}{R} \frac{d}{dr} r \frac{dR}{dr} = -\frac{1}{\psi} \frac{d^{2}\psi}{d\theta^{2}} = v^{2}
$$
Familiarly, we have,
$$
\psi(\theta) = A \sin(v\theta + \alpha)
$$
From the boundary equations we have,
$$
\phi(r, 0) =0 \implies \alpha=0
$$
$$
\phi(r, \beta) =0 \implies v\beta = n\pi
$$
Try solutions of $R$ in the form $r^{v}$. Based on this, the general form is,
$$
\phi(r, \theta) = \sum_{i=1}^{\infty} a_{n} r^{n\pi/\beta} \sin\left( \frac{n\pi\theta}{\beta} \right)
$$
Consider the behavior as $r\to 0$ then,
$$
\phi \text{ goes like } a_{1} r^{\pi/\beta} \sin\left( \frac{\pi\theta}{\beta} \right)
$$
Because the first term is dominant.

Electric field is $\vec{E}=-\nabla \phi$ where,
$$
\nabla \equiv \hat{r} \frac{ \partial  }{ \partial r } + \frac{\hat{\theta}}{r} \frac{ \partial  }{ \partial \theta }
$$
So,
$$
= -a_{1} r^{\pi/\beta-1} \left[ \hat{r} \frac{\pi}{\beta} \sin\left( \frac{\pi \theta}{\beta} \right)+ \frac{\pi}{\beta} \hat{\theta} \cos\left( \frac{n\theta}{\beta} \right) \right]
$$
And note that if $\beta>\pi$ then $\vec{E}$ becomes very large near the tip
- This implies that near the tip of a conductor, the electric charge gathers. With a large enough $\vec{E}$ you can have an ionization of air molecules near the tip

Now, an example in spherical coordinates. Imagine a sphere with fixed charge density $\sigma(\theta)=k\cos\theta$ on the surface. This sphere is hollow on the inside with radius $R$.

Look for the potential everywhere. Away from the surface, we have $\rho=0$ and so, $\nabla^{2}\phi=0$.

Our boundary condition is independence of the azimuthal angle, so this reduces into,
$$
\frac{ \partial  }{ \partial r } \left( r^{2} \frac{ \partial \phi }{ \partial r } \right)+ \frac{1}{\sin\theta} \frac{ \partial  }{ \partial \theta } \left( \sin\theta \frac{ \partial \phi }{ \partial \theta }  \right)=0
$$
Use the separable solutions $\phi(r, \theta)=R(r)\psi(\theta)$. From which we obtain,
$$
\frac{1}{R} \frac{d}{dr} \left( r^{2} \frac{dR}{dr} \right) = -\frac{1}{\sin\theta} \frac{d}{d\theta} \left( \sin\theta \frac{d\psi}{d\theta} \right) = l(l+1)
$$
The radial equation is,
$$
\frac{d}{dr} \left( r^{2} \frac{dR}{dr} \right) = l(l+1)R
$$
Try $R(r)=r^{\gamma}$ and so we have,
$$
r \frac{d}{dr} (r^{n+1}) = v(v+1) r^{v} = l(l+1)r^{v}
$$
Gives us the quadratic equation,
$$
\gamma^{2} + \gamma - l(l+1) =0
$$
$$
(\gamma-l) (\gamma+l+1) =0
$$
Therefore,
$$
R(r) = A r^{l} + \frac{B}{r^{l+1}}
$$
For two constants $A, B$.

Angular equation,
$$
\frac{d}{d\theta} \sin\theta \frac{d\psi}{d\theta} = -l(l+1) \sin\theta \psi
$$
Let $x=\cos\theta$
$$
\frac{d}{d\theta} = \frac{dx}{d\theta} \frac{d}{dx}
$$
You should obtain the Legendre differential equation,
$$
\frac{d}{dx} \left[ (1-x^{2}) \frac{d\psi}{dx} \right] = -l(l+1)\psi
$$
The solutions to this are the Legendre polynomials $P_{l}(x)$. The solutions we are seeking are therefore,
$$
\psi(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l} r^{l} + \frac{B_{l}}{r^{l+1}} \right) P_{l}(\cos\theta)
$$
Recall the implicit boundary condition that,
$$
\phi(R_{+}, \theta) = \phi(R_{-}, \theta)
$$
Otherwise $\vec{E}$ would diverge. We can also use Gauss' law,
$$
\frac{ \partial \phi }{ \partial r } \bigg|_{r=R_{+}} - \frac{ \partial \phi }{ \partial r }\bigg|_{R_{-}} = -\frac{1}{\epsilon_{0}} \sigma_{\theta} (\theta)
$$
- Couldn't write down the rest