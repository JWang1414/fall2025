### Problem 2.53
The electric field of a finite line segment of length $2L$ is with a uniform line charge as:
$$
\vec{E} = \frac{1}{4\pi\varepsilon_{0}} \frac{2\lambda L}{z\sqrt{ z^{2}+L^{2} }}\hat{z}
$$
I have taken this from the textbook. The electric potential is defined to be,
$$
V(\vec{r}) = - \int_{\mathcal{O}}^{\vec{r}} \vec{E}\cdot d\vec{l}
$$
Rough work ---

$$
V(\vec{r}) = - \frac{1}{4\pi\epsilon_{0}} 2\lambda L \int_{\mathcal{O}}^{\vec{r}} \frac{1}{z\sqrt{ z^{2}+L^{2} }} \, dz
$$
- The steps for this integral are surprisingly intuitive after the first step. I'll write them down later, but the result of this integral is,
$$
\int \frac{1}{z\sqrt{ z^{2}+L^{2} }} \, dz = \frac{1}{2L} \left[ \ln \left| \sqrt{ z^{2}+L^{2} }-L \right| - \ln \left| \sqrt{ z^{2}+L^{2} } +L \right|  \right]
$$
Which can also be simplified into,
$$
\frac{1}{2L} \ln \left( \frac{\left| \sqrt{ z^{2}+L^{2} } -L \right| }{ \left| \sqrt{ z^{2}+L^{2} }+L \right|  } \right)
$$
Perform the approximation done here: <https://www.miniphysics.com/uy1-electric-potential-of-an-infinite-line-charge.html>
- I'm getting conflicting answers from this source <https://physics.stackexchange.com/questions/348692/electric-potential-of-uniformly-charged-wire>

For an infinite line of charge, the potential should be,
$$
V(\vec{r}) \approx \frac{\lambda}{2\pi\epsilon_{0}} \ln\left( \frac{2L}{|\vec{r}|} \right)
$$
Because the wires stretch infinitely in the $x$ dimension, the closest point the distance $\vec{r}$ will always be measured from for both wires is purely in the $y$ and $z$ dimensions. This length will be the difference in $y$ followed by the difference in $z$.

The magnitude from each wire is,
$$
\vec{r}_{+} = \sqrt{ (y-a)^{2} + z^{2} } \qquad \vec{r}_{-} = \sqrt{ (y+a)^{2}+z^{2} }
$$
Where the subscripts indicate the wires with charge $+\lambda$ and $-\lambda$ respectively


$$
1-4ay = C \left[ (a+y)^{2}+z^{2} \right] = C(a^{2}+2ay+y^{2}+z^{2})= Ca^{2} + 2Cay + Cy^{2} + Cz^{2}
$$
$$
Cz^{2} + Cy^{2} + 2Cay + 4ay + Ca^{2} - 1 =0
$$
Complete the square,
$$
Cy^{2} + 2Cay + 4ay = Cy^{2} + (2Ca + 4a)y = C \left[ y^{2} + \frac{2}{C}(Ca + 2a)y \right]
$$
$$
C \left[ y^{2} + 2\left( a + \frac{2a}{C} \right)y + \left( a+\frac{2a}{C} \right)^{2} - \left( a+\frac{2a}{C} \right)^{2} \right]
$$
$$
C \left[ \left( y + \left( a+\frac{2a}{C} \right) \right)^{2} - \left( a+\frac{2a}{C} \right)^{2} \right]
$$
$$
C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} - a^{2} (C+2)
$$
Substitute back in,
$$
Cz^{2} + C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} - a^{2}(C+2) + Ca^{2}-1 =0
$$
Re-arrange,
$$
Cz^{2} + C\left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} = a^{2}(C+2) - Ca^{2} - 1 = 2a^{2}-1
$$
$$
z^{2} + \left( y+a\left( 1+\frac{2}{C} \right) \right)^{2} = \frac{2a^{2}-1}{C}
$$
The formula for an arbitrary cylinder is,
$$
(y-a)^{2} + (z-b)^{2} = r^{2}
$$
From here it's trivial to see the axis and radius of the cylinder. Note that I have used $C$ to represent some arbitrary constant, it will actually be something dependent on $V_{0}$. Interestingly (something that can also be seen from graphing) is that the axis of the cylinder also depends on $V_{0}$, not just the radius.
### Problem 2.55
