### Question 2
Consider in infinitely small momentum boost $\xi\to 0$. Then, for some function $\psi(p)$ we have,
$$
\bra{p} M_{\xi} \ket{\psi} = \psi(p-\xi) = \psi(p) - \xi \frac{ \partial \psi }{ \partial p }
$$
Multiply and divide by $i\hbar$ to obtain the position operator,
$$
\psi(p) - \frac{\xi}{i\hbar} \left( i\hbar \frac{ \partial \psi }{ \partial p }  \right) = \psi(p) + \frac{i\xi}{\hbar} \hat{x} \psi(p)
$$
Factor out the function to obtain,
$$
\bra{p} \left( \hat{1} + \frac{i\xi}{\hbar}\hat{x} \right) \ket{\psi} \implies M_{\xi} = \hat{1} + \frac{i\xi}{\hbar}\hat{x}
$$
Now, define $\xi = p_{0} /N$ where $N\to \infty$. Therefore, we now have some finite momentum boost,
$$
M_{p_{0}} = \left( \hat{1} + \frac{i}{\hbar} \frac{p_{0}}{N} \hat{x} \right)^{N} = e^{ i\hat{x}p_{0} / \hbar } \ket{p} = \ket{p+p_{0}}
$$
Where the position operator is the generator of momentum boosts
### Question 1
For such a parity operator, we have,
$$
(r, \theta, \phi) \to (r', \theta', \phi')
$$
Such that,
$$
\begin{cases}
r'=r \\
\theta' = \pi-\theta \\
\phi' = \phi\pm \pi
\end{cases}
$$
Notice that radial portion is unchanged. The angular portion of the hydrogen atom eigenstates are summarized by the spherical harmonics, $Y^{m}_{l}(\theta, \phi)$. Under the parity transformation,
$$
\hat{\Pi} Y^{m}_{l}(\theta, \phi) = \hat{\Pi} \left[ N e^{ im\phi } P^{m}_{l}(\cos\theta) \right] = N e^{ im\phi } e^{ im\pi } P^{m}_{l}(\cos(\pi-\theta))
$$
Where $N$ is a normalization term. Since $m$ is an integer between $-l$ and $l$,
$$
e^{ im\pi } = (-1)^{m}
$$
Using trig identities,
$$
\cos(\pi-\theta) = -\cos\theta
$$
By the parity of the associated Legendre polynomials,
$$
P^{m}_{l}(-x) = (-1)^{l-m} P^{m}_{l}(x)
$$
I conclude,
$$
P^{m}_{l}(\cos(\pi-\theta)) = P^{m}_{l} (-\cos\theta) = (-1)^{l-m} P^{m}_{l} (\cos\theta)
$$
And therefore the full parity of the spherical harmonics is,
$$
\begin{align}
\hat{\Pi} Y^{m}_{l} (\theta, \phi) & = N e^{ im\phi } e^{ im\pi } P^{m}_{l}(\cos(\pi-\theta)) \\
 & = (-1)^{m} (-1)^{l-m} N e^{ im\phi } P^{m}_{l}(\cos\theta) \\
 & = (-1)^{l} Y^{m}_{l} (\theta \phi)
\end{align}
$$
As needed.
### Question 3
---
a.
If the parity operator is applied to some operation by the electric dipole moment operator, then,
$$
\bra{n'l'm'} \hat{P}_{e} \ket{nlm} = - \bra{n'l'm'} \hat{\Pi}^{\dagger} \hat{P}_{E} \hat{\Pi} \ket{nlm}
$$
Where the negative sign is there to counteract the flip from the parity. However, since $\ket{nlm}$ are eigenstates of the hydrogen atom, this can be evaluated to,
$$
= - \bra{n'l'm'} (-1)^{l'} \hat{P}_{e} (-1)^{l} \ket{nlm} = (-1)^{l+l'+1} \bra{n'l'm'}  \hat{P}_{e} \ket{nlm}
$$
Which implies that,
$$
\left< \hat{P}_{e} \right> = (-1)^{l+l'+1} \left< \hat{P}_{e} \right>
$$
And so if $l+l'$ is even, this must evaluate to zero. In this case for the 1s ground state,
$$
\left< \hat{P}_{e} \right> = \bra{100} \hat{P}_{e} \ket{100}
$$
Here, $l'=0$ and $l=0$. I conclude that,
$$
\left< \hat{P}_{e} \right> =0
$$
For the 1s ground state. As needed.
- I suspect that this approach works because $\hat{P}_{e}=e\vec{r}$. The parity operator is defined in terms of the spacial vector $\vec{r}$ and so $\hat{P}_{e}$ must abide by parity

---
b.
The idea for this question is to build a combination of two states such that the interfering terms between the two will be non-zero.

Notice that no single eigenstate will work, because in these cases $l'=l$ and so $l'+l$ is always an even number. Choose the state,
$$
\ket{\psi} = \frac{1}{\sqrt{ 2 }} \left( \ket{200} + \ket{210}  \right)
$$
I have chosen these states because it is required to have $N=2$. The expectation value is,
$$
\left< \hat{P}_{e} \right> = \bra{\psi} \hat{P}_{e} \ket{\psi} \propto \bra{200} \hat{P}_{e} \ket{200} + \bra{210} \hat{P}_{E} \ket{210} + \bra{210} \hat{P}_{e} \ket{200} + \bra{200} \hat{P}_{e} \ket{210}
$$
I have omitted the factor of 1/2 for readability. The first two terms here vanish,
$$
\bra{200} \hat{P}_{e} \ket{200} =0 \qquad \bra{210} \hat{P}_{e} \ket{210} =0
$$
And therefore we are left with,
$$
\left< \hat{P}_{e} \right> = \frac{1}{2} \left( \bra{210} \hat{P}_{e} \ket{200} + \bra{200} \hat{P}_{e} \ket{210}  \right)
$$
By the properties of the complex conjugate, this can be simplified to,
$$
\frac{1}{2} \left( \bra{210} \hat{P}_{e} \ket{200} + \bra{210} \hat{P}_{e} \ket{200}^{\dagger} \right) = \mathrm{Re}\{ \bra{210} \hat{P}_{e}\ket{200}  \}
$$
The computation from here is very chaotic. But it is non-zero. The correct answer is,
$$
\left< \hat{P}_{e} \right> = \bra{\psi} \hat{P}_{e} \ket{\psi} = 3ea_{0}\hat{k}
$$
Where $a_{0}$ is the Bohr radius
### Question 4
Note that, from the textbook,
$$
R_{\hat{n}}(\delta) = \hat{1} - i \frac{\delta}{\hbar} \hat{n}\cdot \hat{L}
$$
Where $\hat{L}$ is the angular momentum operator. Which can be expanded into,
$$
\hat{1} - i \frac{\delta}{\hbar} (n_{x}L_{x} + n_{y}L_{y} + n_{z}L_{z}) = \hat{1} - i \frac{\delta}{\hbar} \left( \frac{n_{x}i-n_{y}}{2}L_{+} + \frac{n_{x}+in_{y}}{2}L_{-} + n_{z}L_{z} \right)
$$
The definition of $L_{+}$ and $L_{-}$ have been used to express the $L_{x}$ and $L_{y}$ in the language of raising and lowering operators. Now, the effect these operators have on some state $\psi_{nlm}$ is known.
$$
\begin{cases}
L_{z} \psi_{nlm} = m\hbar \psi_{nlm} \\
L_{+}\psi_{nlm} = \sqrt{ l(l+1) - m(l+1) } \psi_{nl(m+1)} \\
L_{-}\psi_{nlm} = \sqrt{ l(l+1) - m(m-1) } \psi_{nl(m-1)}
\end{cases}
$$
And so, acting on some state $\psi_{nlm}$ the result is,
$$
\begin{align}
\hat{R}_{\hat{n}} (\delta) \psi_{nlm} & = \psi_{nlm} - i \frac{\delta}{\hbar} (\hat{n}\cdot \hat{L})\psi_{nlm} \\
 & = (1-i\delta m) \psi_{nlm} \\
 & - i\delta \frac{n_{x}-in_{y}}{2} \sqrt{ l(l+1) - m(m+1) } \psi_{nl(m+1)} \\
 & - i\delta \frac{n_{x}+in_{y}}{2} \sqrt{ l(l+1) - m(m-1) } \psi_{nl(m-1)}
\end{align}
$$
Which we would like to be equivalent to some operator,
$$
\sum_{m'} D_{m',m} \psi_{nlm'}
$$
In bra-ket notation,
$$
\bra{nlm'} \hat{R}_{\hat{n}}(\delta) \ket{nlm} = \bra{nlm'} \sum_{m'} D_{m',m} \ket{nlm'} = \sum_{m'} D_{m',m}
$$
And so the elements of $D_{m',m}$ are:
$$
\begin{align}
D_{m',m} = & = (1-i\delta m) \delta_{m',m} \\
 & - i\delta \frac{n_{x}-in_{y}}{2} \sqrt{ l(l+1) - m(m+1) } \delta_{m',m} \\
 & - i\delta \frac{n_{x}+in_{y}}{2} \sqrt{ l(l+1) - m(m-1) } \delta_{m',m}
\end{align}
$$
Where I have distributed the $\bra{nlm'}$ term into the previous expression for $\hat{R}_{\hat{n}}(\delta)\ket{nlm}$
### Question 5
