Maxwell noticed an inconsistency in the existing equations. Recall that the divergence of the curl is always zero,
$$
\nabla \times \vec{B} = \mu_{0} \vec{J} \implies \nabla \cdot(\nabla \times \vec{B}) = \mu_{0} \nabla \cdot \vec{J} =0
$$
Which implies that charge can never flow out of any volume of space. Which we physically know is false.

Maxwell therefore proposed adding a correction term,
$$
\nabla \times \vec{B} = \mu_{0}\vec{J} + \mu_{0}\epsilon_{0} \frac{ \partial \vec{E} }{ \partial t }
$$
Which yields the fact that,
$$
\nabla \cdot \vec{J} + \frac{ \partial \rho }{ \partial t } =0
$$
This is the continuity equation, which expresses the conservation of electric charge.

This modification lead to the prediction of EM waves propagating in vacuums.
### Math Review
The Kronecker delta,
$$
\delta_{ik} = \begin{cases}
0, i \neq j \\
1, i=j
\end{cases}
$$
The Levi-Civita Tensor,
$$
\epsilon_{ijk}
$$
Where $i, j, k=1, 2, 3$. Properties:
$$
\epsilon_{123} = 1
$$
Completely anti-symmetric,
$$
\epsilon_{ijk} = - \epsilon_{ikj}
$$
Interchanging any pair swaps the sign. Furthermore, if any two indices are equal, the tensor vanishes.

Consider two vectors $\vec{A}=(A_{1}, A_{2}, A_{3})$ and $\vec{B}=(B_{1}, B_{2}, B_{3})$. We define the notation that,
$$
\vec{A}\cdot \vec{B} = \sum_{i=1}^{3} A_{i}B_{i} = A_{i}B_{i}
$$
Where the summation is implied by the repeated indices. This is called the Einstein summation convention. For example,
$$
(\vec{A}\times \vec{B})_{i} = \epsilon_{ijk} A_{j}B_{k}
$$
Where the subscripts specify the component of the vector. The above would be a summation with ijk as 123 and 132.

Theorem:
$$
\epsilon_{ijk} \cdot \epsilon_{ilm} = \delta_{kl} \delta_{jm} - \delta_{km} \delta_{jl}
$$
Where the summation is over $i$ and you can pick the other subscript values.
### Propagation of Electromagnetic Waves
In free space we have $\rho=0$ and $\vec{J}=0$. Therefore, taking the curl of the fourth equation, we have,
$$
\vec{\nabla}\times \vec{\nabla}\times \vec{B} = \vec{\nabla} (\vec{\nabla} \cdot \vec{B}) - \nabla^{2}\vec{B} = - \mu_{0}\epsilon_{0} \frac{ \partial \vec{E} }{ \partial t }
$$
The divergence of the magnetic field is always 0. So,
$$
\nabla^{2} \vec{B} - \frac{1}{c^{2}} \frac{ \partial^{2}\vec{B} }{ \partial t^{2} } =0
$$
Recall that we have vector and scalar potentials such that $\vec{E}=-\nabla V$ and,
$$
\vec{B} = \nabla \times \vec{A}
$$
In electrodynamics, what if we instead use,
$$
\vec{E} = -\nabla V - \frac{ \partial \vec{A} }{ \partial t }
$$
Two of Maxwell's equations, $\nabla \times \vec{E}$ and $\nabla \cdot \vec{B}$ are both automatically satisfied by this definition. But what about the others?
$$
\nabla \cdot \vec{E} = -\nabla^{2}V - \frac{ \partial  }{ \partial t } (\nabla \cdot \vec{A}) = \frac{\rho}{\epsilon_{0}}
$$
There is some degree of freedom we have with $\vec{A}$, since we are taking a curl. Coulomb's Gauge asserts that,
$$
\nabla \cdot \vec{A} =0
$$
Which therefore gives us that,
$$
-\nabla^{2}V = \frac{\rho}{\epsilon_{0}}
$$
And we need to solve for $V$. Similarly to electrostatics. Now for the last equation,
$$
\nabla \times \vec{B} = \mu_{0}\vec{J} + \frac{1}{c^{2}} \frac{ \partial \vec{E} }{ \partial t }
$$
Which gives us a very complicated equation
$$
\nabla \times \nabla \times \vec{A} = \mu_{0} \vec{J} + \frac{1}{c^{2}} \frac{ \partial  }{ \partial t } \left[ -\nabla V - \frac{ \partial \vec{A} }{ \partial t }  \right]
$$
This is beyond the scope of this course. However, notice on the left-hand side we have,
$$
\nabla \times \nabla \times \vec{A} = \nabla(\nabla \cdot \vec{A}) -  \nabla^{2}A = -\nabla^{2}\vec{A}
$$
And, in the simplest case we have $\vec{J}=0$ and $\nabla V=0$. Or, in free space. The above becomes,
$$
\nabla^{2}\vec{A} = \frac{1}{c^{2}} \frac{ \partial^{2}\vec{A} }{ \partial t^{2} }
$$
