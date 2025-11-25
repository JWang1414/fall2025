# Question 2
---
a.
$$
f(x) = x \sin x -1 =0 \implies x = \frac{1}{\sin x}
$$
![[Pasted image 20251125103635.png]]
And so $f(x)$ has two roots in the interval $[0, \pi]$

---
b.
Evaluate $f(x)$ at these two points:
$$
\begin{align}
f\left( \frac{\pi}{4} \right) & = \left( \frac{\pi}{4} \right) \sin\left( \frac{\pi}{4} \right) -1 = \frac{\pi \sqrt{ 2 }}{8} -1 \approx -0.44 < 0 \\
f\left( \frac{\pi}{2} \right) & = \left( \frac{\pi}{2} \right) \sin\left( \frac{\pi}{2} \right) -1 = \frac{\pi}{2} -1 \approx 0.57 > 0
\end{align}
$$
$f(x)$ is a continuous function, and so, according to the intermediate value theorem, there must be a root within this interval.

Note that on the interval $[\pi /4, \pi /2]$, the functions $\cos x$, $\sin x$, and $x$ are all strictly positive, except for $\cos(\pi /2)=0$. I conclude that:
$$
f'(x) = \sin x + x \cos x >0 \qquad \text{when } \frac{\pi}{4} \leq x < \frac{\pi}{2}
$$
At the point $x=\pi /2$,
$$
f'\left( \frac{\pi}{2} \right) = \sin\left( \frac{\pi}{2} \right) + \frac{\pi}{2} \cos\left( \frac{\pi}{2} \right) = 1
$$
So $f'(x)$ is positive on the interval $[\pi /4, \pi /2]$. According to Theorem 3 from the class slides on existence and/or uniqueness of roots, the root in this interval previously found by the IVT must also be unique.

---
c.
Note that:
$$
x \sin x -1=0 \iff x = \frac{1}{\sin x}
$$
Therefore, since $f(x)=x\sin x-1$ has a unique root $x^*$ in the interval $[\pi /4, \pi /2]$, I conclude that $g(x)$ must also have a unique fixed point in the same interval.

---
d.
I will choose the closed interval $I=[1, \pi /2]$. The size of this interval is approximately:
$$
\left\lvert  \frac{\pi}{2} -1  \right\rvert \approx 0.57 > 0.52 \approx \frac{\pi}{6}
$$
So $I$ has length at least $\pi /6$. Furthermore, evaluating $f(1)$:
$$
f(1) = (1) \sin(1) - 1 \approx -0.16
$$
Therefore, according to the IVT, this interval contained the fixed point $x^*$.

Now, I will show $g(x)$ is a contraction mapping on this interval, and so converges. That is, I will show $g(x)$ maps onto itself via $\lvert g'(x) \rvert<1$
$$
\lvert g'(x) \rvert = \left| - \frac{\cos x}{\sin ^{2}x} \right| <1 \implies -1 < \frac{\cos x}{\sin ^{2}x} <1
$$
$$
-\sin ^{2}x < \cos x < \sin ^{2}x
$$
Within the interval $I$, $\cos x$ and $\sin ^{2}x$ are both positive. Furthermore, $\cos x$ decreases from roughly 0.54 to 0, and $\sin ^{2}x$ increases from 0.71 to 1. I conclude that, on $I$
$$
\lvert \cos x \rvert < \lvert \sin ^{2}x \rvert \implies -\sin ^{2}x < \cos x < \sin ^{2}x
$$
The same condition required for $\lvert g'(x) \rvert<1$. Hence, $g(x)$ converges assuming the initial point is within the interval $(1, \pi /2)$.

Now, I will expand this interval by testing points outside of it. If the initial point is $x_{0}=\pi /4$, then:
$$
g\left( \frac{\pi}{4} \right) = \frac{1}{\sin(\pi /4)} = \sqrt{ 2 } < \frac{\pi}{2}
$$
Subsequent iterations will continue to converge to the root. If the initial point is $x_{0}=\pi /2$, then:
$$
g\left( \frac{\pi}{2} \right) = \frac{1}{\sin(\pi /2)} = 1 > \frac{\pi}{4}
$$
Which will eventually converge to the root.

An expanded interval upon which $g(x)$ will converge to the root is:
$$
I = \left[ \frac{\pi}{4}, \frac{\pi}{2} \right]
$$
---
e.
The rate of convergence $r$ for some iterative method is defined to be:
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert ^{r}} = C
$$
Where $e_{k}=x_{k}-x^*$ is the error at step $k$, and $C>0$ is a constant. Notice that, for fixed point iteration the error $e_{k+1}$ is:
$$
e_{k+1} = x_{k+1} - x^* = g(x_{k}) - g(x^*)
$$
By the definition of $g(x)$. From the Mean Value Theorem:
$$
g(x_{k}) - g(x^*) = g'(\xi_{k}) (x_{k} - x^*)
$$
Where $\xi_{k}$ is some arbitrary point between $x_{k}$ and $x^*$. Substituting back in the definitions of $e_{k+1}$ and $e_{k}$, this becomes:
$$
e_{k+1} = g'(\xi_{k}) e_{k}
$$
Therefore,
$$
\lim_{ k \to \infty } \frac{\lvert e_{k+1} \rvert }{\lvert e_{k} \rvert ^{r}} = \lim_{ k \to \infty } \frac{\lvert g'(\xi_{k})e_{k} \rvert }{\lvert e_{k} \rvert ^{r}}
$$
Which converges to the constant $C=\lvert g'(x^*) \rvert$ if $r=1$. Importantly,
$$
\lvert g'(x^*) \rvert = \left\lvert  \frac{\cos x^*}{\sin ^{2} x^*}  \right\rvert
$$
$x^*$ is located within the interval $(\pi /4, \pi /2)$, where $g'(x)\neq 0$ so $C$ is positive, as required. I conclude that the order of convergence is 1 or linear.

---
g.
Newton's method is given by:
$$
x_{k+1} = x_{k} - \frac{f(x_{k})}{f'(x_{k})}
$$
By definition:
$$
f(x) = x \sin x -1
$$
With the derivative:
$$
f'(x) = \sin x + x \cos x
$$
Hence the Newton step is given by:
$$
x_{k+1} = x_{k} - \frac{x_{k}\sin(x_{k})-1}{\sin x_{k} + x_{k} \cos x_{k}}
$$
Choosing the starting guess $x_{0}=\pi /2$,
$$
x_{1} = \frac{\pi}{2} - \frac{(\pi /2)\sin(\pi /2) -1}{\sin(\pi /2) + (\pi /2) \cos(\pi /2)} = \frac{\pi}{2} - \left( \frac{\pi}{2} -1 \right) = -1
$$
