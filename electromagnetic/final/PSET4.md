![[Pasted image 20251203155837.png]]
For a wire,
$$
\vec{H} = \frac{I}{2\pi s} \hat{\phi}
$$
When $a<s<b$. From here we have,
$$
\vec{B} = \mu_{0} (1+\chi_{m}) \frac{I}{2\pi s} \hat{\phi}
$$
$$
\vec{M} = \frac{\chi_{m}I}{2\pi s} \hat{\phi}
$$
$$
\vec{J}_{b} = \nabla \times \vec{M} = -\frac{ \partial M_{\phi} }{ \partial z } \hat{s} + \frac{1}{s} \frac{ \partial (sM_{\phi}) }{ \partial s } \hat{z} = \vec{0}
$$
---
I forgot to calculate the bound surface charge,
$$
\vec{K}_{b} = \vec{M}\times \hat{n} = \vec{M} \times \vec{s}
$$
The bound surface charge will appear on the surfaces when $s=a$ and $s=b$.

When $s=a$
$$
\vec{K}_{b} = \frac{\chi_{m}I}{2\pi a} \hat{\phi} \times -\hat{s} = \frac{\chi_{m}I}{2\pi a} \hat{s}\times \hat{\phi} = \frac{\chi_{m}I}{2\pi a} \hat{z}
$$
When $s=b$
$$
\vec{K}_{b} = \frac{\chi_{m}I}{2\pi b} \hat{\phi} \times \hat{s} =- \frac{\chi_{m}I}{2\pi b} \hat{z}
$$
The total enclosed current is therefore,
$$
I + \frac{\chi_{m}I}{2\pi a} (2\pi a) = (1+\chi_{m})I
$$
And you can use this to compute the magnetic field directly, using Ampere's law, from here.
![[Pasted image 20251203222249.png]]
a.
The magnetic force on a dipole is,
$$
\vec{F} = \nabla(\vec{m}\cdot \vec{B})
$$
The work done is therefore,
$$
U = - \int_{\mathcal{O}}^{\vec{r}} \vec{F}\cdot d\vec{l} = - \int_{\mathcal{O}}^{\vec{r}} \nabla(\vec{m}\cdot \vec{B})\cdot d\vec{l}
$$
Apply the gradient theorem,
$$
\int_{a}^{b} (\nabla T)\cdot d\vec{l} = T(\vec{b}) - T(\vec{a})
$$
$$
U = - \vec{m}\cdot \vec{B}(\vec{r}) + \vec{m}\cdot \vec{B}(\mathcal{O})
$$
Choose $\mathcal{O}\to \infty$.
$$
U = - \vec{m}\cdot \vec{B}(\vec{r})
$$
---
b.
The magnetic field of a dipole is
$$
\vec{B}_\text{dip}(\vec{r}) = \frac{\mu_{0}}{4\pi} \frac{1}{r^{3}} [3(\vec{m}\cdot \hat{r})\hat{r} - \vec{m}]
$$
From the previous question we have,
$$
U = -\vec{m}\cdot \vec{B} =- \frac{\mu_{0}}{4\pi} \frac{1}{r^{3}} \vec{m}\cdot \left[ 3(\vec{m}_{0}\cdot \hat{r})\hat{r} - \vec{m}_{0} \right]
$$
$$
U = \frac{\mu_{0}}{4\pi} \frac{1}{r^{3}} \left[ \vec{m}\cdot \vec{m}_{0} - 3(\vec{m}_{0}\cdot \hat{r})(\vec{m}\cdot \hat{r}) \right]
$$
The dot product distributes because $\vec{m}_{0}\cdot \hat{r}$ is a scalar
![[Pasted image 20251203231522.png]]
c.
Energy would be,
$$
U = \frac{\mu_{0}}{4\pi} \frac{1}{r^{3}} \left[ |\vec{m}||\vec{m}_{0}| \cos(\theta_{1}-\theta_{2}) - 3|\vec{m}||\vec{m}_{0}|\cos\theta_{1} \cos\theta_{2} \right]
$$
$r^{-3}$ has no zeros so the configuration will be related to the angles. Define $\theta_{2}=\theta_{1}+\phi$ and drop the subscripts. I will also drop the constant multiplier out front.
$$
\cos \phi - 3 \cos\theta \cos(\theta+\phi) = \cos \phi - 3 \cos\theta (\cos\theta \cos \phi - \sin\theta \sin \phi)
$$
$$
\cos \phi - 3 \cos ^{2}\theta \cos \phi - 3\sin\theta \cos\theta \sin \phi
$$
Gradient is,
$$
\begin{bmatrix}
3\left[ \sin\theta \cos(\theta+\phi) + \cos\theta \sin(\theta+\phi) \right]  \\
3 \cos \theta \sin(\theta+\phi) - \sin \phi
\end{bmatrix} = \vec{0}
$$
Wolfram Alpha says that the roots are at,
$$
\theta = 2\pi n_{1}+\pi \qquad \phi=\frac{1}{2}(4\pi n_{2} \pm \pi)
$$
For simplicity I'm just going to choose $n_{1}=n_{2}=0$. So we have $\theta=\pi$ and $\phi=\pm \pi$. Which means that the two dipoles either point in the same direction, or in opposite directions. If they're facing the opposite directions, it's definitely a maximum.

I conclude that the stable configuration the two dipoles would adopt is with both facing the same direction.
- I failed to check the case to see if they line up perpendicular or parallel to $\hat{r}$. The answer is that they will all line up parallel to $\hat{r}$.

---
d.
All of them would face in the same direction.
![[Pasted image 20251206164107.png]]
The boundary conditions at this surface are,
$$
B^{\perp}_\text{above} - B^{\perp}_\text{below} = 0 \qquad \vec{H}^{\parallel}_\text{above} - \vec{H}^{\parallel}_\text{below} = \vec{K}_{f} \times \hat{n} =0
$$
So therefore we have,
$$
B^{\perp}_\text{above} = B^{\perp}_\text{below} \qquad  \vec{H}^{\parallel}_\text{above} = \vec{H}^{\parallel}_\text{below}
$$
Convert from $\vec{H}$ to $\vec{B}$ to find,
$$
\frac{\vec{B}^{\parallel}_\text{above}}{\mu_{1}} = \frac{\vec{B}^{\parallel}_\text{below}}{\mu_{2}}
$$
By the definition of the tangent function
$$
\tan\theta = \frac{B^{\parallel}}{B^{\perp}}
$$
Therefore,
$$
\frac{\tan\theta_{2}}{\tan\theta_{1}} = \frac{\vec{B}^{\parallel}_\text{below}}{\vec{B}^{\perp}_\text{below}} \frac{\vec{B}^{\perp}_\text{above}}{\vec{B}^{\parallel}_\text{above}} = \frac{\vec{B}^{\parallel}_\text{below}}{\vec{B}^{\parallel}_\text{above}} = \frac{\mu_{2}}{\mu_{1}}
$$
![[Pasted image 20251207211955.png]]
![[Pasted image 20251207212541.png]]
General solution is,
$$
W(r, \theta) = \sum_{l=0}^{\infty} \left( A_{l}r^{l} + \frac{B_{l}}{r^{l+1}}  \right) P_{l}(\cos\theta)
$$
The boundary conditions are:
$$
\begin{cases}
W_\text{inside} = W_\text{outside} & r=R \\
\mu_{0} \frac{ \partial W_\text{outside} }{ \partial r } = \mu \frac{ \partial W_\text{inside} }{ \partial r }  & r=R \\
W = -\frac{B_{0}}{\mu_{0}} r \cos\theta & r\gg R
\end{cases}
$$
Inside the sphere,
$$
W(r, \theta) = \sum_{l=0}^{\infty}  A_{l}r^{l} P_{l}(\cos\theta)
$$
Outside the sphere,
$$
W(r, \theta) = -\frac{B_{0}}{\mu_{0}} r \cos\theta  + \sum_{l=0}^{\infty} \frac{B_{l}}{r^{l+1}} P_{l}(\cos\theta)
$$
Apply boundary condition 1,
$$
\sum_{l=0}^{\infty} A_{l}R^{l} P_{l}(\cos\theta) = -\frac{B_{0}}{\mu_{0}} R \cos\theta  + \sum_{l=0}^{\infty} \frac{B_{l}}{R^{l+1}} P_{l}(\cos\theta)
$$
So,
$$
A_{1} R = -\frac{B_{0}}{\mu_{0}} R + \frac{B_{1}}{R^{2}} \qquad \text{for }l=1
$$
$$
A_{l}R^{l} = \frac{B_{l}}{R^{l+1}} \qquad \text{for }l \neq 1
$$
Apply boundary condition 2,
$$
\mu \sum_{l=0}^{\infty} lA_{l} R^{l-1} P_{l}(\cos\theta) = -B_{0} \cos\theta - \mu_{0} \sum_{l=0}^{\infty} \frac{(l+1)B_{l}}{R^{l+2}} P_{l}(\cos\theta)
$$
So,
$$
\mu A_{1} = -B_{0} - \mu_{0} \frac{2B_{1}}{R^{3}} \qquad \text{for }l=1
$$
$$
\mu lA_{l}R^{l-1} = - \mu_{0} \frac{(l+1)B_{l}}{R^{l+2}} \qquad \text{for }l \neq 1
$$
The equations for $l \neq 1$ are incompatible with each other, and so I conclude,
$$
A_{l} = B_{l} =0 \qquad \text{for }l \neq 1
$$
From here you can setup a system of equations to solve for $A_{1}$. Which defines the potential $W$ inside the sphere. Then, you can solve for $\vec{B}$ with,
$$
\vec{H} \equiv \frac{1}{\mu_{0}} \vec{B} - \vec{M} = \frac{\vec{B}}{\mu_{0}} \implies \vec{B} = \mu_{0}\vec{H} = -\mu_{0} (\nabla W)
$$
