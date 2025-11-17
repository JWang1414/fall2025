### Question 1
---
a.
First, show that $\phi$ satisfies the wave equation:
$$
\frac{ \partial^{2}\phi }{ \partial t^{2} } = v^{2} \frac{ \partial^{2}\phi }{ \partial x^{2} }
$$
Compute the derivatives first:
$$
\frac{ \partial^{2}\phi }{ \partial t^{2} } = - \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) (\omega_{k}^{2}) \left[ \tilde{\phi}_{0, k} \cos(\omega_{k}t) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(\omega_{k}t) \right]
$$
$$
\frac{ \partial^{2}\phi }{ \partial x^{2} }  = - \sum_{k=1}^{\infty} \left( \frac{k\pi}{L} \right)^{2} \sin\left( \frac{k\pi x}{L} \right) \left[ \tilde{\phi}_{0, k} \cos(\omega_{k}t) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(\omega_{k}t) \right]
$$
Note that these two equations differ by just a few constants that come out from the derivatives. By the superposition principle, this simplifies into:
$$
\omega_{k}^{2} = v^{2} \left( \frac{k\pi}{L} \right)^{2} \implies \omega_{k} = \frac{k\pi v}{L}
$$
And so we have determined the expression for the frequency $\omega_{k}$. For the boundary conditions when $x=0, L$, the leading sine function vanishes, and so all elements of the series are 0 on the boundaries for $t>0$.
$$
\sin\left( \frac{k\pi(0)}{L} \right) = \sin(0) =0
$$
$$
\sin\left( \frac{k\pi L}{L} \right) = \sin (k\pi) = 0
$$
For the initial condition, $t=0$. We must show that $\phi_{0}(x)=\phi|_{t=0}$ and $\psi_{0}(x)=\frac{ \partial \phi }{ \partial t }\big|_{t=0}$. Begin by computing the derivative:
$$
\frac{ \partial \phi }{ \partial t } = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ - \omega_{k}\tilde{\phi}_{0, k} \sin(\omega_{k}t) + \tilde{\psi}_{0, k} \cos(\omega_{k}t) \right]
$$
Now, evaluate both $\phi$ and $\partial \phi / \partial t$ when $t=0$"
$$
\phi(x, 0) = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ \tilde{\phi}_{0, k} \cos(0) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(0) \right] = \sum_{k=1}^{\infty} \tilde{\phi}_{0, k} \sin\left( \frac{k\pi x}{L} \right) = \phi_{0}(x)
$$
$$
\frac{ \partial \phi }{ \partial t } \bigg|_{t=0} = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ - \omega_{k}\tilde{\phi}_{0, k} \sin(0) + \tilde{\psi}_{0, k} \cos(0) \right] = \sum_{k=1}^{\infty} \tilde{\psi}_{0, k} \sin\left( \frac{k\pi x}{L} \right) = \psi_{0}(x)
$$
All conditions have been met, as needed.

---
b.
$$
\psi(x) = C \frac{x(L-x)}{L^{2}} \exp \left[ - \frac{(x-d)^{2}}{2\sigma^{2}} \right]
$$
Our simulation has been done with $L=1$ m, $d=10$ cm, $C=1$ m/s, and $\sigma=0.3$ m. We set a time step of $h=10^{-5}$, and $v=100$ m/s.
### Question 3
---
a.
For reference, Burger's equation in the conservative form is,
$$
\frac{ \partial u }{ \partial t } + \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) =0
$$
Therefore we have,
$$
\frac{ \partial u }{ \partial t } =- \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right)
$$
Take the derivative of both sides to find,
$$
\frac{ \partial^{2}u }{ \partial t } = -\epsilon \frac{ \partial  }{ \partial x } \left( u \frac{ \partial u }{ \partial t }  \right)
$$
But we already know $\frac{ \partial u }{ \partial t }$
$$
\frac{ \partial^{2}u }{ \partial t } = -\epsilon \frac{ \partial  }{ \partial x } \left[ u \left( -\epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right) \right] = \epsilon^{2} \frac{ \partial  }{ \partial x } \left[ u \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right]
$$
With this knowledge, if $\partial u / \partial t$ is approximated as a Taylor series expansion we obtain:
$$
\begin{align}
u(x, t+\Delta t) & = u(x, t) + \frac{ \partial u }{ \partial t } \Delta t + \frac{1}{2} \frac{ \partial^{2}u }{ \partial t^{2} } (\Delta t)^{2} \\
 & = u(x, t)+ \left[ - \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right] \Delta t + \frac{1}{2} \left[ \epsilon^{2} \frac{ \partial  }{ \partial x } \left[ u \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right] \right] (\Delta t)^{2} \\
 & = u(x, t) - \Delta t \epsilon \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) + \frac{(\Delta t)^{2}}{2} \epsilon^{2} \frac{ \partial  }{ \partial x } \left[ u \frac{ \partial  }{ \partial x } \left( \frac{u^{2}}{2} \right) \right] 
\end{align}
$$
Now, approximate the derivatives present in this expression with central difference approximations.
$$
\frac{ \partial u^{2} }{ \partial x } = \frac{u^{2}(x+\Delta x, t) - u^{2}(x-\Delta x, t)}{2 \Delta t} = \frac{(u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2}}{2 \Delta x}
$$
And,
$$
\frac{ \partial  }{ \partial x } \left( u \frac{ \partial u^{2} }{ \partial x }  \right)= \frac{1}{\Delta x} \left[ u(x+\Delta x /2) \frac{ \partial u^{2}(x+\Delta x, t) }{ \partial x } - u(x-\Delta x /2) \frac{ \partial u^{2}(x-\Delta x /2, t) }{ \partial x }  \right]
$$
Where, in particular, this derivative has been estimated with a derivative spacing of $\Delta x /2$ instead of $\Delta x$. Now, these midpoints in $u$ can also be approximated like:
$$
u\left( x\pm \frac{\Delta x}{2}, t \right) = \frac{u(x, t) + u(x\pm \Delta x, t)}{2} = \frac{u^{j}_{i} + u^{j}_{i\pm 1}}{2}
$$
$$
\frac{ \partial u^{2}(x\pm\Delta x /2, t) }{ \partial x } = \frac{u^{2}(x\pm\Delta x, t) - u^{2}(x, t)}{\pm \Delta x} = \frac{(u^{j}_{i\pm 1})^{2} - (u^{j}_{i})^{2}}{\pm \Delta x}
$$
Substitute back into equation,
$$
\frac{ \partial  }{ \partial x } \left( u \frac{ \partial u^{2} }{ \partial x }  \right) = \frac{1}{\Delta x} \left[ \frac{u^{j}_{i} + u^{j}_{i+ 1}}{2} \frac{(u^{j}_{i+ 1})^{2} - (u^{j}_{i})^{2}}{ \Delta x} - \frac{u^{j}_{i} + u^{j}_{i- 1}}{2} \frac{(u^{j}_{i- 1})^{2} - (u^{j}_{i})^{2}}{- \Delta x} \right]
$$
Substitute into the derivative approximation,
$$
u(x, t+\Delta t) = u(x, t) - \frac{\Delta t}{2} \epsilon \left[ \frac{(u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2}}{2 \Delta x} \right] + \frac{(\Delta t)^{2}}{4} \epsilon^{2} \left( \frac{1}{\Delta x} \left[ \frac{u^{j}_{i} + u^{j}_{i+ 1}}{2} \frac{(u^{j}_{i+ 1})^{2} - (u^{j}_{i})^{2}}{ \Delta x} - \frac{u^{j}_{i} + u^{j}_{i- 1}}{2} \frac{(u^{j}_{i- 1})^{2} - (u^{j}_{i})^{2}}{- \Delta x} \right] \right)
$$
Simplify this into,
$$
u^{j+1}_{i} = u(x, t) - \frac{\beta}{4} \left[ (u^{j}_{i+1})^{2} - (u^{j}_{i-1})^{2} \right] + \frac{\beta^{2}}{8} \left\{ (u^{j}_{i} + u^{j}_{i+ 1}) \left[ (u^{j}_{i+ 1})^{2} - (u^{j}_{i})^{2} \right] - (u^{j}_{i} + u^{j}_{i- 1}) \left[ (u^{j}_{i- 1})^{2} - (u^{j}_{i})^{2} \right]  \right\}
$$
Where we have defined the new constant $\beta = \epsilon \Delta t /\Delta x$

---
b.
$\epsilon=1$, $\Delta x=0.02$, $\Delta t=0.005$, $L_{x}=2\pi$, $T_{f}=2$. The number of sampled points is roughly $N_{x}=L_{x} / \Delta x$ and $N_{t} = T_{f} / \Delta t$. The initial condition is: $u(x, 0)=\sin x$, and the boundary conditions are $u(0, t)=u(L_{x}, t)=0$.
### Question 2
---
a.
Here, we are interested in using the Crank-Nicolson scheme to solve for the time-evolution of a state inside some quantum well. The time-dependent Schrodinger equation to solve is,
$$
i\hbar \frac{ \partial \psi }{ \partial t } = \mathbf{H} \psi = - \frac{\hbar}{2m} \frac{ \partial^{2}\psi }{ \partial x^{2} } + V\psi
$$
We used the initial condition, or state:
$$
\psi(x, 0) = \psi_{0} \exp \left[ - \frac{(x-x_{0})^{2}}{4\sigma^{2}} + i\kappa x \right]
$$
And defined the three potential wells,
$$
V(x) =0 \qquad V(x) = \frac{1}{2} m \omega^{2} x^{2} \qquad V(x) = V_{0} \left( \frac{x^{2}}{x_{1}} - 1 \right)^{2}
$$
These are the square well, harmonic well, and double well, respectively. The discretized Hamiltonian $\mathbf{H}_{D}$ was modelled as a tridiagonal matrix, and adjusted according to the well we were interested in testing.

Our system used the physical parameters: $L=10^{-8}$ m, $m=9.11\times 10^{-31}$ kg, $\sigma=L /25$, and $\kappa=500 /L$. The wells were defined from $-L /2$ to $L /2$ before being set to infinity. The space was discretized with $P=1024$ segments, and the simulation ran for $N=3000$ time steps of size $\tau=10^{-18}$ s. The wavefunction itself was offset so that $x_{0}=L /5$.

For these cases, we used the parameters: $\omega=3\times 10^{15}$ rad/s, and $N=4000$ on the harmonic well, and: $V_{0}=6\times 10^{-17}$ J, $x_{0}=L /3$, $x_{1}=L /4$, and $N=6000$ on the double well. All unmentioned parameters remained identical to the square well case.
