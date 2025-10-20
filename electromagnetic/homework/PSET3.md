![[Pasted image 20251018163114.png]]
This entire field is uncharged, therefore Laplace's equation is valid for the entire system.

The boundary conditions are,
$$
\begin{cases}
V_\text{cond} = V_\text{di} & r=a \\
V_\text{di} = V_\text{out} & r=b \\
\epsilon _\text{cond} \frac{ \partial V_\text{cond} }{ \partial r } = \epsilon _\text{di} \frac{ \partial V_\text{di} }{ \partial r }  & r=a \\
\epsilon_{r} \frac{ \partial V_\text{di} }{ \partial r } = \frac{ \partial V_\text{out} }{ \partial r }  & r=b \\
V_\text{out} \to -E_{0}r \cos\theta & r\gg b
\end{cases}
$$
Where the subscripts "cond" and "di" indicate the conducting sphere and the dielectric insulating shell, respectively. Since the conducting sphere is entirely uncharged, and all the charge from a conducting sphere must reside on the surface,
$$
V_\text{cond} =0 \qquad \frac{ \partial V_\text{cond} }{ \partial r } =0
$$
Simplifying the boundary conditions to,
$$
\begin{cases}
V_\text{di} =0 & r=a \\
V_\text{di} = V_\text{out} & r=b \\
\epsilon_{r} \frac{ \partial V_\text{di} }{ \partial r } = \frac{ \partial V_\text{out} }{ \partial r }  & r=b \\
V_\text{out} \to -E_{0}r \cos\theta & r\gg b
\end{cases}
$$
The general solution in spherical coordinates is,
$$
V(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + \frac{B_{l}}{r^{l+1}} \right) P_{l} (\cos\theta)
$$
Inside the dielectric the potential is therefore,
$$
V_\text{di}(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + \frac{B_{l}}{r^{l+1}} \right) P_{l} (\cos\theta)
$$
And, by boundary condition 4, the potential outside the sphere is,
$$
V_\text{out}(r, \theta) = -E_{0}r\cos\theta + \sum_{l=0}^{\infty} \frac{C_{l}}{r^{l+1}} P_{l}(\cos\theta)
$$
By boundary condition 1,
$$
V_\text{di}(a, \theta) = \sum_{l=0}^{\infty} \left( A_{l}a^{l} + \frac{B_{l}}{a^{l+1}} \right) P_{l} (\cos\theta) =0 \implies A_{l} a^{l} + \frac{B_{l}}{a^{l+1}} =0
$$
$$
A_{l} a^{2l+1} + B_{l} =0 \implies B_{l} =- A_{l} a^{2l+1}
$$
Therefore,
$$
V_\text{di}(r, \theta) = \sum_{l=0}^{\infty} A_{l} \left( r^{l} - \frac{a^{2l+1}}{r^{l+1}} \right) P_{l} (\cos\theta)
$$
From boundary condition 2,
$$
\sum_{l=0}^{\infty} A_{l} \left( b^{l} - \frac{a^{2l+1}}{b^{l+1}} \right) P_{l} (\cos\theta) = -E_{0}b\cos\theta + \sum_{l=0}^{\infty} \frac{C_{l}}{b^{l+1}} P_{l}(\cos\theta)
$$
$$
\begin{cases}
A_{1} \left( b - \frac{a^{3}}{b^{2}} \right) = -E_{0}b + \frac{C_{1}}{b^{2}} & l=1 \\
A_{l}\left( b^{l} - \frac{a^{2l+1}}{b^{l+1}} \right) = \frac{C_{l}}{b^{l+1}} & \text{otherwise}
\end{cases}
$$
From boundary condition 3,
$$
\epsilon_{r} \sum_{l=0}^{\infty} A_{l} \left( lb^{l-1} + \frac{(l+1)a^{2l+1}}{b^{l+2}} \right) P_{l} (\cos\theta) = -E_{0} \cos\theta - \sum_{l=0}^{\infty} \frac{(l+1)C_{l}}{b^{l+2}} P_{l} (\cos\theta)
$$
$$
\begin{cases}
\epsilon_{r} A_{1} \left( 1 + \frac{2a^{3}}{b^{3}} \right) =-E_{0} - \frac{2C_{1}}{b^{3}} & l=1 \\
\epsilon_{r} A_{l} \left( lb^{l-1} + \frac{(l+1)a^{2l+1}}{b^{l+2}} \right) =- \frac{(l+1)C_{l}}{b^{l+2}} & \text{otherwise}
\end{cases}
$$
For $l=1$,
$$
\begin{cases}
A_{1} (b^{3}-a^{3}) = -E_{0}b^{3} + C_{1} \\
\epsilon_{r} A_{1} (b^{3}+2a^{3}) = -E_{0}b^{3} - 2C_{1}
\end{cases}
$$
$$
A_{1} = - \frac{3E_{0}b^{3}}{2a^{3}(\epsilon_{r}-1) + b^{3} (\epsilon_{r}+2)}
$$
It is possible to prove that for $l \neq 1$, the coefficient is always zero. Therefore, the potential inside the dielectric is,
$$
\begin{align}
V_\text{di}(r, \theta) & = \sum_{l=0}^{\infty} A_{l} \left( r^{l} - \frac{a^{2l+1}}{r^{l+1}} \right) P_{l} (\cos\theta) \\
 & = A_{1} \left( r - \frac{a^{3}}{r^{2}} \right) \cos\theta \\
 & = - \frac{3E_{0}b^{3}}{2a^{3}(\epsilon_{r}-1) + b^{3} (\epsilon_{r}+2)} \left( r - \frac{a^{3}}{r^{2}} \right) \cos\theta
\end{align}
$$
Solve for the electric field,
$$
\begin{align}
\mathbf{E} (r, \theta) & = - \nabla V_\text{di} = -A_{1} \nabla \left[ \left( r-\frac{a^{3}}{r^{2}} \right) \cos\theta \right]  \\
 & = -A_{1} \left[ \left( 1+\frac{2a^{3}}{r^{3}} \right) \cos\theta \hat{r} + \left( \frac{a^{3}}{r^{3}}-1 \right) \sin\theta \hat{\theta} \right]  \\
 & = \frac{3E_{0}b^{3}}{2a^{3}(\epsilon_{r}-1) + b^{3} (\epsilon_{r}+2)} \left[ \left( 1+\frac{2a^{3}}{r^{3}} \right) \cos\theta \hat{r} + \left( \frac{a^{3}}{r^{3}}-1 \right) \sin\theta \hat{\theta} \right]
\end{align}
$$
![[Pasted image 20251019103720.png]]
The dielectric constant can be modelled like:
- Draw a diagram for this system
$$
\epsilon_{r} = \frac{x}{d} + 1
$$
Which implies that the permittivity is,
$$
\epsilon_{r} = \frac{x}{d} + 1 = 1 + \chi_{e} \implies \chi_{e} = \frac{x}{d}
$$
By Gauss' law, the displacement field for one plate of the capacitor is,
$$
\oint \mathbf{D}\cdot d\mathbf{A} = \frac{Q_\text{free}}{\epsilon_{0}}
$$
Use a Gaussian pillbox wrapping the plates with sides of area $A$, then:
- Draw a diagram for the pillbox
$$
2DA = \sigma_{f} A \implies D = \frac{\sigma_{f}}{2}
$$
Where $\sigma_{f}$ is the free surface change density on the plate. The displacement field from both plates, inside the capacitor is therefore,
$$
\mathbf{D} = \sigma_{f} \hat{x}
$$
From the displacement field, the electric field is given by,
$$
\mathbf{D} = \epsilon \mathbf{E} \implies \mathbf{E} = \frac{\mathbf{D}}{\epsilon_{0} \epsilon_{r}} = \frac{\sigma_{f}}{\epsilon_{0}} \left( \frac{x}{d}+1 \right)^{-1} \hat{x}
$$
The polarization is therefore,
$$
\mathbf{P} = \epsilon_{0} \chi_{e} \mathbf{E} = \epsilon_{0} \left( \frac{x}{d} \right) \left[ \frac{\sigma_{f}}{\epsilon_{0}} \left( \frac{x}{d}+1 \right)^{-1} \hat{x} \right] = \frac{\sigma_{f} x}{x+d} \hat{x}
$$
The bound charges on the plates are,
$$
\sigma_{b} = \mathbf{P} \cdot \hat{n} = \begin{cases}
\sigma_{f} /2 & x=d \\
0 & x=0
\end{cases}
$$
The bound charge density within the capacitor is,
$$
\rho_{b} = - \nabla \cdot \mathbf{P} = - \sigma_{f} \frac{ \partial  }{ \partial x } \frac{x}{x+d} = - \frac{\sigma_{f}d}{(x+d)^{2}}
$$
The total bound charge is,
$$
Q_\text{bound} = \int \rho_{b} \, d\tau + \int \sigma_{b} \, da = -\sigma_{f} d \int_{0}^{\alpha} \int_{0}^{\beta} \int_{0}^{d} \frac{1}{(x+d)^{2}} \, dx  \, dy  \, dz + \frac{\sigma_{f}}{2} \int_{0}^{\alpha} \int_{0}^{\beta}  \, dy  \, dz
$$
Where $\alpha$ and $\beta$ are the dimensions of the capacitor. Separating the variables,
$$
Q_\text{bound} = -\sigma_{f} \alpha \beta d \int_{0}^{d} \frac{1}{(x+d)^{2}} \, dx + \frac{\sigma_{f}}{2} \alpha \beta
$$
Evaluate the integral,
$$
\int_{0}^{d} \frac{1}{(x+d)^{2}} \, dx = - \frac{1}{x+d} \bigg|_{0}^{d} = \frac{1}{2d}
$$
So,
$$
Q_\text{bound} = - \sigma_{f} \alpha \beta d \left( \frac{1}{2d} \right) + \frac{\sigma_{f}}{2} \alpha \beta = - \frac{\sigma_{f}}{2} \alpha \beta + \frac{\sigma_{f}}{2} \alpha \beta =0
$$
As needed.
