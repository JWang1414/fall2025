### The Implicit Method
Say we have the set of ODEs,
$$
\frac{ \partial \phi_{m} }{ \partial t } = \psi_{m} \qquad \frac{d\psi_{m}}{dt} = \frac{c^{2}}{a^{2}} \left( \phi_{m+1} - 2\phi_{m} + \phi_{m-1} \right)
$$
The implicit method states that we evaluate the RHS at $t+h$ instead of at $t$.

Using explicit methods, we would solve this system of equations
$$
\begin{align}
\phi^{n+1}_{m} & = \phi^{n}_{m} + h \psi^{n}_{m} \\
\psi^{n+1}_{m} & = \psi^{n}_{m} + h \frac{c^{2}}{a^{2}} \left( \phi^{n}_{m-1} + \phi^{n}_{m+1} - 2\phi^{n}_{m} \right) 
\end{align}
$$
Instead we will solve the version with $h\to-h$, and then shift forward in time $n\to n+1$
$$
\begin{align}
\phi^{n}_{m} & = \phi^{n+1}_{m} - h \psi^{n+1}_{m} \\
\psi^{n}_{m} & = \psi^{n+1}_{m} - h \frac{c^{2}}{a^{2}} \left( \phi^{n+1}_{m-1} + \phi^{n+1}_{m+1} - 2\phi^{n+1}_{m} \right) 
\end{align}
$$
Lets try testing the stability of this version with von Neumann substitution,
$$
(\phi^{n}_{m}, \psi^{n}_{m}) = \left( \hat{\phi}^{n}_{k}, \hat{\psi}^{n}_{k} \right) e^{ ikma }
$$
The implicit step, written out as a matrix equation is,
$$
\begin{bmatrix}
\phi^{n}_{m} \\
\psi^{n}_{m}
\end{bmatrix} = \begin{bmatrix}
1 & -h \\
\frac{2hc^{2}}{a^{2}} & 1
\end{bmatrix} \begin{bmatrix}
\phi^{n+1}_{m} \\
\psi^{n+1}_{m}
\end{bmatrix} - a\begin{bmatrix}
0 \\
\frac{hc^{2}}{a^{2}} \left( \phi^{n+1}_{m+1} + \phi^{n+1}_{m-1} \right) 
\end{bmatrix}
$$
Therefore we get,
$$
\begin{bmatrix}
1 & -h \\
hr^{2} & 1
\end{bmatrix} \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \vec{B} \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \begin{bmatrix}
\hat{\phi}^n_{k} \\
\hat{\psi}^n_{k}
\end{bmatrix}
$$
Where we have defined,
$$
\vec{B} = \begin{bmatrix}
1 & -h \\
hr^{2} & 1
\end{bmatrix} \qquad r=\frac{2c}{a} \sin\left( \frac{ka}{2} \right)
$$
This implies that,
$$
 \begin{bmatrix}
\hat{\phi}^{n+1}_{k} \\
\hat{\psi}^{n+1}_{k}
\end{bmatrix} = \vec{B}^{-1} \begin{bmatrix}
\hat{\phi}^n_{k} \\
\hat{\psi}^n_{k}
\end{bmatrix}
$$
The eigenvalues of $\vec{B}^{-1}$ are,
$$
\lvert \lambda_{\pm} \rvert = \frac{1}{\sqrt{ h^{2}r^{2}+1 }} \leq 1
$$
The magnitude of the growth factors are therefore always less than or equal to one, so the implicit method is unconditionally stable.

However, the solutions produced by it decay exponentially, and so for the wave equation the solutions we get will not be very accurate.
### Crank-Nicolson
$$
\begin{align}
\phi^{n+1}_{m} - \frac{h}{2} \psi^{n+1}_{m}  & = \phi^{n}_{m} + \frac{h}{2} \psi^{n}_{m} \\
\psi^{n+1}_{m} - \frac{h}{2} \frac{c^{2}}{a^{2}} \left( \phi^{n+1}_{m-1} + \phi^{n+1}_{m+1} - 2\phi^{n+1}_{m} \right) & = \psi^{n}_{m} + \frac{h}{2} \frac{c^{2}}{a^{2}} \left( \phi^{n}_{m-1} + \phi^{n}_{m+1} - 2\phi^{n}_{m} \right) 
\end{align}
$$
This is essentially the average of the forward Euler and the implicit method (backward Euler).

Duplicating the same von Neumann stability analysis, we find that the growth factors for this scheme are 1. Therefore, the solution neither grows nor decays
- Also 2nd order accurate in time, whereas the forward and backward Euler methods are 1st order accurate.
### Spectral Methods
- Use a set of orthogonal functions forming a basis of your function space. For example, the sines and cosines.
- Project your initial conditions and forcing onto that basis
- If the PDEs are linear, you can simply iterate in time
- If they are non-linear, you need to do FFTs and iFFTs to compute the non-linear terms

- Generally used to compute derivatives very accurately by leveraging the properties of Fourier transforms
$$
\frac{ \partial f }{ \partial x } \to ik \hat{f}
$$
