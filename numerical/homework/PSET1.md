### Question 1
---
a.
The condition number is defined to be,
$$
\text{Condition Number} = \left| \frac{xf'(x)}{f(x)} \right|
$$
Derivative of $f(x)$,
$$
\frac{df}{dx} = \frac{d}{dx} (a+x)^{1/4} - \frac{d}{dx} a^{1/4} = \frac{1}{4(a+x)^{3/4}}
$$
Compute the condition number,
$$
\left| \frac{xf'(x)}{f(x)} \right| = \left| \frac{x}{4(a+x)^{3/4}} \frac{1}{(a+x)^{1/4}-a^{1/4}} \right| = \left| \frac{x}{4(a+x - a^{1/4}(a+x)^{3/4})} \right|
$$
Check when the denominator is zero, because ill-conditioning is most likely to appear there,
$$
a+x - a^{1/4} (a+x)^{3/4} =0 \implies a+x = a^{1/4} (a+x)^{3/4}
$$
$$
(a+x)^{4} = a(a+x)^{3} \implies a+x = a \implies x=0
$$
The denominator is 0 exclusively when $x=0$. Trivially, because the numerator and denominator are both of order 1, as $x\to \infty$ the condition number will remain finite. Therefore, I am most interested in its behaviour as $x\to 0$.

Check what happens to the condition number at $x=0$. I will use L'Hopital's rule here,
$$
\lim_{ x \to 0 } \left| \frac{x}{4(a+x - a^{1/4}(a+x)^{3/4})} \right| = \lim_{ x \to 0 } \frac{4(a+x)^{1/4}}{3a^{1/4}} = \frac{4}{3}
$$
So the condition number remains finite and near one. I conclude that $f(x)$ is well-conditioned for all values of $x>0$ and $a>0$.

---
b.
When $x$ is close to zero, $(a+x)^{1/4}\approx a^{1/4}$ and so $f(x)$ will take the difference between two similar numbers. If $a$ is large, for example, than truncation errors may destroy data from $x$.

A mathematically equivalent, but more stable expression is,
$$
(a+x)^{1/4} - a^{1/4} = \frac{\sqrt{ a+x }-\sqrt{ a }}{(a+x)^{1/4}+a^{1/4}} = \frac{x}{((a+x)^{1/4}+a^{1/4})(\sqrt{ a+x }+\sqrt{ a })}
$$
Where I have multiplied the numerator and denominator by the conjugate of the numerator two times. This should be more stable because, since $x>0$ and $a>0$, there is no risk of catastrophic cancellation. The relative error in the remaining operations, division and exponentiation, will be smaller.

---
c.
- I have to write a MATLAB script for this one
### Question 3
---
ai.
This one is true because strictly row diagonally dominant matrices are based off absolute values

---
aii.
Counterexample:
$$
A = \begin{bmatrix}
1 & 0 & 0 \\
1 & 2 & 0 \\
1 & 0 & 2
\end{bmatrix}
$$
$$
A^{T} = \begin{bmatrix}
1 & 1 & 1 \\
0 & 2 & 0 \\
0 & 0 & 2
\end{bmatrix}
$$

---
aiii.
Counterexample:
$$
A = \begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix} \qquad B = \begin{bmatrix}
-1 & 0 \\
0 & -1
\end{bmatrix}
$$
$$
A+B = \begin{bmatrix}
0 & 0 \\
0 & 0
\end{bmatrix}
$$

---
aiv.
Counterexample:
$$
A = \begin{bmatrix}
2 & 1 & 0 \\
0 & 2 & 1 \\
0 & 0 & 2
\end{bmatrix}
$$
$$
A^{2} = \begin{bmatrix}
4 & 4 & 1 \\
0 & 4 & 4 \\
0 & 0 & 4
\end{bmatrix}
$$
---
b.
