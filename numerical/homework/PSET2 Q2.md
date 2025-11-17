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
![[Pasted image 20251113212117.png]]
- This makes it obvious that $L$ is a banded matrix and $U$ looks very similar to $A$

Recall that $A$ is in the form:
$$
\begin{bmatrix}
1  &  &  &  & -m_{1}\\
-1 & 1  &  &  & -m_{2}\\
 & -1 & 1  &  & -m_{3}\\
 &  & . & . & . \\
 &  &  & -1 & -m_{n}
\end{bmatrix}
$$
First, note that there will be no pivoting. Along the diagonal, all values have magnitude 1, save for the final element $-m_{n}$, which is inconsequential. Along the subdiagonal region, all values have magnitude 1 or 0, neither of which exceed 1. As a result, the pivot matrix will simply be the identity:
$$
P = \hat{1}
$$
This is corroborated by the sparsity shown in Matlab. To determine $L$ and $U$, I will do the first few steps in Gaussian elimination.
$$
\mathbf{M}_{1} \mathbf{A} = \begin{bmatrix}
1 \\
1 & 1 \\
 &  & 1 \\
 &  & & \ddots & \\
 &  &  &  & 1
\end{bmatrix} \begin{bmatrix}
1  &  &  &  & -m_{1}\\
0 & 1  &  &  & -m_{2}-m_{1}\\
 & -1 & 1  &  & -m_{3}\\
 &  & . & . & . \\
 &  &  & -1 & -m_{n}
\end{bmatrix}
$$
$$
\mathbf{M}_{2} \mathbf{M}_{2} \mathbf{A} = \begin{bmatrix}
1 \\
 & 1 \\
 & 1 & 1 \\
 &  & & \ddots & \\
 &  &  &  & 1
\end{bmatrix} \begin{bmatrix}
1  &  &  &  & -m_{1}\\
0 & 1  &  &  & -m_{2}-m_{1}\\
 & 0 & 1  &  & -m_{3}-m_{2}-m_{1}\\
 &  & . & . & . \\
 &  &  & -1 & -m_{n}
\end{bmatrix}
$$
And this trend continues until the matrix is entirely reduced. Based on the elementary Gaussian elimination matrices $\mathbf{M}$, the inverse $\mathbf{L}$ will look like:
$$
\mathbf{L} = \begin{bmatrix}
1 \\
-1 & 1 \\
 & -1 & 1 \\
 &  & \ddots & \ddots \\
 &  &  & -1 & 1
\end{bmatrix}
$$
And so $\mathbf{L}$ is a banded matrix with 1 along the main diagonal and -1 along the lower diagonal.

Based on the example from Gaussian elimination, the elements on the rightmost column of $\mathbf{U}$ are decided according to:
$$
-\sum_{k=1}^{i} m_{k}
$$
Where $i$ is the row number in the matrix, and $m_{i}$ are the elements in $\mathbf{A}$. So $\mathbf{U}$ will look like:
$$
\mathbf{U} = \begin{bmatrix}
1  &  &  &  &  & -\sum_{k=1}^{1} m_{k}\\
 & 1  &  &  &  & -\sum_{k=1}^{2} m_{k}\\
 &  & 1  &  &  & -\sum_{k=1}^{3} m_{k}\\
 &  &  & \ddots  &  & \vdots\\
 &  &  &  & 1 & -\sum_{k=1}^{n} m_{k}
\end{bmatrix}
$$
The form of the $\mathbf{L}$ and $\mathbf{U}$ matrices indicated here are both corroborated by the sparsity shown in Matlab.

---
c.
To solve for the tension and acceleration, I will use the previously found $LU$-factorization to determine the vector $\vec{t}$ in the system $\mathbf{A}\vec{t}=\vec{b}$. Define the intermediate vector $\vec{y}$. To find $\vec{t}$ I must solve the system $\mathbf{L}\vec{y}=\vec{b}$ and then $\mathbf{U}\vec{t}=\vec{y}$.
$$
\begin{bmatrix}
1 \\
-1 & 1 \\
 & -1 & 1 \\
 &  & \ddots & \ddots \\
 &  &  & -1 & 1
\end{bmatrix} \begin{bmatrix}
y_{1} \\
y_{2} \\
y_{3} \\
\vdots \\
y_{n}
\end{bmatrix} = \begin{bmatrix}
y_{1} \\
y_{2}-y_{1} \\
y_{3}-y_{2} \\
\vdots \\
y_{n} - y_{n-1}
\end{bmatrix} = \begin{bmatrix}
c_{1}v - m_{1}g \\
c_{2}v-m_{2}g \\
c_{3}v-m_{3}g \\
\vdots \\
c_{n}v - m_{n}g
\end{bmatrix}
$$
The solution to the first few elements is,
$$
y_{1} = c_{1}v - m_{1}g
$$
$$
y_{2}-y_{1} = y_{2} - (c_{1}v - m_{1}g) = c_{2}v - m_{2}g \implies y_{2} = c_{2}v - m_{2}g + c_{1}v - m_{1}g
$$
So the elements of $\vec{y}$ are clearly:
$$
y_{i} = \sum_{k=1}^{i} c_{k}v - m_{k}g
$$
Now to solve the system $\mathbf{U}\vec{t} = \vec{y}$. 
$$
\begin{bmatrix}
1  &  &  &  &  & -\sum_{k=1}^{1} m_{k}\\
 & 1  &  &  &  & -\sum_{k=1}^{2} m_{k}\\
 &  & 1  &  &  & -\sum_{k=1}^{3} m_{k}\\
 &  &  & \ddots  &  & \vdots\\
 &  &  &  & 1 & -\sum_{k=1}^{n} m_{k}
\end{bmatrix} \begin{bmatrix}
t_{1} \\
t_{2} \\
t_{3} \\
\vdots \\
t_{n}
\end{bmatrix} = \begin{bmatrix}
t_{1} - t_{n} \sum_{k=1}^{1} m_{k} \\
t_{2} - t_{n} \sum_{k=1}^{2} m_{k} \\
t_{3} - t_{n} \sum_{k=1}^{3} m_{k} \\
\vdots \\
t_{n} - t_{n} \sum_{k=1}^{n} m_{k}
\end{bmatrix} = \begin{bmatrix}
\sum_{k=1}^{1} c_{k}v - m_{k}g \\
\sum_{k=1}^{2} c_{k}v - m_{k}g \\
\sum_{k=1}^{3} c_{k}v - m_{k}g \\
\vdots \\
\sum_{k=1}^{n} c_{k}v - m_{k}g
\end{bmatrix}
$$
Solve the first few elements of this system for $t_{i}$
$$
t_{1} - t_{n} m_{1} = c_{1}v - m_{1}g \implies t_{1} = c_{1}v-m_{1}g + t_{n}m_{1}
$$
$$
\begin{align}
t_{2} - t_{n}(m_{1}+m_{2}) & = c_{1}v - m_{1}g + c_{2}v - m_{2}g \\
t_{2} & = c_{1}v - m_{1}g + c_{2}v - m_{2}g + t_{n}(m_{1}+m_{2})
\end{align}
$$
So the tension is determined by:
$$
t_{i} = \sum_{k=1}^{i} (c_{k}v - m_{k}g) + t_{n} \sum_{k=1}^{i} m_{k} = v \sum_{k=1}^{i} c_{k} + (t_{n}-g) \sum_{k=1}^{i} m_{k}
$$
Solve for the acceleration:
$$
t_{n} - t_{n} \sum_{k=1}^{n} m_{k} = t_{n} \left( 1 - \sum_{k=1}^{n} m_{k} \right) = \sum_{k=1}^{n} c_{k}v - m_{k}g
$$
And so the acceleration is expressed by:
$$
t_{n} = \left( \sum_{k=1}^{n} c_{k}v - m_{k}g \right)\left( 1 - \sum_{k=1}^{n} m_{k} \right)^{-1}
$$
Where $n$ is the size of the matrix. Physically, this is the number of parachutists.

Intuitively, the reason why the midpoint has the largest tension is because the masses progressively increase. This means that although the first few terms of $-m_{i}g$ might be inconsequential, as they grow larger, it begins to offset the tension. This means that the tension will initially increase before decreasing.
- Also the acceleration is really small in comparison because of the large denominator

Substitute in the values of $m_{i}$ and $c_{i}$ given in the question:
$$
m_{i} = 50 + 50 \frac{i-1}{n-1} \qquad c_{i} = 50-20 \frac{i-1}{n-1}
$$
$$
\begin{align}
t_{i} & = \sum_{k=1}^{i} (c_{k}v - m_{k}g) + t_{n} \sum_{k=1}^{i} m_{k} \\
 & = v\sum_{k=1}^{i} c_{k} - g \sum_{k=1}^{i} m_{k} + t_{n} \sum_{k=1}^{i} m_{k} \\
 & = v \sum_{k=1}^{i} c_{k} + (t_{n}-g) \sum_{k=1}^{i} m_{k}
\end{align}
$$
Evaluate $t_{n}$
$$
t_{n} = \left( \sum_{k=1}^{n} c_{k}v - m_{k}g \right)\left( 1 - \sum_{k=1}^{n} m_{k} \right)^{-1}
$$
$$
m_{i} = 50 + 50 \frac{i-1}{n-1} \qquad c_{i} = 50-20 \frac{i-1}{n-1}
$$
$$
\sum_{k=1}^{n} c_{k}v - m_{k}g = v \sum_{k=1}^{n} c_{k} - g \sum_{k=1}^{n} m_{k} = v \sum_{k=1}^{n} \left( 50-20 \frac{i-1}{n-1} \right)  - g \sum_{k=1}^{n} \left( 50 + 50 \frac{i-1}{n-1} \right)
$$
Which is,
$$
40nv - 75gn
$$
The denominator is,
$$
1 - \sum_{k=1}^{n} m_{k} = 1 - \sum_{k=1}^{n} \left( 50 + 50 \frac{i-1}{n-1} \right) = 1 - 75n
$$
Therefore the acceleration is,
$$
t_{n} = \frac{v \sum_{k=1}^{n} \left( 50-20 \frac{k-1}{n-1} \right)  - g \sum_{k=1}^{n} \left( 50 + 50 \frac{k-1}{n-1} \right)}{1 - \sum_{k=1}^{n} \left( 50 + 50 \frac{k-1}{n-1} \right)}= \frac{40vn - 75gn}{1-75n}
$$
Evaluate $t_{i}$:
$$
t_{i} = v \sum_{k=1}^{i} c_{k} + (t_{n}-g) \sum_{k=1}^{i} m_{k} = v \sum_{k=1}^{i} \left( 50-20 \frac{i-1}{n-1} \right) + (t_{n}-g) \sum_{k=1}^{i} \left( 50 + 50 \frac{i-1}{n-1} \right)
$$
$$
(t_{n}-g+v) \sum_{k=1}^{i} 50 + \frac{50(t_{n}-g) - 20v}{n-1} \sum_{k=1}^{i} (k-1) = (t_{n}-g+v)50i + \frac{50(t_{n}-g) - 20v}{n-1} \frac{i(i-1)}{2}
$$
Derivative in terms of $i$ is:
$$
50(t_{n}-g+v) + \frac{50(t_{n}-g) - 20v}{2(n-1)} (2i-1) =0
$$
Solve for $i$,
$$
2i-1 = 50(t_{n}-g+v) \frac{2(n-1)}{50(t_{n}-g) - 20v}
$$
$$
i = \frac{1}{2}\left( 50(t_{n}-g+v) \frac{2(n-1)}{50(t_{n}-g) - 20v} + 1  \right)
$$
$$
\frac{50(n-1)(t_{n}-g+v)}{50(t_{n}-g)-20v} + \frac{1}{2}
$$
$$
i = \frac{-0.5n^{2} + 0.990929n - 0.00546429}{n-0.0290714}
$$