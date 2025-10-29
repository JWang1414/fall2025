$$
F = \frac{GMm}{\sqrt{ (x^{2}+y^{2}) (x^{2}+y^{2}+L^{2} /4) }}
$$
$$
\frac{d^{2}x}{dt^{2}} = -GM \frac{x}{r^{2}\sqrt{ r^{2}+L^{2} /4 }} \qquad \frac{d^{2}y}{dt^{2}} = -GM \frac{y}{r^{2}\sqrt{ r^{2}+L^{2} /4 }}
$$
Where $x$ and $y$ indicate the location of the ball-bearing perpendicular from the rod. The rod has mass $M$ and length $L$, the ball has mass $m$, and $G$ is the gravitational constant.

We are interested in simulating the motion of the ball-bearing using the fourth-order Runge-Kutta method (RK4). We would like to achieve an error-per-second of $\delta=10^{-6}$ ms$^{-1}$. This can be roughly obtained using a step-size of $h=0.001$, or by using an adaptive time-step to dynamically adjust the step-size as the simulation progresses.

$$
\frac{dx}{dt} = 1 - (b+1)x +ax^{2}y \qquad \frac{dy}{dt} = bx - ax^{2}y
$$
Where $x$ and $y$ are the concentrations of the chemicals and $a$ and $b$ are two positive constants.

Our simulation has been done using the Bulirsh-Stoer method down to an accuracy of $\delta=10^{-10}$ per unit time in both $x$ and $y$. The initial conditions are $a=1$, $b=3$ and $x=y=0$. The simulation simulates an oscillating reaction running for 20 seconds.