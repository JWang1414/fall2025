### Electric Potential
Theorem:
> Any vector whose curl is zero is equal to the gradient of some scalar

Furthermore, because $\nabla \times \vec{E}=0$, the line integral of $\vec{E}$ around any closed loop is zero. This can also mean that the line integral between two points is independent of the path taken. 

Based on the above facts, we defined,
$$
V(\vec{r}) \equiv - \int_{\mathcal{O}}^{\vec{r}} \vec{E} \cdot d\vec{l}
$$
The potential between two points is,
$$
V(\vec{b}) - V(\vec{a}) = - \int_{a}^{b} \vec{E}\cdot d\vec{l}
$$
And, in differential form, the electric field in terms of the scalar potential is,
$$
\vec{E} =- \vec{\nabla} V
$$
Just like electric fields, potential follows the laws of superposition. The scalar potential is particularly useful because it removes the need to deal with components, instead combining all the information about the electric field within one scalar function.

According to the divergence of $\vec{E}$,
$$
\vec{\nabla}\cdot \vec{E} = \frac{\rho}{\epsilon_{0}} \implies \nabla^{2}V = - \frac{\rho}{\epsilon_{0}}
$$
Which is called *Poisson's equation*. In regions where there is no charge, this reduces to *Laplace's equation*,
$$
\nabla^{2}V =0
$$
Generally speaking, the potential of a point charge $Q$ is,
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \frac{Q}{r}
$$
For a volume charge,
$$
V(\vec{r}) = \frac{1}{4\pi\epsilon_{0}} \int \frac{\rho(\vec{r}')}{r} \, d\tau
$$
### Vector Potential
The magnetostatics equivalent for the scalar potential is the vector potential.
$$
\vec{B} = \vec{\nabla} \times \vec{A}
$$
Notice that it is possible to add any function whose curl vanishes with no effect on $\vec{B}$. We can use this fact to eliminate the divergence on $\vec{A}$.
$$
\vec{\nabla}\cdot \vec{A} =0
$$
- The curl of any gradient is zero, so adding the gradient of any scalar with always work.

Using the condition that $\nabla \cdot \vec{A}=0$, Ampere's law becomes,
$$
\nabla^{2}\vec{A} = -\mu_{0} \vec{J}
$$
Which is very similar to Poisson's equation. It is equivalent to one Poisson's equation for each Cartesian component. Assuming $\vec{J}$ goes to zero at infinity, this has the familiar solution,
$$
\vec{A}(\vec{r}) = \frac{\mu_{0}}{4\pi} \int \frac{\vec{J}(\vec{r}')}{r} \, d\tau
$$
For line currents,
$$
\vec{A} = \frac{\mu_{0}}{4\pi} \int \frac{\vec{I}}{r} \, dl' = \frac{\mu_{0}I}{4\pi} \int \frac{1}{r} \, d\vec{l}'
$$
For surface currents,
$$
\vec{A} = \frac{\mu_{0}}{4\pi} \int \frac{\vec{K}}{r} \, da'
$$
Generally speaking, the direction of $\vec{A}$ follows the direction of current.