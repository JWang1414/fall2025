- Same textbook as 356

Textbook sections from Griffiths
6.1-6.8
4.3, 4.4
8.1-8.4
7.1-7.5
11.1-11.5
10.1-10.4


---
### Symmetries
Refer back to classical mechanics. Here, we typically have some Lagrangian $\mathcal{L}(x_{i}, \dot{x}_{i})$ which specifies the state of some object. We have the same thing with the Hamiltonian $\mathcal{H}(x_{i}, p_{i})$.

Lets define some initial conditions $(x, p)$. Imagine this point on a Cartesian plane as it evolves in time. (It moves around the plane)

Now, we can apply symmetries. Under some operator, such as a rotation, we may transform the initial conditions to something else.
### Continuous Symmetries
Noether Theorem:
> Lets define that
$$
\dot{p}_{i} =- \frac{ \partial H }{ \partial x_{i} }
$$
> Furthermore, state that the Hamiltonian is independent of the coordinate $x_{i}$, from which, we conclude that $p_{i}$ is constant, and so it is conserved.

Lets swap back into the quantum picture.

Define some initial state $\ket{\psi}$ or perhaps $\ket{\psi(t)}$. Define the symmetry operator $U$.
$$
U \ket{\psi} = \ket{\psi'}  = \ket{U\psi}
$$
- The symmetry transformation shouldn't change the magnitude of the state, or the overlap between two states.
Define another state: $\ket{\phi'}=U\ket{\phi}$. Therefore, we have:
$$
\left| \left< \phi'| \psi' \right>    \right| = \left| \left< \phi | \psi \right>  \right| 
$$
From here, we have:
$$
\left< \phi' | \psi' \right>  = \left< \phi | \psi \right> \implies (\bra{\phi} U^+)(U \ket{\psi} ) \implies U^+U = \mathcal{I}
$$
Which we familiarly define to be a unitary operator. Now, we also have anti-unitary operators:
$$
\left< \phi' | \psi' \right> = \left< \phi | \psi \right> ^*
$$

Define from observable, Hermitian operator $A$. Now, how would we find the expectation value?
$$
\bra{\psi} A \ket{\psi} = \bra{\psi} U^+ A U \ket{\psi}
$$
Which, in a sense, transforms our operator
$$
A \to U^{\dagger} AU
$$
Hence,
$$
U^{\dagger} AU = A
$$
And so this operator is invariant under a symmetrical operation. We can further claim that:
$$
AU=UA \implies [A, U] =0
$$
There is a special case where $A=H$, and, all the above properties still apply.

In the Schrodinger picture, we have the time Hamiltonian
$$
i\hbar \partial_{t} \ket{\psi(t)}  = H \ket{\psi(t)}
$$
With the symmetry operator inside,
$$
i\hbar \partial_{t} (U \ket{\psi(t)} ) = U(i\hbar \partial_{t} \ket{\psi (t)} ) = UH \ket{\psi (t)}  = HU \ket{\psi(t)}
$$

Lets look at another state:
$$
U \exp \left\{  -\frac{i\hat{H}t}{\hbar}  \right\} \ket{\psi(0)}  = \exp \left\{  -\frac{i\hat{H}t}{\hbar}  \right\} U \ket{\psi(0)}
$$
Which works because $\hat{H}$ and $U$ commute with each other.
### Stationary States
Define from eigenstate:
$$
H \ket{\psi_{n}} = E_{n} \ket{\psi_{n}}
$$
$$
UH \ket{\psi_{n}}  = HU \ket{\psi_{n}} = E_{n} U \ket{\psi_{n}}
$$
Which, notice, is a stationary state with an identical eigenvalue. Which means you can pick some stationary state, and then repeatedly act with a symmetric operator to generate more.