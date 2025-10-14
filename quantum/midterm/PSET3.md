### Question 1
$$
\mathcal{T}^{2} = (-i\sigma_{y}K)^{2} = (-i\sigma_{y}K)(-i\sigma_{y}K) = -i\sigma_{y} (i)(-\sigma_{y}) KK
$$
$$
= -\sigma_{y}^{2} = -\hat{1}
$$
Therefore $\mathcal{T}^{2}=-\hat{1}$, as needed.

Consider some eigenstates $\ket{\psi_{i}}$ of the spin-1/2 Hamiltonian $H$. Then,
$$
H \ket{\psi_{1}} = E_{1} \ket{\psi_{1}}
$$
If $\mathcal{T}$ commutes with $H$, then,
$$
H\mathcal{T} \ket{\psi_{1}} = \mathcal{T}H \ket{\psi_{1}} = E_{1} \mathcal{T} \ket{\psi_{1}}
$$
And so both $\ket{\psi_{1}}$ and $\mathcal{T}\ket{\psi_{1}}$ are both eigenstates of $H$. Now to show that they are not the same.

The time reversal operator $\mathcal{T}$ is anti-unitary.
$$
\left< \mathcal{T}u | \mathcal{T}w \right> = \left< u|w \right> ^* = \left< w|u \right>
$$
Consider the inner product,
$$
\left< \mathcal{T}\mathcal{T}\psi | \mathcal{T}\psi \right> = \left< \psi | \mathcal{T}\psi \right>
$$
$$
\left< \mathcal{T}\mathcal{T}\psi | \mathcal{T}\psi \right> = \left< -\hat{1} \psi | \mathcal{T}\psi \right> = - \left< \psi | \mathcal{T}\psi \right>
$$
Therefore,
$$
\left< \psi | \mathcal{T}\psi \right> = - \left< \psi | \mathcal{T}\psi \right> =0
$$
And so $\ket{\psi}$ and $\mathcal{T}\ket{\psi}$ are not the same state, because they are orthogonal. Hence there are two different states with the same energy $E$.
### Question 2
---
Compute the commutator $[L_{z}, r^{2}]$:
$$
[L_{z}, r^{2}] = [L_{z}, x^{2}+y^{2}+z^{2}] = [L_{z}, x^{2}] + [L_{z}, y^{2}] + [L_{z}, z^{2}]
$$
Recall the general commutator identity:
$$
[A, BC] = [A, B]C + B[A, C]
$$
The commutator for $x$ becomes:
$$
[L_{z}, xx] = [L_{z}, x]x + x[L_{z}, x]
$$
A similar format follows for $y$. However, $z$ commutes with $L_{z}$.
$$
[L_{z}, z] =0 \implies [L_{z}, z^{2}] =0
$$
Recall that the commutators for $L_{z}$ between $x$ and $y$ are:
$$
[L_{z}, x] = i\hbar y \qquad [L_{z}, y] = -i\hbar x
$$
Substitute back into the original equation
$$
[L_{z}, x]x + x[L_{z}, x] + [L_{z}, y]y + y[L_{z}, y] = i\hbar \hat{y}\hat{x} + i\hbar \hat{x} \hat{y} -i\hbar \hat{x}\hat{y} - i\hbar \hat{y}\hat{x}
$$
All the terms cancel out.
$$
[L_{z}, r^{2}] =0
$$
---
Compute the commutator for $[L_{z}, p^{2}]$:
$$
[L_{z}, p^{2}] = [L_{z}, p_{x}^{2}] + [L_{z}, p_{y}^{2}] + [L_{z}, p_{z}^{2}]
$$
Apply the same formulas and identities to find:
$$
[L_{z}, p_{x}]p_{x} + p_{x}[L_{z}, p_{x}] + [L_{z}, p_{y}]p_{y} + p_{y}[L_{z}, p_{y}]
$$
The commutators for $L_{z}$ between $p_{x}$ and $p_{y}$ are:
$$
[L_{z}, p_{x}] = i\hbar p_{y} \qquad [L_{z}, p_{y}] = -i\hbar p_{x}
$$
Substitute back into the original equation,
$$
[L_{z}, p^{2}] = i\hbar (p_{y}p_{x} + p_{x}p_{y} - p_{x}p_{y} - p_{y}p_{x}) =0
$$
---
So to conclude,
$$
[L_{z}, r^{2}] = [L_{z}, p^{2}] =0
$$
Which means the $L_{z}$ operator commutes with both $r^{2}$ and $p^{2}$. I suppose this makes sense since $L_{z}$ commutes with $L^{2}$, which is just a combination of $r^{2}$ and $p^{2}$
### Question 4
Define the eigenstates for this spin-1 system to be,
$$
\ket{1} = \begin{bmatrix}
1 \\
0 \\
0
\end{bmatrix} \qquad \ket{0} = \begin{bmatrix}
0 \\
1 \\
0
\end{bmatrix} \qquad \ket{-1} = \begin{bmatrix}
0 \\
0 \\
1
\end{bmatrix}
$$
Where I have also indicated their eigenvalues in their labelling. Working in the $z$ basis, I expect all of these vectors to be eigenvectors for $S_{z}$. I conclude,
$$
S_{z} = \begin{bmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -1
\end{bmatrix}
$$
Now, recall that from the definition of the ladder operators we have,
$$
S_{\pm} \ket{l, m} = \sqrt{ l(l+1)+m(m+1) } \ket{l, m\pm 1}
$$
And so,
$$
\begin{cases}
S_{-}\ket{1} =\sqrt{ 2 }\ket{0}  \\
S_{-} \ket{0} = \sqrt{ 2 } \ket{-1}  \\
S_{-} \ket{-1} = 0
\end{cases} \qquad \begin{cases}
S_{+} \ket{1} =0 \\
S_{+} \ket{0} = \sqrt{ 2 } \ket{1}  \\
S_{+} \ket{-1} = \sqrt{ 2 } \ket{0} 
\end{cases}
$$
The bottom and top rungs must be zero for the lowering and raising operators, respectively.

Applying these relations, we obtain that,
$$
S_{-} = \sqrt{ 2 } \begin{bmatrix}
0 & 0 & 0 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{bmatrix} \qquad S_{+} = \sqrt{ 2 } \begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 1 \\
0 & 0 & 0
\end{bmatrix}
$$
From here we can compute $S_{x}$ and $S_{y}$ from the identities,
$$
S_{x} = \frac{S_{+} + S_{-}}{2} \qquad S_{y} = \frac{S_{+}-S_{-}}{2i}
$$
- In the notes it says that there are 8 observables. I'm struggling to see how they came to this conclusion
- Why is the Hamiltonian $cS_{z}^{2}$ time reversal invariant? How do we define the time reversal here?
