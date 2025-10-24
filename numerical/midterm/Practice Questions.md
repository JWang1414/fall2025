### Question 1
Computer system 1:
$$
(260+1.27)+0.1 = 261.27 + 0.1 = 261.37
$$
$$
260+(1.27+0.1) = 260+1.37 = 261.37
$$
$$
3.08 \times 0.1 = 0.308 \to 0.31
$$
$$
3.08 \times 0.01 = 0.0308 \to 0.03
$$
$$
-900-100 = -1000 \to \text{overflow}
$$
- The range of representable numbers is from $\pm 999.99$
- Underflow happens between $\pm 0.01$
Computer system 2:
$$
(0.260 \times 10^{3} + 0.127 \times 10^{1}) + 0.100 \times 10^{0} \approx 0.261 \times 10^{3} + 0.1 \times 10^{0} \approx 0.261 \times 10^{3}
$$
$$
0.260 \times 10^{3} + (0.127 \times 10^{1} + 0.1 \times 10^{0}) = 0.260 \times 10^{3} + 0.137 \times 10^{1} \approx 0.261 \times 10^{3}
$$
$$
0.308 \times 10^{1} \times 0.1 \times 10^{0} = 0.308 \times 10^{1}
$$
$$
0.308 \times 10^{1} \times 0.1 \times 10^{-1} = 0.308 \times 10^{-1}
$$
$$
-0.900 \times 10^{3} - 0.100 \times 10^{3} = -0.100 \times 10^{4}
$$
- The range of representation numbers is from $\pm 0.999\times 10^{9}$
- Underflow happens between $\pm 0.100 \times 10^{-9}$

Notice that, although the first computer system may be more accurate, the floating-point system has a far larger range of representable numbers
### Question 2
---
a.
$$
\begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} \begin{bmatrix}
3 & -2 & 0 \\
-2 & 3 & 2 \\
0 & -1 & 2
\end{bmatrix}
$$
$$
\begin{bmatrix}
3 & -2 & 0 \\
-2 /3 & 5 /3 & 2 \\
0 & -1 & 2
\end{bmatrix} \to \begin{bmatrix}
3 & -2 & 0 \\
-2 /3 & 5 /3 & 2 \\
0 & -3 /5 & 16 /5
\end{bmatrix}
$$
And so we have,
$$
P = \begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} \qquad L = \begin{bmatrix}
1 & 0 & 0 \\
-2 /3 & 1 & 0 \\
0 & -3 /5 & 1
\end{bmatrix} \qquad U = \begin{bmatrix}
3 & -2 & 0 \\
0 & 5 /3 & 2 \\
0 & 0 & 16 /5
\end{bmatrix}
$$
Compute $PA$ and $LU$
$$
PA = \begin{bmatrix}
3 & -2 & 0 \\
-2 & 3 & 2 \\
0 & -1 & 2
\end{bmatrix}
$$
$$
LU = \begin{bmatrix}
1 & 0 & 0 \\
-2 /3 & 1 & 0 \\
0 & -3 /5 & 1
\end{bmatrix} \begin{bmatrix}
3 & -2 & 0 \\
0 & 5 /3 & 2 \\
0 & 0 & 16 /5
\end{bmatrix} = \begin{bmatrix}
3 & -2 & 0 \\
-2 & 3 & 2 \\
0 & -1 & 2
\end{bmatrix}
$$
Confirming that $PA=LU$.

---
b.
To solve the system $Ax=b$, I need to solve the system $Ly=Pb$ and $Ux=y$ where $y$ is some intermediate vector.
$$
\begin{align}
Ly & = Pb \\
\begin{bmatrix}
1 & 0 & 0 \\
-2 /3 & 1 & 0 \\
0 & -3 /5 & 1
\end{bmatrix} \begin{bmatrix}
y_{1} \\
y_{2} \\
y_{3}
\end{bmatrix} & = \begin{bmatrix}
1 \\
0 \\
1
\end{bmatrix}
\end{align}
$$
I obtain that,
$$
y_{1} = 1 \qquad y_{2}=\frac{2}{3} \qquad y_{3}=\frac{7}{5}
$$
Now, solve for $x$,
$$
\begin{bmatrix}
3 & -2 & 0 \\
0 & 5 /3 & 2 \\
0 & 0 & 16 /5
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3}
\end{bmatrix} = \begin{bmatrix}
1 \\
2 /3 \\
7 /5
\end{bmatrix}
$$
I obtain that,
$$
x_{1} = \frac{1}{25} \qquad x_{2}=-\frac{11}{25} \qquad x_{3}=\frac{7}{10}
$$
