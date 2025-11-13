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
### Question 3
---
a.
After constructing the Hilbert matrix, you can define the vector $b_{n}$ by creating the vector $x_{n}=\begin{bmatrix}1 & 2 & 3 & \dots\end{bmatrix}^{T}$ and then moving on from there.

Things to compute:
$$
\text{Absolute Residual} = |r_{n}| = \lvert b_{n} - H_{n} \hat{x}_{n} \rvert
$$
Where $H_{n}$ is the Hilbert matrix and $\hat{x}_{n}$ is the solved version of $x_{n}$.
$$
\text{Condition number} = \text{cond}(H_{n})
$$
$$
\text{Relative Error} = \frac{\lvert x_{n} - \hat{x}_{n} \rvert }{\lvert x_{n} \rvert }
$$
$$
\text{norm}(b_{n}) = \lvert b_{n} \rvert
$$
- Should be four quantities in total
- Done for Hilbert matrix of size 2-13
- Condition number in $c$, relative error in $e$, norm of residual in $r$, and norm of $b_{n}$ in $v$.

Matlab warns that the matrix "is close to singular or badly scaled". It claims that results may be inaccurate, and the RCOND of the matrices are approaching dangerously small values.

- All values are growing progressively worse as the size of the matrix increases
- The condition number of the matrix undergoes the most drastic change. It increases by 18 orders of magnitude
- The magnitude of the residual is machine error until the Hilbert matrix is of size 8
- The relative error and $\lvert b_{n} \rvert$ appear to increase somewhat linearly(?)

---
b.
- "Semilogy" scale means linear on the $x$-axis but log on the $y$-axis

Based on the log $y$-axis, it appears that the condition number increases exponentially. This is roughly what was stated, and what we expect for the condition number of the Hilbert matrices.
- It appears to jump again between 12-13.

The third data point, the one proportional to the condition number and residual norm, but inverse with respect to norm $b_{n}$ jumps from an incredibly small value when $n=7$. This implies that perhaps there is a jump in the condition number where it begins to rapidly out-scale $\lvert b_{n} \rvert$
- It is worth noting that this value is only finite and plotted when the residual norm is not zero

On a logarithmic scale, the residual number appears to increase very slowly. This is the case until the final data point $n=13$, where, similar to the condition number, the relative error makes a large jump.

- I honestly have no clue what to say in this part. I'm not sure what theory we're specifically supposed to be comparing against