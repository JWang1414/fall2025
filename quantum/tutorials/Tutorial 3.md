### Question 1
Show that $\mathcal{T}^{2}=-1$ by computing its effect on some test spin-1/2 spinor,
$$
\ket{\psi} = \begin{bmatrix}
a \\
b
\end{bmatrix}
$$
Then,
$$
\mathcal{T} \ket{\psi} = -i \begin{bmatrix}
0 & -i \\
i & 0
\end{bmatrix} \begin{bmatrix}
a^* \\
b^*
\end{bmatrix} = \begin{bmatrix}
-b^* \\
a^*
\end{bmatrix}
$$
Where we can see that $\mathcal{T}$, in this case, simply swaps the components, takes a complex conjugate of both, and then multiplies the first component by -1. Therefore,
$$
\mathcal{T}^{2} \ket{\psi} = \begin{bmatrix}
-a \\
-b
\end{bmatrix} = - \begin{bmatrix}
a \\
b
\end{bmatrix} = - \ket{\psi}
$$
And so $\mathcal{T}^{2}=-\hat{1}$ as needed.

For the second part, recall that for some eigenstate $\ket{\psi}$ we have $H\ket{\psi}=E\ket{\psi}$. So,
$$
HT \ket{\psi} = TH \ket{\psi} = E(T\ket{\psi} )
$$
Which means both $\ket{\psi}$ and $\mathcal{T}\ket{\psi}$ both have energies $E$. Now, to show degeneracy, we are interested in showing these two states are not the same.

Note that the time reversal operator is anti-unitary, this means that,
$$
\left< \mathcal{T}u | \mathcal{T}w \right> = \left< u|w \right>^* = \left< w|u \right>
$$
Now, consider the inner product,
$$
\left< TT\psi | T\psi \right> = \left< \psi | T\psi \right>
$$
$$
\left< TT\psi | T\psi \right> = - \left< \psi | T\psi \right>
$$
Where the anti-unitary property has been used for the first, and the $\mathcal{T}^{2}$ property has been used for the second. From which we obtain,
$$
\left< \psi|T\psi \right> =- \left< \psi|T\psi \right>  \implies \left< \psi | T\psi \right> =0
$$
And so these two states must be orthogonal. They cannot be identical. Which means there is a degeneracy for some energy $E$.
### Question 3
Recall that we have,
$$
\frac{d}{dt} \hat{L}_{j} = \frac{i}{\hbar} [\hat{H}, \hat{L}_{j}]
$$
Since we are only interested in the expectation value, we can use the generalised Ehrenfest theorem
$$
\frac{d}{dt} \left< \hat{L}_{j} \right> = \frac{i}{h} \left< [\hat{H}, \hat{L}_{j}] \right> + \left< \frac{ \partial  }{ \partial t } \hat{L}_{j} \right>
$$
$\hat{L}_{j}$ has no explicit time dependence and so,
$$
\left< \frac{ \partial  }{ \partial t } \hat{L}_{j} \right> =0
$$
Now, compute the commutator,
$$
\left[ \frac{p^{2}}{2m} + V(\vec{r}), \hat{L}_{j} \right]
$$
From question 2 (which we didn't do) we obtain the result,
$$
[p^{2}, \hat{L}_{j}] =0
$$
Therefore this commutator reduces into,
$$
[V(\vec{r}), \hat{L}_{j}] = \epsilon_{jnp} [V(\vec{r}), \hat{r}_{n}\hat{p}_{p}]
$$
Apply commutator relations to obtain,
$$
\epsilon_{jnp} \hat{r}_{n} [V(\vec{r}), \hat{p}_{p}] + \epsilon_{jnp} [V(\vec{r}), \hat{r}_{n}] \hat{p}_{p}
$$
$V(\vec{r})$ and $\hat{r}_{n}$ commute and so one commutator reduces to zero.

---
Aside:
$$
[\hat{f}(\vec{r}), \hat{p}_{p}]\hat{g}(\vec{r}) = \hat{f}(\vec{r}) \hat{p}_{p} \hat{g}(\vec{r}) - \hat{p}_{p} f(\vec{r}) g(\vec{r})
$$
$$
-i\hbar \hat{f}(\vec{r}) \frac{ \partial  }{ \partial r_{p} } \hat{g}(\vec{r}) + i\hbar \frac{ \partial  }{ \partial r_{p} } \left( f(\vec{r})g(\vec{r}) \right)
$$
You can use the product rule on this second term. The first term will cancel and you will find,
$$
\left[ i\hbar \frac{ \partial  }{ \partial r_{p} } f(\vec{r}) \right]g(\vec{r})
$$
So this commutator is just equal to this.

---

Applying the aside to our problem, we obtain,
$$
[\hat{H}, \hat{L}_{j}] =i\hbar \epsilon_{jnp} \hat{r}_{n} [V(\vec{r}), \hat{p}_{p}] = i\hbar \epsilon_{jnp} \hat{r}_{n} \frac{ \partial  }{ \partial r_{p} } V(\vec{r}) = i\hbar [\hat{r} \times \nabla V(\vec{r})]_{j}
$$
So the full commutator is,
$$
[H, \vec{L}] = \frac{i}{\hbar} i\hbar \hat{r} \times \nabla V(\vec{r}) = \hat{r} \times(-\nabla V(\vec{r})) = \left< \vec{N} \right>
$$
As needed.

Now, suppose that $V(\vec{r})$ is spherically symmetric, and so depends only on $r$, $V(r)$.
$$
\nabla V(r) = \frac{ \partial  }{ \partial r } V(r) \hat{r}
$$
So, trivially,
$$
\left< \vec{N} \right> = \left< \vec{r} \times \left[ \frac{ \partial  }{ \partial r } V(r) \right] \hat{r} \right> =0
$$
Because, $\hat{r}\times \hat{r}=0$.
### Question 4
---
i.
Recall the ladder operators have eigenvalues such that,
$$
S_{\pm} \ket{l, m} = \sqrt{ l(l+1)+m(m+1) } \ket{l, m\pm 1}
$$
We have,
$$
\begin{align}
S_{-}  \ket{1, 1}  & = \sqrt{ 2 }\ket{1, 0} \\
S_{-}  \ket{1, 0}  & = \sqrt{ 2 }\ket{1, -1} \\
S_{-}  \ket{1, -1}  & = 0
\end{align}
$$
From which we can obtain the fact that,
$$
S_{-} = \sqrt{ 2 } \begin{bmatrix}
0 & 1 & 0 \\
0 & 0 & 1 \\
0 & 0 & 0
\end{bmatrix} \qquad S_{+} = \sqrt{ 2 } \begin{bmatrix}
0 & 0 & 0 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{bmatrix}
$$
Manually compute $S_{x}$ and $S_{y}$ with the identities,
$$
S_{x} = \frac{S_{+}+S_{-}}{2} \qquad S_{y} = \frac{S_{+}-S_{-}}{2i}
$$
And, because $S_{z}$ has the two eigenstates such that,
$$
S_{z} \ket{l, m} = m \ket{l, m}
$$
Which means,
$$
S_{z} = \begin{bmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -1
\end{bmatrix}
$$
