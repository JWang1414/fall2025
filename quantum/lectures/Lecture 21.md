# 1D Scattering
Recall that we were discussing scattering last time. However, because the scattering potential is often spherically symmetrical, it is often useful to express the problem as a spherical wave going in, and then going out.

Lets look at the analog with the 1D delta function potential. Lets model this potential as,
$$
V(x) = \lambda \delta(x)
$$
And the incoming and outgoing waves can be,
$$
A_{R} e^{ ikx } \qquad B_{R} e^{ ikx } \qquad A_{L} e^{ ikx } \qquad B_{L} e^{ ikx }
$$
Where $A$ indicates and incoming wave, and $B$ indicates an outgoing wave. The subscript tell us if the wave is moving to the left or right.

What are the boundary conditions of this problem? Well, at the boundary the wave functions on the left and right side must be equal,
$$
A_{R} + B_{L} = B_{R} + A_{L}
$$
And, the derivatives will be related by,
$$
\frac{ \partial \psi _\text{right} }{ \partial x } \bigg|_{0} - \frac{ \partial \psi _\text{left} }{ \partial x } \bigg|_{0} = \frac{2m}{\hbar^{2}} \lambda \psi(0)
$$
- This comes out at something from the Schrodinger equation, and it has also been verified experimentally. I don't really understand it, but it's clearly true.

It is from this second relation that we can derive the relation,
$$
ik(B_{R}+B_{L}-A_{R}-A_{L}) = \frac{2m\lambda}{\hbar^{2}} (A_{L}+B_{R}) = \frac{2m\lambda}{\hbar^{2}} (A_{R}+B_{L})
$$
Typically, when we do these sorts of problems, we will turn off one of the incoming waves.

For example, if $A_{L}=0$ than we have,
$$
t = \frac{B_{R}}{A_{R}} \qquad r = \frac{B_{L}}{A_{R}}
$$
With the probabilities $R=|r|^{2}$ and $T=|t|^{2}$. This should be a pretty familiar problem. You can repeat this exact same problem for the other side too. Generally speaking, we have,
$$
t'=t \qquad r'=\frac{r^*t}{t^*}
$$
Where $r'$ and $t'$ are the reflection and transmission coefficients for the other side. However, for the potential we are working with $\lambda\delta(x)$
$$
t'=t \qquad r'=r
$$
Now, in the case when both $A_{L}$ and $A_{R}$ are not zero, then we might try to superpose the two cases we just solved for on top of each other to determine what might happen here.

In this case we have,
$$
\begin{bmatrix}
B_{R} \\
B_{L}
\end{bmatrix} = \begin{bmatrix}
t & r' \\
r & t'
\end{bmatrix} \begin{bmatrix}
A_{R} \\
A_{L}
\end{bmatrix}
$$
This matrix is often called the scattering matrix, or S-matrix. The S-matrix must be a unitary matrix, which arises because of the conservation of probability.

This brings the question: Can we choose a basis such that this matrix is diagonalized? Lets try this for our system
$$
S = \begin{bmatrix}
t & r \\
r & t
\end{bmatrix}
$$
Define the rotation matrix:
$$
\mathcal{R} = \frac{1}{\sqrt{ 2 }} \begin{bmatrix}
1 & 1 \\
1 & -1
\end{bmatrix}
$$
Then,
$$
\mathcal{R} \begin{bmatrix}
B_{R} \\
B_{L}
\end{bmatrix} = \mathcal{R} \begin{bmatrix}
t & r \\
r & t
\end{bmatrix} \mathcal{R}^{\dagger} \mathcal{R} \begin{bmatrix}
A_{R} \\
A_{L}
\end{bmatrix}
$$
Which is,
$$
\begin{bmatrix}
B_{R} + B_{L} \\
B_{R} - B_{L}
\end{bmatrix} = \begin{bmatrix}
t+r & 0 \\
0 & t-r
\end{bmatrix} \begin{bmatrix}
A_{R} + A_{L} \\
A_{R} - A_{L}
\end{bmatrix}
$$
This can be imagined as an incoming even combination solution or wave on the potential, and bouncing back as an even parity solution again. The same can be said for the odd combination.

It turns out that,
$$
t+r = \frac{1-im\lambda /\hbar^{2}k}{1+im\lambda /\hbar^{2}k} \qquad t-r=1
$$
These two amplitudes can also be written out as complex exponentials,
$$
t+r=e^{ 2i\delta_{+} } \qquad t-r=e^{ 2i\delta_{-} }
$$
Where $\delta_{\pm}$ are called the scattering phase shifts.

The phase shifts give us another way of looking at the problem. For example, if $\lambda=0$ then $\delta_{+}=0$ as well. This is the case when there is no potential, so nothing changes because everything that goes in leaves without anything happening.

Notice that for the odd solution, $\delta_{-}$ is always zero for this potential. This arises because the potential is only non-zero at $x=0$. However, odd functions are always zero at $x=0$. In this sense, the odd solutions "do not see" the potential and move on as if nothing happened.
# 3D Scattering
In 3D you can kind of imagine this as a wave arriving onto a potential with some angular momentum $\vec{L}$, and then leaving with some momentum $\vec{L}$ again. $\vec{L}$ doesn't change here.

If you are far away from the scattering centre we have,
$$
\psi _\text{far}(r, \theta) = e^{ ikz } + f(\theta) \frac{e^{ ikr }}{r}
$$
In spherical coordinates, this can also be expressed as,
$$
\sum_{l=0}^{\infty} \frac{2l+1}{2ik} \left( \frac{e^{ ikr }}{r} - \frac{(-1)^{l}e^{ -ikr }}{r} \right)P_{l}(\cos\theta) + f(\theta) \frac{e^{ ikr }}{r}
$$
And,
$$
f(\theta) = \sum_{l=0}^{\infty} \frac{2l+1}{k}f_{l} P_{l}(\cos\theta)
$$
You can imagine $f_{l}$ as something similar to Fourier coefficients. The $f_{l}$s turn out to be related to the phase shifts.
$$
f_{l} = e^{ i\delta_{l} } \sin\delta_{l}
$$
