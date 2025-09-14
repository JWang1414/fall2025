### Question 1
Define $\lambda_{A}$ and $\lambda_{B}$ as the eigenvalues for the operators $A$ and $B$. Applying this to some state $\ket{\psi}$ we get:
$$
(AB+BA) \ket{\psi} = 2 \lambda_{A} \lambda_{B} \ket{\psi}  = 0 \ket{\psi}
$$
Therefore we conclude,
$$
\lambda_{A} \lambda_{B} =0
$$
And so one of the eigenvalues must be 0.

Now try this with $\hat{\Pi}$ and $\hat{p}$. We know these two anti-commute.
$$
\hat{\Pi} \hat{p} + \hat{p} \hat{\Pi} =0
$$
From the above we have that $\lambda_{\Pi}$ or $\lambda_{p}$ is 0. However, since the eigenvalues of $\hat{\Pi}$ are $\pm 1$,
$$
\lambda_{p}=0
$$
### Question 2
---
i.
The Hamiltonian in this potential is,
$$
\hat{H} = \frac{\hat{p}^{2}}{2m} + \frac{1}{2} k\hat{x}^{2} - \lambda p_{x} S_{x}
$$
We want to show that this has parity symmetry only when $\lambda=0$.
- Remove the $\lambda$ term, and this becomes the regular harmonic oscillator, which is trivially parity symmetric
$$
\Pi^{\dagger} H\Pi = \frac{1}{2m} \Pi^{\dagger} \hat{p}^{2} \Pi + \frac{1}{2} k \Pi^{\dagger} \hat{x} \Pi - \lambda \Pi^{\dagger} p_{x} S_{x} \Pi
$$
We have:
$$
\Pi^{\dagger} \hat{p}^{2} \Pi = \Pi^{\dagger} \hat{p} \Pi \Pi^{\dagger} \hat{p} \Pi = (-\hat{p}) (-\hat{p}) = \hat{p}^{2}
$$
The same case for $\hat{x}$,
$$
\Pi^{\dagger} \hat{x}^{2} \Pi = \hat{x}^{2}
$$
How about the last term?
$$
\Pi^{\dagger} p_{x} S_{x} \Pi = \Pi^{\dagger} p_{x} \Pi \Pi^{\dagger} S_{x} \Pi = -p_{x} S_{x}
$$
Therefore, generally speaking,
$$
\Pi^{\dagger} H \Pi = \frac{\hat{p}^{2}}{2m} + \frac{1}{2} k\hat{x}^{2} + \lambda p_{x}S_{x}
$$
Which is only equal to $H$ again if $\lambda=0$

---
ii.
Find the creation and annihilation operators for the +1/2 and -1/2 states. Call $\ket{\psi_{+}}$ the eigenstate of $S_{x}$ for +1/2
- There is a factor of $\hbar$ we are missing here, the actual eigenvalue is $\hbar /2$ but we will ignore it for now.
$$
H \ket{\psi_{+}}  = \left( \frac{\hat{p}^{2}}{2m} + \frac{1}{2}k\hat{x}^{2} + \frac{\lambda}{2}\hat{p}_{x} \right) \ket{\psi_{+}}
$$
Add and subtract a new term to simplify the equation:
$$
\left[ \frac{1}{2m} \left( \hat{p} - \frac{m\lambda}{2} \right)^{2} - \frac{m\lambda^{2}}{8}+  \frac{1}{2} k\hat{x}^{2} \right] \ket{\psi_{+}}
$$
And here we can define the new quantity:
$$
\tilde{p}_{+}^{2} = \left( \hat{p} - \frac{m\lambda}{2} \right)^{2}
$$
Recall that the creation and annihilation operators look like:
$$
\hat{a}_{+} = \frac{1}{\sqrt{ 2 }} (\hat{x} + i\hat{p}_{+})
$$
Where we have found,
$$
\hat{p}_{+} = \tilde{p}_{+} \sqrt{ \frac{1}{m\hbar \omega} }
$$
So the Hamiltonian can be rewritten as:
$$
H \ket{\psi_{+}}  = \left[ \hbar \omega a^{\dagger}_{+} a_{+} + \left( \frac{1}{2} - \frac{m\lambda^{2}}{8} \right) \right] \ket{\psi}
$$
With the energies
$$
E_{n} = n\hbar \omega + \frac{1}{2} - \frac{m\lambda^{2}}{8}
$$
Now, find the ground state wave function:
$$
a_{+} \ket{\psi_{+, 0}} =0
$$
Which yields the equation,
$$
\left[ \sqrt{ \frac{m\omega}{\hbar} } x + i \sqrt{ \frac{1}{m\hbar \omega} }\left( -i\hbar \frac{ \partial  }{ \partial x } - \frac{m}{2}\lambda \right) \right] \psi_{+, 0} (x) =0
$$
This looks very similar to the typical ground state in the harmonic well. Guess that the solution looks like:
$$
\psi_{+, 0}(x) = \psi_{0}(x) f(x)
$$
$$
\left( i\hbar \frac{ \partial  }{ \partial x } - \frac{m}{2}\lambda \right)f(x) =0 \implies f(x) = e^{ i\lambda mx/2\hbar }
$$
And so,
$$
\psi_{+, 0} (x) = \psi_{0} (x) e^{ i(\lambda m/2\hbar)x }
$$
Unlike the clear parity symmetry in the harmonic oscillator, this is a symmetric state multiplied by a non-symmetric one, so, the symmetries might not be so clear to solve.
### Question 3
---
i.
$$
E \psi_{k}(x) = -\frac{\hbar^{2}}{2m} \frac{d^{2}}{dx^{2}} \psi_{k}(x) + V(x) \psi_{k}(x)
$$
Writing out this expression with the Bloch representation we have,
$$
-\frac{\hbar^{2}}{2m} \frac{d^{2}}{dx^{2}} \phi_{k}(x) - \frac{\hbar^{2}k}{m} \frac{d}{dx} \phi_{k}(x) + V(x) \phi_{k}(x) = \left( E-\frac{\hbar^{2}k^{2}}{2m} \right) \phi_{k}(x)
$$
After Fourier terms you end up with,
$$
\frac{\hbar^{2}}{2m} G^{2} \phi_{k}(G) + \frac{\hbar^{2}k}{m} G \phi_{k}(G) + \frac{iV_{0}}{2} \left[ \phi_{k}\left( G-\frac{2\pi}{a} \right) - \phi_{k}\left( G+\frac{2\pi}{a} \right) \right] = \left( E- \frac{\hbar^{2}k^{2}}{2m} \right) \phi_{k}(G)
$$
