### Degenerate Perturbation Theory
Useful when there are duplicate energy states, but can also be used if the energies are very close to each other and so the perturbations begin to blow up anyways.

Lets first begin with the example,
$$
H = \frac{p^{2}_{x}}{2m} + \frac{p^{2}_{y}}{2m} + \frac{1}{2} k(x^{2}+y^{2}) + gxy
$$
Define these two operators
$$
x_{\pm} = \frac{1}{\sqrt{ 2 }} (x\pm y) \qquad p_{\pm} = \frac{1}{\sqrt{ 2 }} (p_{x}\pm p_{y})
$$
With these new variables the Hamiltonian becomes,
$$
H = \frac{p^{2}_{+}}{2m} + \frac{p^{2}_{-}}{2m}+ \frac{1}{2} (k+g)x_{+}^{2} + \frac{1}{2} (k-g)x^{2}_{-}
$$
Which we can now split into two harmonic oscillators. And so we obtain the exact energies,
$$
E_{n_{+}, n_{-}} = \hbar \omega \left( n_{+} + \frac{1}{2} \right) + \hbar \omega \left( n_{-} + \frac{1}{2} \right) \qquad \omega=\sqrt{ \frac{k}{m} }
$$
Notice that the energies for the states are degenerate past the ground state,
$$
\ket{n_{x}, n_{y}}  ; E_{n_{x}, n_{y}} = \hbar \omega (n_{x} + n_{y} + 1)
$$
The ground state is, of course, $\ket{00}$, but above that we have matching energies for $\ket{10}$ and $\ket{01}$ and so on.

The expectation values for the first excited state are,
$$
\bra{01} gxy \ket{01} = \bra{10} gxy \ket{10}  =0
$$
$$
\bra{01} gxy \ket{10} = \frac{g\hbar}{2m\omega} \bra{01} (a_{x}+a_{x}^{\dagger}) (a_{y}+a^{\dagger}_{y}) \ket{10} = \frac{g\hbar}{2m\omega}
$$
Now, lets imagine this problem as a large matrix problem, with the energies along the diagonal. For the degenerate states, there will be duplicates along the diagonal. So, zooming into the $2\times 2$ matrix for the 1st excited state, we might have,
$$
\begin{bmatrix}
2\hbar \omega & \frac{g\hbar}{2m\omega} \\
\frac{g\hbar}{2m\omega} & 2\hbar \omega
\end{bmatrix}
$$
Where the off diagonal portions have been added from the computation prior. The energies are simply what we expect from $E_{n_{x}, n_{y}}$.

We have,
$$
E_{\pm} = 2\hbar \omega \pm \frac{g\hbar}{2m\omega} \qquad \psi_{\pm} = \frac{1}{\sqrt{ 2 }} (\ket{10}  + \ket{01} )
$$
As a function of $g$ we can see that the energies for the two degenerate states will repel from each other
- I don't really get this, what are the plus and minus states here and what do they represent?

Notice that, if we decrease $g\to 0$ , then the energies will become completely degenerate again. However, the eigenfunctions we have found are unaffected.

This brings us to the idea of "good eigenstates." Our goal is effectively to solve for linear combinations of the degenerate states such that the numerator in perturbation theory will also vanish
$$
\frac{\left| \bra{m} V \ket{n}  \right| ^{2}}{E_{m}-E_{n}}
$$
### Stark Effect
For this example, we will place a hydrogen atom inside some electric field. There is no degeneracy in the 1s shell, but however, the degeneracy in the 2s shell may cause some issue as we try to apply perturbation theory.

We will have the 4 degenerate states associated with $2s$, $2p_{x, y, z}$. The potential in this system from the field can be modelled $V=eE_{z}z$. Notice that the expectation values are,
$$
\bra{2s} z \ket{2p_{x, y}} =0 \qquad \bra{2s} z \ket{2p_{z}} \neq 0
$$
And so the associated matrix is,
$$
\begin{bmatrix}
E_{2} &  &  & \Delta \\
 & E_{2} \\
 &  & E_{2} \\
\Delta &  &  & E_{2}
\end{bmatrix}
$$
Where all the empty values are 0. It turns out that $\Delta=-3ea_{0} E_{z}$, but that isn't really important here. The rows and columns are $2s, 2p_{x}, 2p_{y}, 2p_{z}$.

The two energy states that are untouched by the "mixture" are completely untouched. However,  the "good eigenstates" for the $2s$ and $2p_{z}$ will be some mixture of both.