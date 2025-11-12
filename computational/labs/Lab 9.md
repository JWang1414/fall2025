### Question 1
---
a.
Substitute:
$$
\phi(x, t) = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ \tilde{\phi}_{0, k} \cos(\omega_{k}t) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(\omega_{k}t) \right]
$$
Into,
$$
\frac{ \partial^{2}\phi }{ \partial t^{2} } = v^{2} \frac{ \partial^{2}\phi }{ \partial x^{2} }
$$
Compute the derivatives first:
$$
\frac{ \partial^{2}\phi }{ \partial t^{2} } = - \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) (\omega_{k}^{2}) \left[ \tilde{\phi}_{0, k} \cos(\omega_{k}t) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(\omega_{k}t) \right]
$$
$$
\frac{ \partial^{2}\phi }{ \partial x^{2} }  = - \sum_{k=1}^{\infty} \left( \frac{k\pi}{L} \right)^{2} \sin\left( \frac{k\pi x}{L} \right) \left[ \tilde{\phi}_{0, k} \cos(\omega_{k}t) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(\omega_{k}t) \right]
$$
Substituting into the wave equation,
$$
\omega_{k}^{2} = v^{2} \left( \frac{k\pi}{L} \right)^{2} \implies \omega_{k} = \frac{k\pi v}{L}
$$
For the second condition, substitute $x=0$ and $x=L$.
$$
\sin\left( \frac{k\pi(0)}{L} \right) = \sin(0) =0
$$
$$
\sin\left( \frac{k\pi L}{L} \right) = \sin (k\pi) = 0
$$
And so all elements of the series are 0 for all $t>0$.

For the third condition, substitute $t=0$.
$$
\phi(x, 0) = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ \tilde{\phi}_{0, k} \cos(0) + \frac{\tilde{\psi}_{0, k}}{\omega_{k}} \sin(0) \right] = \sum_{k=1}^{\infty} \tilde{\phi}_{0, k} \sin\left( \frac{k\pi x}{L} \right) = \phi_{0}(x)
$$
Compute derivative,
$$
\frac{ \partial \phi }{ \partial t } = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ - \omega_{k}\tilde{\phi}_{0, k} \sin(\omega_{k}t) + \tilde{\psi}_{0, k} \cos(\omega_{k}t) \right]
$$
Evaluate at $t=0$
$$
\frac{ \partial \phi }{ \partial t } \bigg|_{t=0} = \sum_{k=1}^{\infty} \sin\left( \frac{k\pi x}{L} \right) \left[ - \omega_{k}\tilde{\phi}_{0, k} \sin(0) + \tilde{\psi}_{0, k} \cos(0) \right] = \sum_{k=1}^{\infty} \tilde{\psi}_{0, k} \sin\left( \frac{k\pi x}{L} \right) = \psi_{0}(x)
$$
All conditions have been met, as needed.

---
b.
