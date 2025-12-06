# Question 1
---
i.
In the distance past, $t\to-\infty$
$$
H(t) = \frac{\alpha}{\tau \sqrt{ \pi }} e^{ -(-\infty)^{2} } \sigma_{x} = 0
$$
So the initial Hamiltonian is 0, and $H(t)$ is the perturbation. I will use the coefficients $a$ and $b$ for the up and down states. Initially we have $a=1$ and $b=0$.

The first order correction for $a$ simplifies into,
$$
\frac{d}{dt} a_{1}= - \frac{i}{\hbar} H'_{ab} e^{ -i\omega_{0}t }b =0 \implies a_{1}=1
$$
For $b$.
$$
b_{1} = -\frac{i}{\hbar} \int_{-\infty}^{t} H'_{ba}(t')e^{ i\omega_{0}t' } \, dt' = -\frac{i}{\hbar} \frac{\alpha}{\tau \sqrt{ \pi }} \int_{-\infty}^{\infty} e^{ -(t/\tau)^{2} }e^{ -i\omega_{0}t } \, dt
$$
Solve this by completing the square to find,
$$
b_{1} = -\frac{i\alpha}{\hbar} e^{ -(\omega_{0}\tau)^{2}/4 }
$$
The probability of a swap in states is therefore the square of this
$$
\mathcal{P}_{a\to b} \approx |b_{1}|^{2} = \left( \frac{\alpha}{\hbar} \right)^{2} e^{ -(\omega_{0}\tau)^{2}/2 }
$$
---
ii.
As $\tau\to 0$ the probability approaches $(\alpha /\hbar)^{2}$

---
iii.
As $\tau\to \infty$ the probability approaches 0. So if the change is slow enough, the state is preserved
# Question 3
Compute the first order perturbation
$$
-\frac{i}{\hbar} \int_{0}^{0} H_{ba}' e^{ i\omega_{0}t } \, dt =0
$$
At the start of the system, there is no change. This is simply because the state has not had enough time to be affected by the perturbation.

At later times $t$
$$
-\frac{i}{\hbar} \int_{0}^{t} Be^{ i\omega_{0}t } \, dt = -\frac{i}{\hbar} B \left( -\frac{i}{\omega_{0}} \right) \left[ e^{ i\omega_{0}t } \right]^t_{0} = -\frac{B}{\hbar \omega_{0}} (e^{ i\omega_{0}t }-1)
$$
The probability fluctuates like,
$$
\left| 1-e^{ i\omega_{0}t } \right| ^{2} = 2-2\cos(kt)
$$
