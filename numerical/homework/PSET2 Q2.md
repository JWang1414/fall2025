### Question 2
The equations of motion are,
$$
\begin{align}
t_{1}-m_{1}a & = c_{1}v-m_{1}g \\
-t_{i-1} + t_{i} - m_{i}a & = c_{i}v - m_{i}g \\
-t_{n-1} - m_{n}a & = c_{n}v - m_{n}g
\end{align}
$$
Note that downwards is the positive direction here. Denoting $a$ by $t_{n}$ transforms this system of equations into:
$$
\begin{align}
t_{1}-m_{1}t_{n} & = c_{1}v-m_{1}g \\
-t_{i-1} + t_{i} - m_{i}t_{n} & = c_{i}v - m_{i}g \\
-t_{n-1} - m_{n}t_{n} & = c_{n}v - m_{n}g
\end{align}
$$
The left-side reduces to a matrix equation like:
$$
\begin{bmatrix}
1  &  &  &  & -m_{1}\\
-1 & 1  &  &  & -m_{2}\\
 & -1 & 1  &  & -m_{3}\\
 &  & . & . & . \\
 &  &  & -1 & -m_{n}
\end{bmatrix} \begin{bmatrix}
t_{1} \\
t_{2} \\
t_{3} \\
\vdots \\
t_{n}
\end{bmatrix}
$$
I can factor out a negative sign here. Outside of making it faster to write it, it has the advantage that I can store all the masses as a positive numbers
$$
- \begin{bmatrix}
-1  &  &  &  & m_{1}\\
1 & -1  &  &  & m_{2}\\
 & 1 & -1  &  & m_{3}\\
 &  & . & . & . \\
 &  &  & 1 & m_{n}
\end{bmatrix} \begin{bmatrix}
t_{1} \\
t_{2} \\
t_{3} \\
\vdots \\
t_{n}
\end{bmatrix}
$$
And so the problem has reduced to a linear system of equations $\mathbf{A}\vec{t}=\vec{b}$. Where,
$$
\vec{b} = \begin{bmatrix}
c_{1}v - m_{1}g \\
c_{2}v-m_{2}g \\
\vdots \\
c_{n-1}v - m_{n-1}g \\
c_{n}v - m_{n}g
\end{bmatrix}
$$
---
a.
Solve the system for $n=8, 16, 32, 64$.

Output:
- $n$
- Maximum and minimum tension
- The acceleration $t_{n}$
- Condition number of $\mathbf{A}$

Plot the tension vector components from $t_{1}$ to $t_{n-1}$.
- "versus their normalized (by the respective n) index, in one plot (four lines plotted)."
- I have no idea what this means

Initial conditions:
$$
v=6 \qquad m_{i} = 50 + 50  \frac{i-1}{n-1} \qquad c_{i} = 50-20 \frac{i-1}{n-1}
$$
And,
$$
v=6 \qquad m_{i}\in[50, 100] \qquad c_{i}\in[30, 50]
$$
- Random intervals are sorted from largest to smallest
- Two plots placed side-by-side
- For the first one, plot in loglog scale the condition numbers versus $n$

Simplifying the initial conditions:
- For the first one I can use `m = linspace(50, 100, n)` and `c = 50 - 20*linspace(0, 1, n)`
- For the second one I can use `m = sort(50 + 50*rand(n, 1), "ascend")` and `c = sort(30 + 20*rand(n, 1), "descend")`
- Generate $\mathbf{A}$ using sparse matrix techniques
- You can get an estimate of $\text{cond}(\mathbf{A})$ using the `condest` function

"Based on the numerical results (including plots), comment on how the acceleration and the maximum and minimum tensions behave with $n$. How do the components of the tension vectors vary with their index? Where (for which i) does the max tension occur? Also comment on how the condition numbers behave with $n$."

"Also outside the loop for n, and for the case (i) and $n = 16$ only, plot the sparsity patterns of $A, P, L, U$, in a $2\times 2$ format, either using latex or using subplot in matlab. Use appropriate titles and caption. Comment about whether they agree with what you expected. (These comments will be elaborated further in (b).)"


---
b.
