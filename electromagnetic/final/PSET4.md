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
