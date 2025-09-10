### Groups of Symmetries
Lets begin with some set of symmetric operations, like rotations, defined as:
$$
g_{1}, g_{2}, g_{3}, \dots
$$
And so we have the corresponding unitary operators:
$$
U_{g_{1}}, U_{g_{2}}, U_{g_{3}}, \dots
$$
These are referred to as *symmetry transformations* and *transformation operators*, respectively

We define these numerous similar operators as a group. We'll say this is Group $G$. This set will be closed under multiplication:
$$
U_{g_{1}} U_{g_{2}} = U_{g_{1}g_{2}}
$$
And,
$$
U_{g_{1}} (U_{g_{2}}U_{g_{3}}) = (U_{g_{1}} U_{g_{2}}) U_{g_{3}}
$$
Since they are unitary, we have:
$$
U^{\dagger}U = 1 \implies U^{\dagger} = U^{-1}
$$
### Symmetries with the Hamiltonian
When we say that a Hamiltonian "has a symmetry" we mean that it commutes with all the unitary operators in a group:
$$
\left[ H, U_{g} \right] =0 \qquad \text{for all }g
$$
Now, if we define some eigenstates,
$$
H \ket{\psi_{n}}  = E_{n} \ket{\psi_{n}}
$$
Then we also have:
$$
U_{g} \ket{\psi_{n}}  = \ket{\tilde{\psi}_{n}}  = \tilde{E}_{n} \ket{\psi_{n}} = E_{n} \ket{\psi_{n}}
$$
Since they commute,
$$
HU_{g} \ket{\psi_{n}}  = U_{g} H\ket{\psi_{n}}  = E_{n} (U_{g} \ket{\psi_{n}} )
$$
### Parity Operator
Defined as:
$$
\hat{\Pi} \ket{\vec{x}_{0}} = \ket{-\vec{x}_{0}}
$$
By observation:
$$
\hat{\Pi}^{2} = \mathbb{I} \implies  \hat{\Pi}^{-1} = \hat{\Pi}^{\dagger}
$$
So, how does this operate on a state?
$$
\left< x | \Pi | \psi \right>  = \left< -x | \psi \right>  = \psi(-x)
$$
What happens to operators?
$$
\left< \psi | \hat{X} | \psi \right> = x_{0} \implies \left< \psi | \Pi^{\dagger} \hat{X} \Pi | \psi \right> = -x_{0} \implies \Pi^{\dagger} \hat{X} \Pi = -\hat{X}
$$
The same happens with the momentum operator:
$$
\Pi \hat{P} \Pi =-\hat{P}
$$
Since the angular momentum operator is composed from these two operators, we also have:
$$
\Pi ^{\dagger} \vec{L} \Pi = \vec{L}
$$
We call the position and momentum operators *polar* vectors and the angular momentum operator *axial* for this reason.

Another way to imagine the parity operator is:
$$
\left< x | \Pi | x' \right>  = \delta(x+x')
$$
We also the group,
$$
\mathbb{Z}_{2} = \{ \mathbb{I}, \hat{\Pi} \}
$$
And the eigenvalues of the parity operator are:
$$
\Pi \ket{{\psi_{\pm}}}  = \pm \ket{\psi_{\pm}}
$$
### Discrete Translations
First, we will use translations by some distance $a$. By convention, this direction is to the right on the Cartesian plane.
$$
\hat{T}_{a} \ket{x}  = \ket{x+a}
$$
Which is the definition of the translation operator. The inverse of the translation operator simply moves the ket back.
$$
T^{\dagger}_{a} = T^{-1}_{a} = T_{-a}
$$
This gives us another group with the identity:
$$
\{ \mathbb{I}, T_{a}, T^{2}_{a}, \dots, T_{-a}, \dots \}
$$
Which is the first infinite group we have encountered. Also, notice that:
$$
T_{na} T_{ma} = T_{ma} T_{na} = T_{(m+n)a}
$$
Where $n, m\in \mathbb{R}$ are some constants. Now, lets see how it operates on a state.
$$
\left< x | T_{a} | \psi \right> = \left< x | T^{-1}_{a} | \psi \right> = \left< x-a | \psi \right> = \psi(x-a)
$$
What are the eigenvalues of the translation operator?
$$
T_{a} \ket{\psi}  = \lambda \ket{\psi}
$$
We can try calculating the norm to see what happens:
$$
\bra{\psi} T^{\dagger}_{a} T_{a} \ket{\psi} = \left< \psi | \psi \right> = \mathbb{I}
$$
If we apply this logic, and take the norm of the left and right hand side of the eigenvalue equation, we have:
$$
|\lambda|^{2} = 1
$$
Which implies that $\lambda$ is somewhat similar to $e^{ i\theta }$

$$
H = \frac{\hat{p}^{2}}{2m} + V(x)
$$
Notice that the first portion, without the added potential, is invariant under translation. Define the potential such that:
$$
V(x) = V(x+a)
$$
So something like a wave with period $a$. We will also write out the eigenvalue of $T_{a}$ as:
$$
\lambda = e^{ -2\pi i\omega } \implies \psi(x-a) = e^{ -2\pi i\omega } \psi(x)
$$
And so we have discovered Bloch's Theorem:
$$
\psi(x) = \phi(x) e^{ 2\pi i\omega x/a }
$$
$$
\phi(x+a) = \phi(x)
$$
