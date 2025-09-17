### Angular Momentum
$\vec{L}$ is the generator of rotation in real space, whereas $\vec{S}$ is the generator of rotation in spin space.

Because the different angular momentum components do not commute, how can we discuss the "total angular momentum"? For example, for states with several particles.

Let first label from angular momentum states,
$$
\ket{l_{1}, m_{1}} \qquad \ket{l_{2}, m_{2}}
$$
Generally speaking, for two particles the total angular momentum is notated as,
$$
\ket{l_{1}, m_{1}} \otimes  \ket{l_{2}, m_{2}} = \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
To notate an operator that operates on just one of the states, we use:
$$
\vec{L}_{1} \otimes  \hat{1} = \vec{L}_{1}
$$
The total angular momentum is,
$$
\vec{L}_\text{TOT} = \vec{L}_{1}+ \vec{L}_{2}
$$
Recall that,
$$
\vec{L}_{1z} \ket{l_{1}m_{1}; l_{2}m_{2}} = m_{1} \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
For the purposes of this lecture, $\hbar=1$. The same is true for the operator $\vec{L}_{2z}$.Therefore,
$$
\vec{L}_\text{TOT} \ket{l_{1}m_{1}; l_{2}m_{2}} = (m_{1} + m_{2}) \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
However, we need to check if $\vec{L}_\text{TOT}$ is really an angular momentum operator.
$$
[L_{\text{TOT}\alpha}, L_{\text{TOT}\beta}] = [L_{1\alpha} + L_{2\alpha}, , L_{1\beta} + L_{2\beta}] = i\epsilon_{\alpha \beta \gamma} L_{1\alpha} + i \epsilon_{\alpha \beta \gamma} L_{2\gamma} = i \epsilon_{\alpha \beta \gamma} L_{\text{TOT}\gamma}
$$
And so we can see this is in fact an angular momentum operator.

Now, what is the action of $\vec{L}^{2}_\text{TOT}$?
$$
\vec{L}^{2}_\text{TOT} = L_{1}^{2} + L_{2}^{2} + 2 L_{1}\cdot L_{2}
$$
Since $L_{1}$ and $L_{2}$ commute, the order doesn't matter here. Here, our representation will be done in terms of the raising and lowering operators,
$$
L_{\pm} \ket{lm} = \sqrt{ (l\mp m)(l\pm m+1) } \ket{l, m\pm 1}
$$
Since,
$$
L_{\pm} = L_{x} \pm i L_{y}
$$
We can rewrite the action of $L^{2}_\text{TOT}$ as,
$$
L^{2}_\text{TOT} \ket{l_{1}m_{1}; l_{2}m_{2}} = (l_{1}(l_{1}+1) + l_{2}(l_{2}+1)) \ket{l_{1}m_{1}; l_{2}m_{2}} + 2 \left( L_{1z}L_{2z} + \frac{1}{2} L_{1+} L_{2-} + \frac{1}{2} L_{1-}L_{2+} \right) \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
The $z$ angular momentum operators commute, so they don't do much. And the following terms become:
$$
\left[ l_{1}(l_{1}+1) + l_{2}(l_{2}+1) + 2m_{1}m_{2} \right] \ket{\dots} + \alpha \ket{l_{1}, m_{1}+1; l_{2}, m_{2}-1} + \beta \ket{l_{1}, m_{1}-1; l_{2}, m_{2}+1}
$$
Classically, we might imagine this as two vectors we know the $z$ component and magnitude of, but we do not know the $x$ and $y$ values. So the possible versions of each vector forms a cone.

Adding together the two vectors, we will find that if they point in the same direction, we have a max magnitude, and minimum if they are pointing opposite.

The possible values of $L_\text{TOT}$ that are allowed are,
$$
l_{1}-l_{2}, l_{1}-l_{2} + 1, \dots, l_{1}+l_{2}
$$
Because the values of $m_{1}$ range between $-l_{1}$ and $l_{1}$, the number of possible values for the state $\ket{l_{1}m_{1}; l_{2}m_{2}}$ is $(2l_{1}+1)(2l_{2}+1)$. So, how many possible states are there for $L_\text{TOT}$? Well, for every eigenvalue we have the same possible numbers of $m$:
$$
2(l_{1}-l_{2})+1 + 2(l_{1}-l_{2}+1)+1 + \dots
$$
Combining this all into a summation,
$$
\sum_{l_\text{TOT}=l_{1}-l_{2}}^{l_{1}+l_{2}} (2l_\text{TOT}+1) = (2l_{1}+1) (2l_{2}+1)
$$
Exactly the same number of possibilities.

Imagine some basis rotation such that we have the new states,
$$
\ket{l_{1}l_{2}; lm} = \sum_{m_{1}m_{2}} C^{l_{1}l_{2}l}_{(m_{1}m_{2})m} \ket{l_{1}m_{1}; l_{2}m_{2}}
$$
The operator $C$ is some huge rotation matrix that is swapping the coordinates. We call the entries in here the Clebsh-Gordan coefficients.

---
Example:
Define two states $S_{1} = 1 /2$ and $S_{2} = 1 /2$. With,
$$
H = J \vec{S}_{1} \cdot \vec{S}_{2}
$$
Lets first find the symmetries:
- Time reversal
- Global rotation (rotating everything around a common axis)
- Translation

- The generators of global rotation are the total angular momentum operators