### Question 1
Recall that the fundamental commutation relation for angular momentum is,
$$
[L_{i}, L_{j}] = i\hbar L_{k} \epsilon_{ijk}
$$
Where $\epsilon_{ijk}$ is the Levi-Cevita. The commutation relation for $\vec{K}$ is,
$$
\begin{align}
[K_{i}, K_{j}] & = [\alpha L_{i, 1} + \beta L_{i, 2}, \alpha L_{j, 1} + \beta L_{j, 2}] \\
 & = [\alpha L_{i, 1}, \alpha L_{j, 1}] + [\alpha L_{i, 1}, \beta L_{j, 2}] + [\beta L_{i, 2}, \alpha L_{j, 1}] + [\beta L_{i, 2}, \beta L_{j, 2}]
\end{align}
$$
The angular momentum between $L_{1}$ and $L_{2}$ must commute,
$$
= \alpha^{2} [L_{i, 1}, L_{j, 1}] + \beta^{2} [L_{i, 2}, L_{j, 2}] = i\hbar \alpha^{2} \epsilon_{ijk} L_{k, 1} + i\hbar \beta^{2} \epsilon_{ijk} L_{k, 2}
$$
So,
$$
= i\hbar \epsilon_{ijk} \left( \alpha^{2} L_{k, 1} + \beta^{2} L_{k, 2} \right) = i\hbar \epsilon_{ijk} K_{k}
$$
Where I have chosen $\alpha=\beta=1$.
### Question 2
The spin-1 system has a $3\times 3$ matrix representation and so a 3 dimensional Hilbert space. The spin-3/2 system has a 4 dimensional Hilbert space.

The combined Hilbert space should have $3(4)=12$ dimensions. We will get states with total spins of 5/2, 3/2, and 1/2. Combining the possible values of $s$ and $m$, this yields 12 states in total.

The elements of the $S_{1}^{z}+S_{2}^{z}$ matrix will be,
$$
\bra{s_{1}m_{1}; s_{2}m_{2}} S_{1}^{z} + S_{2}^z \ket{s_{1}m_{1}'; s_{2}m_{2}'}
$$
Which evaluates to,
$$
(m_{1}' + m_{2}') \delta_{m_{1}m_{1}'} \delta_{m_{2}m_{2}'}
$$
In the $\ket{sm}$ basis we have,
$$
\bra{s, m} S_{1}^{z} + S_{2}^{z} \ket{s',m'} = m' \left< s, m | s',m' \right> = m' \delta_{ss'} \delta_{mm'}
$$
For $S_\text{TOT}^{2}$,
$$
\bra{s, m} S^{2}_\text{TOT} \ket{s',m'} = s'(s'+1) \left< s, m | s',m' \right> = s'(s'+1) \delta_{ss'} \delta_{mm'}
$$
And in the individual spin basis instead,
$$
\bra{s_{1}m_{1}; s_{2}m_{2}}  S_\text{TOT}^{2} \ket{s_{1}m_{1}'; s_{2}m_{2}'}
$$
The evaluation of this requires the Clebsh-Gordan coefficients.
### Question 3
Angular momentum, $\vec{L}$, is the generator of rotations. So if this Hamiltonian commutes with $\vec{L}$ then it is rotationally invariant.

The commutator is,
$$
[L, H] = J [L, \vec{S}_{1}\cdot \vec{S}_{2}] + D [L, S_{1}^{z}S_{2}^{z}]
$$
Which implies that we are interesting in showing that $[L, \vec{S}_{1}\cdot \vec{S}_{2}]=0$ and $[L, S_{1}^{z}S_{2}^{z}]\neq 0$
- In the answers the operator they use is instead the spin $\vec{S}_{1}+\vec{S}_{2}$
### Question 4
---
i.
The possible values for the total spin are 2, 1, 0, -1, -2. The possible values for $\vec{S}^{2}_\text{TOT}$ are therefore, 6, 2, 0

---
ii.
Breaking up the dot product we have,
$$
H_{0} = J S_{1}^{z} S_{2}^{z} + \frac{J}{2} (S_{1}^+ S_{2}^- + S_{1}^- S_{2}^+)
$$
