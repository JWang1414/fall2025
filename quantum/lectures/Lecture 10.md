### Perturbation Theory
Imagine some spin-1/2 Hamiltonian with $a, b$ real and $c$ complex. Such that $b>0$.
$$
\hat{H} = \begin{bmatrix}
a+b & c \\
c^* & a-b
\end{bmatrix}
$$
Say we have the eigenvalues,
$$
\epsilon_{\pm} = a \pm \sqrt{ b^{2}+\lvert c \rvert ^{2} }
$$
With some eigenvectors $\phi_{+}$ and $\phi_{-}$

Lets perturb the original matrix, by removing the non-diagonal terms,
$$
H_{0} = \begin{bmatrix}
a+b & 0 \\
0 & a-b
\end{bmatrix}
$$
Where we have removed the terms,
$$
V = \begin{bmatrix}
0 & c \\
c^* & 0
\end{bmatrix}
$$
Assume $c$ is small
$$
\epsilon_{\pm} \approx a \pm \left( \lvert b \rvert + \frac{\lvert c \rvert ^{2}}{2|b|} \right)
$$
Note that $b$ is positive so $b=|b|$. In particular, this is valid when $|c|\ll|b|$.

- There is a graph here depicting Level repulsion

It is often useful to define some dimensionless value $\lambda$ to scale the perturbation
$$
H = H_{0} + \lambda V
$$
And so you can see what happens to the levels of the spectrum as you increase $\lambda$.
- This notion is sometimes called *adiabatic continuity*
- As of current, level repelling will preserve the states so that the energies do not "cross" and "swap"

In this sense, given some unperturbed states and energies,
$$
H_{0} \ket{\psi_{n}^{(0)}}  = \epsilon_{n}^{(0)} \ket{\psi_{n}^{(0)}}
$$
Going from $\lambda=0$ to $\lambda=1$ we eventually obtain the original states $\ket{\psi_{n}}$ and $\epsilon_{n}$, which are the eigenstates for $H_{0}+V$.

We will assume that we can write the states as a summation,
$$
\ket{\psi_{n}} = \ket{\psi_{n}^{(0)}} + \lambda \ket{\psi_{n}^{(1)}} + \lambda^{2} \ket{\psi_{n}^{(2)}} + \dots
$$
- Same Taylor series for the energies

What we have, is that we can expand $\ket{\psi_{n}}$ and $\epsilon_{n}$ as infinite summations in the original eigenvalue equation:
$$
(H_{0} + \lambda V) \ket{\psi_{n}}  = \epsilon_{n} \ket{\psi_{n}}
$$
Lets analyze what happens for the terms of the order $\lambda$
$$
H_{0} \ket{\psi_{n}^{(1)}} + V \ket{\psi_{n}^{(0)}} = \epsilon_{n}^{(0)} \ket{\psi_{n}^{(1)}} + \epsilon_{n}^{(1)} \ket{\psi_{n}^{(0)}}
$$
Which you can re-arrange into,
$$
(H_{0}-\epsilon_{n}^{(0)}) \ket{\psi_{n}^{(1)}} = (\epsilon_{n}^{(1)} - V) \ket{\psi_{n}^{(0)}}
$$
In particular, we are interested in seeing what the states in 1 are. Now, since the 1 state is just a correction on the 0 state, what if we were to express it in terms of the 0 states? This just means it's in the same basis,
$$
\ket{\psi_{n}^{(1)}} = \sum_{m\neq n} C^{[n]}_{m} \ket{\psi_{m}^{(0)}}
$$
Substituting this into the relation we have just established, we have,
$$
\sum_{m\neq n} (H_{0} - \epsilon_{n}^{(0)}) C_{m}^{[n]} \ket{\psi_{m}^{(0)}}  = (\epsilon_{n}^{(1)} - V) \ket{\psi_{n}^{(0)}}
$$
Now, recall that $\ket{\psi_{m}^{(0)}}$ is an eigenvector for $H_{0}$. If you take an inner product of the full state, we obtain
$$
\bra{\psi_{l}^{(0)}} \sum_{m\neq n} (\epsilon_{m}^{(0)} - \epsilon_{n}^{(0)}) C_{m}^{[n]} \ket{\psi_{m}^{(0)}}  = \bra{\psi_{l}^{(0)}} (\epsilon_{n}^{(1)} - V) \ket{\psi_{n}^{(0)}}
$$
When $l=n$ the left side complete collapses,
$$
\epsilon_{m}^{(1)} = \bra{\psi_{n}^{(0)}} V \ket{\psi_{n}^{(0)}}
$$
When $l \neq n$
$$
\left< \psi_{l}^{(0)} | \psi_{m}^{(0)} \right> = \delta_{m, l}
$$
$$
(\epsilon_{l}^{(0)} - \epsilon_{n}^{(0)}) C_{l}^{[n]} = \bra{\psi_{l}^{(0)}} (-V) \ket{\psi_{n}^{(0)}} \implies C_{l^{[n]}} =- \frac{\bra{\psi_{l}^{(0)}} V \ket{\psi_{n}^{(0)}}}{\epsilon_{l}^{(0)} - \epsilon_{n}^{(0)}}
$$
Hence,
$$
\ket{\psi_{n}} = \ket{\psi_{n}^{(0)}} - \sum_{m\neq n} \frac{\bra{\psi_{m}^{(0)}} V \ket{\psi_{n}^{(0)}}}{\epsilon_{m}^{(0)} - \epsilon_{n}^{(0)}} \ket{\psi_{m}^{(0)}}
$$
- This is the first order correction. The one for $\lambda=1$
