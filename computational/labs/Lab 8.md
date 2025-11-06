### Question 1
Number of iterations with overrelaxation
$$
\omega=0.0 \to 289 \text{ iterations} \qquad \omega=0.9 \to 4082 \text{ iterations}
$$
---
c.
The non-converged version does not look symmetric (about the vertical bisector $x=100$)

We believe this is a consequence of the iteration procedure applied by the Gauss-Seidel method, since it iterates across the plane from left-to-right, bottom-to-top. This order of updates means the bottom-left point skewing points will have less updated information to work with, because they are updated first.
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

$$
\frac{d\phi}{dt} = \psi(x, t) \qquad \frac{d\psi}{dt} = \frac{v^{2}}{a^{2}} \left[ \phi(x+a, t) + \phi(x-a, t) - 2\phi(x, t) \right] 
$$
$$
\psi(x) = C \frac{x(L-x)}{L^{2}} \exp \left[ - \frac{(x-d)^{2}}{2\sigma^{2}} \right]
$$
$$
\frac{ \partial u }{ \partial t } + \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right)=0
$$

To model Burger's equation, we first discretize space and time into $N_{x}$ and $N_{t}$ steps of sizes $\Delta x$ and $\Delta t$. From which we obtain the slices,
$$
u^{j}_{i} = u(x_{i}, t_{j}) \qquad x_{i}=i\Delta x \qquad t_{j} = j\Delta t
$$
Where $i, j\in \mathbb{Z}$ are indices from 0 to $N_{x}-1$ or $N_{t}-1$, respectively. Using this notation to model () with the leapfrog method we have,
$$
u^{j+1}_{i} = u^{j-1}_{i} - \frac{\beta}{2} \left[ (u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2} \right] , \qquad \beta=\epsilon \frac{\Delta t}{\Delta x}
$$
To initialize the leapfrog method, we need to first define the boundary conditions in space, and the first two initial points in time. The boundary conditions and initial condition can be defined, but we will need to use one Euler step to start the leapfrog method.

$$
\begin{align}
u(t+\Delta t) & \approx u(t) + \Delta t \frac{ \partial u }{ \partial t } = u(t) + \Delta t \left[ -\epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right] \\
 & = u(t) - \frac{\epsilon}{2} \Delta t \frac{ \partial u^{2} }{ \partial x }
\end{align}
$$
$$
\frac{ \partial u^{2} }{ \partial x } \approx \frac{(u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2}}{2(\Delta x)}
$$
$$
u^{j+1}_{i} \approx u^{j}_{i} - \frac{\epsilon}{2} \Delta t \frac{ \partial u^{2} }{ \partial x } 
$$
$$
u^{j+1}_{i} \approx u^{j}_{i} - \frac{\epsilon}{2} \Delta t \frac{(u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2}}{2(\Delta x)} = u^{j}_{i} - \frac{\beta}{4} \left[ (u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2} \right]
$$
The parameters for our simulation were: $\epsilon=1$, $\Delta x=0.02$, $\Delta t=0.005$, $L_{x}=2\pi$, and $T_{f}=2$. Where $L_{x}$ is the length of the spatial domain, and $T_{f}$ is the length of the simulation. We defined initial conditions $u(t=0)=\sin x$ and boundary conditions $u(0, t)=u(L_{x}, t)=0$.