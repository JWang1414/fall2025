### Question 1
---
a.
The condition number is defined to be,
$$
\text{cond}(\mathbf{A}) = \lvert \mathbf{A} \rvert \lvert \mathbf{A}^{-1} \rvert
$$
The infinity norm of $\mathbf{A}$ and $\mathbf{A}^{-1}$ are,
$$
\lvert \mathbf{A} \rvert _{\infty} = 105 \qquad \lvert \mathbf{A}^{-1} \rvert _{\infty} = 22
$$
Therefore the condition number is,
$$
\text{cond}(\mathbf{A}) = (105)(22) = 2310
$$
---
b.
Notice that,
$$
\mathbf{A}^{-1} (b - \mathbf{A}\hat{x})= \mathbf{A}^{-1} b - \mathbf{A}^{-1} \mathbf{A} \hat{x} = x-\hat{x}
$$
By the properties of matrix norms,
$$
\lvert x-\hat{x} \rvert _{\infty} = \lvert \mathbf{A}^{-1}(b-\mathbf{A}\hat{x}) \rvert _{\infty} \leq \lvert \mathbf{A}^{-1} \rvert _{\infty} \lvert b-\mathbf{A} \hat{x} \rvert _{\infty} \leq 22(0.01) = 0.22
$$
I conclude that,
$$
\lvert x-\hat{x} \rvert _{\infty} \leq 0.22
$$
---
c.
Notice that the $\lvert b \rvert$ can be bounded in terms of $\lvert x \rvert$ by:
$$
\lvert b \rvert _{\infty} = \lvert \mathbf{A}x \rvert _{\infty} \leq \lvert \mathbf{A} \rvert _{\infty} \lvert x \rvert _{\infty}
$$
To place an upper-bound on the original expression, I will first place a lower-bound on the very similar expression:
$$
\frac{\lvert x-\hat{x} \rvert _{\infty} }{\lvert b \rvert _{\infty}} = \frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert \mathbf{A}x \rvert _{\infty}} \geq \frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert \mathbf{A} \rvert _{\infty} \lvert x \rvert _{\infty} } = \frac{1}{\lvert \mathbf{A} \rvert _{\infty}} \frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert x \rvert _{\infty}}
$$
Therefore, an upper-bound on the original expression can be written:
$$
\begin{align}
\frac{1}{\lvert \mathbf{A} \rvert _{\infty}} \frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert x \rvert _{\infty}} & \leq \frac{\lvert x-\hat{x} \rvert _{\infty} }{\lvert b \rvert _{\infty}} \\
\frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert x \rvert _{\infty}} & \leq \frac{\lvert \mathbf{A} \rvert _{\infty}\lvert x-\hat{x} \rvert _{\infty} }{\lvert b \rvert _{\infty}}
\end{align}
$$
Substituting in the exact values and upper-bound determined in previous parts:
$$
\frac{\lvert \hat{x}-x \rvert _{\infty}}{\lvert x \rvert _{\infty}} \leq \frac{(105)(0.22)}{\lvert b \rvert _{\infty}} = 23.1 \lvert b \rvert ^{-1}_{\infty}
$$
### Question 2
