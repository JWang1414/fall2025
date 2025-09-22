### Angular momentum addition
For two spin states we might have:
$$
\mathcal{H} = J \vec{S}_{1}\cdot \vec{S}_{2}
$$
Where $J$ is the "exchange interaction" (energy scale)

Lets assume that we are in a spin-1/2 system. Therefore,
$$
S_{1}^{2} = s_{1}(s_{1}+1) = \frac{1}{2} \left( \frac{1}{2}+1 \right) = \frac{3}{4}
$$
$S_{2}^{2}$ is much the same.

Now, what are the basis states for these two particles? Well, we can have one where both particles are spin up.
$$
\ket{1 /2, 1 /2} \equiv \ket{++}
$$
You can flip these spins however you like. Do you end up with four total possibilities.

Now, lets rewrite the Hamiltonian in terms of spin-z operators and the raising and lowering operators.
$$
\mathcal{H} = J S_{1}^{z} S_{2}^{z} + \frac{J}{2} (S_{1}^+ S_{2}^- + S_{1}^- S_{2}^+)
$$
What is the energy of the example given above? Well, we have an eigenstate of $S^{z}$. And one of the raising operators will always vanish.
$$
\mathcal{H} \ket{++}  = \frac{J}{4} \ket{++}
$$
The same is the case for $\ket{--}$. What about for the more interesting states?
$$
\mathcal{H} \ket{+ -} = -\frac{J}{4}\ket{+ -}  + \frac{J}{2} \ket{- +}
$$
We can use these results to construct a matrix representation of the Hamiltonian
$$
\begin{bmatrix}
J /4 & 0 & 0 & 0 \\
0 & -J /4 & J /2 & 0 \\
0 & J /2 & -J /4 & 0 \\
0 & 0 & 0 & J /4
\end{bmatrix}
$$
The eigenvalues for the states are,
$$
\begin{cases}
\ket{++}  & J /4 \\
\ket{--}  & J /4 \\
(\ket{+ -} + \ket{- +} ) /\sqrt{ 2 } & J /4 \\
(\ket{+ -} - \ket{- +} ) /\sqrt{ 2 } & -3J /4
\end{cases}
$$
And so we obtain the triplet and singlet states. We can denote these states as $V_{i}$ ordered from top to bottom.

Recall that the total spin is just the sum of them
$$
\vec{S}_\text{TOT} = \vec{S}_{1} + \vec{S}_{2}
$$
Therefore we have,
$$
S^{z}_\text{TOT} \ket{V_{1}} = S^{z}_\text{TOT} \ket{++} = \ket{V_{1}}
$$
And similarly we have,
$$
\begin{align}
S^{z}_\text{TOT} \ket{V_{2}} & =- \ket{V_{2}}  \\
S^{z}_\text{TOT} \ket{V_{3}}  & = 0\ket{V_{3}}  \\
S^{z}_\text{TOT} \ket{V_{4}}  & = 0 \ket{V_{4}}
\end{align}
$$
Familiarly, all total components of spin commute with the Hamiltonian,
$$
[S^{z}_\text{TOT}, \mathcal{H}] = [S^{x}_\text{TOT}, \mathcal{H}] = [S^{y}_\text{TOT}, \mathcal{H}] =0
$$
And of course,
$$
[S^{2}_\text{TOT}, \mathcal{H}] =0
$$
Recall that the $x$, $y$, and $z$ components do not commute with each other.

We can have simultaneous eigenstates of $S^{z}_\text{TOT}$ and $S^{2}_\text{TOT}$. So what are the eigenvalues?
$$
\begin{align}
S^{2}_\text{TOT} \ket{V_{1}} & = 2 \ket{V_{1}} \\
S^{2}_\text{TOT} \ket{V_{2}} & = 2 \ket{V_{2}} \\
S^{2}_\text{TOT} \ket{V_{3}} & = 2 \ket{V_{3}} \\
S^{2}_\text{TOT} \ket{V_{4}} & = 0 \ket{V_{4}} 
\end{align}
$$
Notice that this eigenvalue of 2 is nothing but a total spin component 2
$$
2 = 1(1+1) = s_\text{TOT}(s_\text{TOT}+1)
$$
So the first three states have total spin 1 and the last state has spin 0.

We are interested in labelling these states based on their total spin, and $z$-spin.
$$
\ket{V_{1}} = \ket{s_\text{TOT}=1, s^z_\text{TOT}=1}
$$
- No notation has been given yet, but I'm going to use,
$$
\ket{V_{1}} = \ket{1, 1} \qquad \ket{V_{2}} = \ket{1, -1}  \qquad \ket{V_{3}} = \ket{1, 0} \qquad \ket{V_{4}} = \ket{0, 0}
$$
Recall the definition of the Clebsh-Gordan coefficients. For two states with $l_{1}m_{1}$ and $l_{2}m_{2}$, we might have some state $lm$. In this cases the coefficients tell us,
$$
\ket{l_{1}l_{2}; lm} = \sum_{m_{1}m_{2}} C^{l_{1}l_{2}l}_{m_{1}m_{2}m} \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
An example. In a spin-1/2 system, we have $l_{1}=l_{2}=1 /2$. Lets say we are using the singlet state when $l=0$. What about if we have both up states?
$$
C^{1 /2, 1 /2, 0}_{1 /2, 1 /2, 1} =0
$$
This state is actually not possible, so it vanishes. This is trivially true because $m>l$, which is not allowed.

The non-zero coefficients would be the ones that we have already worked out. For example, reading off the singlet state we have,
$$
C^{1 /2, 1 /2, 0}_{1 /2, -1 /2, 0} = \frac{1}{\sqrt{ 2 }} \qquad C^{1 /2, 1/2, 0}_{-1 /2, 1 /2, 0} =-\frac{1}{\sqrt{ 2 }}
$$
