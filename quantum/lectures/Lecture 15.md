### Time-dependent Perturbation Theory
$$
i\hbar \frac{ \partial  }{ \partial t }  \ket{\psi(t)} = H(t) \ket{\psi(t)}
$$
Say we have a perturbation $V(t)$, which is some operator that changes as a function of time. Then the full Hamiltonian can be re-written,
$$
H(t) = H_{0} + V(t)
$$
Assume that we know the behaviour of $H_{0}$. Generally speaking, the time-dependent state can be taken to be,
$$
\ket{\psi(t)} = \sum_{n} c_{n}(t) \ket{\psi_{n}}
$$
Applying these to our initial equation,
$$
i\hbar \sum_{n} \frac{dc_{n}(t)}{dt} \ket{\psi_{n}} = \sum_{n} E_{n} c_{n}(t) \ket{\psi_{n}} + \sum_{n} c_{n}(t) V(t) \ket{\psi_{n}}
$$
Where $E_{n}$ is the energy eigenvalue resulting from $H_{0}$. Multiply both sides by $\bra{\psi_{m}}$ to obtain,
$$
i\hbar \frac{dc_{m}(t)}{dt} = E_{m} c_{m}(t) + \sum_{n} c_{n}(t) \bra{\psi_{m}} V(t) \ket{\psi_{n}}
$$
It is useful to define,
$$
c_{m}(t) = f_{m}(t) e^{ -iE_{m}t/\hbar } \qquad \bra{\psi_{m}} V(t) \ket{\psi_{n}}  = (V(t))_{mn}
$$
In order to help simplify the expression. From which we get that,
$$
i\hbar e^{ -iE_{m}t/\hbar } \frac{df_{m}}{dt} = \sum_{n} f_{n}(t) e^{ -iE_{n}t/\hbar } (V(t))_{mn}
$$
Define,
$$
E_{mn} = E_{m} - E_{n}
$$
Then,
$$
i\hbar \frac{df_{m}}{dt} = \sum_{n} f_{n}(t) e^{ iE_{mn}t/\hbar } (V(t))_{mn}
$$
To approximate $f_{n}(t)$ we will essentially substitute in $f^{(0)}_{n}$ as a new function, integrate over time, and use that to solve for one term in an approximation for $f_{n}(t)$. We can then repeat this as needed to increase accuracy.

---
Example:
$$
H_{0} = \frac{\Delta}{2} \begin{bmatrix}
1 & 0 \\
0 & -1
\end{bmatrix} \qquad V(t) = g(t) \begin{bmatrix}
0 & \alpha \\
\alpha^* & 0
\end{bmatrix}
$$
Lets say that, because we are in the ground state,
$$
f_{1}(0) =0 \qquad f_{2}(0) = 1
$$
Assume that $g(t)$ is of the following form:
$$
g(t) = \begin{cases}
1 & 0<t<t_{0} \\
0 & \text{otherwise}
\end{cases}
$$
Plugging this in,
$$
i\hbar \frac{f_{1}(t)}{dt} = f_{2}(t) e^{ i\Delta t/\hbar } \alpha g(t) = e^{ i\Delta t/\hbar } \alpha g(t)
$$
$$
i\hbar \frac{f_{2}(t)}{dt} = f_{1}(t) e^{ -i\Delta t/\hbar } \alpha^* g(t) =0
$$
The second equation implies that the first order approximation for $f_{2}$ is just constant,
$$
f_{2}(t) \approx 1
$$
Solve for $f_{1}$
$$
i\hbar f_{1}(t) = \int_{0}^{t_{0}} e^{ i\Delta t/\hbar } \alpha g(t) \, dt 
$$