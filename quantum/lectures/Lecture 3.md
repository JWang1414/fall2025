Recall from last lecture we defined:
$$
V(x+a) = V(x)
$$
$$
\bra{x} T_{a} \ket{\psi}  = \psi(x-a)
$$
$$
T_{a} \ket{\psi}  = e^{ -2\pi i\omega } \ket{\psi}
$$
$$
\psi(x) e^{ -2\pi i\omega } = \psi(x-a)
$$
Which is a potential with translational symmetry, and the associated eigenstates.

If we define the function:
$$
\phi(x) = \psi(x) e^{ -i(2\pi \omega/a)x }
$$
Then we also similarly have that the eigenstate is in the form:
$$
\psi(x) = \phi(x) e^{ i(2\pi \omega/a)x }
$$
Where $\phi(x)$ is some periodic function. This is the statement of Bloch's theorem, which effectively states that, in a potential with translational symmetry, the eigenstates are the composition of a periodic and moving wave.

We call $2\pi \omega /a$ the crystal momentum.
### Continuous Symmetries
Consider the infinitely small translation $T_{\xi}$ where $\xi\to 0$. Which, of course gives us the expected result
$$
\bra{x} T_{\xi} \ket{\psi}  = \psi(x-\xi) = \psi(x) - \xi \frac{ \partial \psi }{ \partial x }
$$
From our knowledge of momentum, we can replace this second term with
$$
\bra{x} T_{\xi} \ket{\psi} = \psi(x) - \left( \frac{i\xi}{\hbar} \right) \left( -i\hbar \frac{ \partial \psi }{ \partial x }  \right)= \psi(x) - \frac{i\xi}{\hbar} \hat{p} \psi(x)
$$
Factoring out the original function, we obtain that:
$$
T_{\xi} = \hat{1}- \frac{i\xi}{\hbar} \hat{p}
$$
Define some new value $N\to \infty$. Then, we can see from this that a discrete translation is:
$$
T_{a} = \left( \hat{1} - \frac{i}{\hbar} \frac{a}{N} \hat{p} \right)^{N} = e^{ -i\hat{p}a/\hbar }
$$
You can imagine this as infinite slices infinite times, the total length of it will match $a$. The momentum operator is called the *generator* of translation.
### Translational Symmetry of the Hamiltonian
Because the momentum operator generates the translations in the translation operator, we have:
$$
[T_{a}, H]=0 \iff [\hat{p}, H] =0
$$
From Ehrenfest theorem, this means that $\hat{p}$ is constant in time. Alternatively, because $\hat{p}$ and $H$ commute, we have:
$$
\bra{\psi(t)}  \hat{p} \ket{\psi(t)} = \bra{\psi(0)} e^{ iHt/\hbar } \hat{p} e^{ -iHt/\hbar } \ket{\psi(0)} = \bra{\psi(0)} \hat{p} \ket{\psi(0)}
$$
Which also implies that $\left< p \right>(t)$ is time independent/
### Rotations
To rotate about the $z$-axis we can use the representation:
$$
\begin{bmatrix}
\cos \phi & -\sin \phi & 0 \\
\sin \phi & \cos \phi & 0 \\
0 & 0 & 1
\end{bmatrix}
$$
The way we can use this operator is:
$$
\bra{\vec{x}}  R_{z} (\phi) \ket{\psi}  = \tilde{\psi} (\vec{x}) = \psi(R_{z}(-\phi) \cdot \vec{x})
$$
Where we have defined the function $\ket{\tilde{\psi}}=R_{z}(\phi)\ket{\psi}$.

How about some infinitely small rotation? Using the same approach above,
$$
\tilde{\psi}(\vec{x}) = \psi(x+\varepsilon y, y-\varepsilon x, z)
$$
Where we have obtained these small transformations from the Taylor expansions of cosine and sine.
$$
\tilde{\psi}(\vec{x}) = \psi(\vec{x}) + \varepsilon y\partial_{x}\psi - \varepsilon x \partial_{y} \psi = \psi(\vec{x}) - \varepsilon (x\partial_{y}\psi - y \partial_{x}\psi)
$$
Which is equivalent to the angular momentum operator,
$$
\ket{\tilde{\psi}} = \ket{\psi} - \frac{i\varepsilon}{\hbar} \hat{L}_{z} \ket{\psi}  = \left[ \hat{1} - \frac{i\varepsilon}{\hbar} \hat{L}_{z} \right] \ket{\psi}
$$
We conclude that angular momentum is the generator of rotations.
$$
\hat{R}_{\phi} \ket{\psi}  = e^{ -i\hat{L}_{z}\phi/\hbar } \ket{\psi}
$$
Generally speaking,
$$
\hat{R} \ket{\psi} = e^{ -(i/\hbar) (\vec{L}\cdot \hat{n})\phi } \ket{\psi}
$$
$\hat{n}$ defines the axis of rotation, and $\phi$ defines how much to rotate by.
### Time Reversal
Can be thought of as reversing the movements of things, as opposed to actually going back in time.

Time reversal symmetry tells us that if we reverse the motion of something, you should end up back to your original position.

Define from time reversed state:
$$
\ket{\psi} \to \ket{\tilde{\psi}} = \Theta \ket{\psi}
$$
Given some particle, if we time reverse it some time $t$, then we should get the particle in the same position, but with the opposite momentum. We need to reverse this:
$$
\Theta ^{-1} \ket{\tilde{\psi}(t)} = \ket{\psi(-t)}
$$
