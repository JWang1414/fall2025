$$
\mathcal{H} = J \vec{S}_{1}\cdot \vec{S}_{2} = \frac{J}{2} (\vec{S}_{1} + \vec{S}_{2})^{2} - \frac{J}{2} \vec{S}_{1}^{2} - \frac{J}{2} \vec{S}_{2}^{2}
$$
Because the eigenvalues for $\vec{S}_{1}^{2}$ are $s(s+1)$ we have,
$$
\mathcal{H} = \frac{J}{2} \vec{S}^{2}_\text{TOT} - \frac{J}{2} \cdot \frac{3}{2}
$$
Rearranging for $\vec{S}^{2}_\text{TOT}$ we find,
$$
\vec{S}^{2}_\text{TOT} = \frac{2}{J} \left( E + \frac{3}{4}J \right)
$$
Previously, we solve the energies of the ground states and the triplet states. Which are,
$$
E_{0} = -\frac{3}{4}J \qquad E_{1} = \frac{J}{4}
$$
Therefore this gives us the result that,
$$
\vec{S}^{2}_\text{TOT} =0 \implies \vec{S}^{2}_\text{TOT} =0
$$
And,
$$
\vec{S}^{2}_\text{TOT} = 2 \implies \vec{S}_\text{TOT} = 1
$$
- How do we know this? The sqrt of 2 isn't 1

Lets move onto more complex systems. Imagine we have two spin-1 particles. Now, we have two rotationally invariant terms in the Hamiltonian,
$$
\mathcal{H} = J \vec{S}_{1}\cdot \vec{S}_{2} + K (\vec{S}_{1}\cdot \vec{S}_{2})^{2}
$$

---

Recall the coefficients we identified previously. $C^{l_{1}l_{2}l}_{m_{1}m_{2}m}$. Where we require that $m_{1}+m_{2}=m$. Lets go back to the spin-1/2 example. We can notice that, for $l=1$, there is also only one maximum possible value of $m$. This state, with two spin up particles we have,
$$
\ket{++} \equiv \ket{1, 1}
$$
Where these indicate the spin ($l$) and $m$ values. Applying the lowering operator to this state, we get,
$$
S^{-}_\text{TOT} \ket{1, 1}  = \sqrt{ 2 } \ket{1,0}
$$
Where, generally speaking, we have,
$$
S^{-} \ket{S, M} = \sqrt{ (S+M)(S-M+1) }\ket{S, M-1}
$$
In terms of the spin states we are used to,
$$
(S_{1}^{-} + S_{2}^{-}) \ket{++} = \ket{- +} + \ket{+ -}
$$
And, because these two states must be equal, we obtain the expected result that,
$$
\ket{1, 0}  = \frac{1}{\sqrt{ 2 }} ( \ket{+ -}  + \ket{- +} )
$$
Apply the lowering operator again,
$$
(S^{-}_\text{TOT}) (S^{-}_\text{TOT}) \ket{1, 1} = 2 \ket{1, -1}
$$
If we check the spin state notation we will find that,
$$
\ket{1, -1}  = \ket{--}
$$
- This tells us both the ground and max states are unique

To determine the singlet state, lets leverage the fact that we require $m_{1}+m_{2}=m=0$. So, generally speaking we need,
$$
\ket{0, 0} = \alpha \ket{+ -} + \beta \ket{- +}
$$
Which is very similar to our $\ket{1, 0}$ state. However, because the states must be orthogonal, we also have,
$$
\left< 0, 0 | 1, 0 \right> =0
$$
And so we conclude that,
$$
\ket{0, 0} = \frac{1}{\sqrt{ 2 }} \left( \ket{+ -} - \ket{- +}  \right)
$$
- What we have just done is an algorithm for searching for the states

---

Okay, now lets tackle an example with two spin-1 particles. Each particle can have spin 1, 0, -1, and so we have a total of 9 possibilities. Hilbert space has 9 dimensions.

First, uniquely determine the highest total spin state, which is the one with $s=2$ and $m=2$. Therefore,
$$
\ket{2, 2} = \ket{1} \ket{1}
$$
Now, lets apply the lowering operator to this state.
$$
2 \ket{2, 1} = \sqrt{ 2 } \ket{0} \ket{1} + \sqrt{ 2 }\ket{1} \ket{0}
$$
Apply it again, and we find,
$$
\ket{2, 0} = \frac{1}{\sqrt{ 6 }} \left( \ket{1} \ket{-1} + \ket{-1} \ket{1} + 2\ket{0} \ket{0} \right)
$$
$$
\ket{2, -1} = \frac{1}{\sqrt{ 2 }} (\ket{-1} \ket{0} + \ket{0} \ket{-1}  )
$$
$$
\ket{2, -2} = \ket{-1} \ket{-1}
$$
So what about the states with total spin 1? We know that it will have $s=1$ and $m=1$. Lets look back at the states we have already written for inspiration.
$$
\ket{1, 1} = a \ket{1} \ket{0} + b\ket{0} \ket{1}
$$
And notice that it must be perpendicular to our $\ket{2, 1}$ state. So we get,
$$
\ket{1, 1} \frac{1}{\sqrt{ 2 }} (\ket{1} \ket{0} -\ket{0} \ket{1} )
$$
Now just apply the lowering operator.
- Won't include this writing

For the final state $\ket{0, 0}$, we need to find a state that is orthogonal to the two previous states we have found with $m=0$.
