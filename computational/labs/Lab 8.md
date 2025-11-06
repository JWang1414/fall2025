### Question 1
Number of iterations with overrelaxation
$$
\omega=0.0 \to 289 \text{ iterations} \qquad \omega=0.9 \to 4082 \text{ iterations}
$$
---
c.
The non-converged version does not look symmetric (about the vertical bisector $x=100$)

We believe that it is because of the iteration procedure applied by the Gauss-Seidel method. The method iterates across the plane from left-to-right, bottom-to-top. This order of updates means that some points will have more updated information than others, and so will be updated differently.
- Which points have more updated information?
- There is a shock wave / inconsistency in the top-right
	- If we make the time step smaller the shock wave also gets smaller
- TA confirmed this is all correct

The temperature at $x=25$ and $y=10$ is, 0.34 celsius
### Question 3
Euler's method for some differential equation of the form
$$
\frac{d\phi}{dt} = f(\phi, t)
$$
Is the truncated Taylor series expansion,
$$
\phi(t+h) \approx \phi(t) + h \frac{d\phi}{dt} = \phi(t) + h f(\phi, t)
$$
The conservative Burger equation is,
$$
\frac{ \partial u }{ \partial t } + \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) =0
$$
Therefore,
$$
\frac{ \partial u }{ \partial t } = - \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right)
$$
Therefore the steps from Euler's method are,
$$
u^{j+1}_{i} = u^j_{i} + h \frac{ \partial u }{ \partial t } = u^j_{i} - h \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right)
$$
$$
\frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \implies \frac{1}{h} \left[ \frac{(u^j_{i+1})^{2}}{2} - \frac{(u^j_{i})^{2}}{2} \right]
$$
$$
u^{j+1}_{i} = u^j_{i} + h \frac{ \partial u }{ \partial t } = u^j_{i} - \frac{\epsilon}{2} \left[ (u^j_{i+1})^{2} - (u^j_{i})^{2} \right]
$$

Written answer:

As time progresses, we notice that eventually the wave propagates until it "becomes vertical". In real life, we would expect a shock wave to develop here, but because our wave would no longer be a function, the simulation breaks down. That is, the simulation is accurate until the wave is no longer a function.
- Took this from a TA

Rough work
$$
\nabla^{2}T=0
$$