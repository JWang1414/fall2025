### Question 1
Recall that after LU decomposition, we solve the system $Ly=b$ and then $Ux=y$ to find $x$.

Solve the system,
$$
\begin{bmatrix}
2 & 3 & -6 \\
1 & -6 & 8 \\
3 & -2 & 1
\end{bmatrix} \mathbf{x} = \begin{bmatrix}
-8 \\
7 \\
-2
\end{bmatrix}
$$
Subtract the first row from the subsequent ones,
$$
\begin{bmatrix}
1 & 0 & 0 \\
1 /2 & 1 & 0 \\
3 /2 & 0 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -15 /2 & 11 \\
0 & -13 /2 & 10
\end{bmatrix}
$$
Subtract the second row from the subsequent rows,
$$
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 13 /15 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -15 /2 & 11 \\
0 & 0 & 7 /15
\end{bmatrix}
$$
And so the LU decomposition is,
$$
\begin{bmatrix}
1 & 0 & 0 \\
1 /2 & 1 & 0 \\
3 /2 & 13 /15 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -15 /2 & 11 \\
0 & 0 & 7 /15
\end{bmatrix}
$$
Now solve the system for $\mathbf{x}$.
$$
L\mathbf{y} = b \implies \begin{bmatrix}
1 & 0 & 0 \\
1 /2 & 1 & 0 \\
3 /2 & 13 /15 & 1
\end{bmatrix} \begin{bmatrix}
y_{1} \\
y_{2} \\
y_{3}
\end{bmatrix} = \begin{bmatrix}
-8 \\
7 \\
-2
\end{bmatrix}
$$
Which yields that,
$$
y_{1} = -8 \qquad y_{2}=11 \qquad y_{3} = \frac{7}{15}
$$
And now solving for $\mathbf{x}$,
$$
Ux=y \implies \begin{bmatrix}
2 & 3 & -6 \\
0 & -15 /2 & 11 \\
0 & 0 & 7 /15
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3}
\end{bmatrix} = \begin{bmatrix}
-8 \\
11 \\
7 /15
\end{bmatrix}
$$
Which yields that,
$$
x_{1} = -1 \qquad x_{2}=0 \qquad x_{3}=1
$$
And so the answer is,
$$
\mathbf{x} = \begin{bmatrix}
-1 \\
0 \\
1
\end{bmatrix}
$$
### Question 2
For partial pivoting, I need to move the largest value in the current column to the current row.

The system is the same as before,
$$
\begin{bmatrix}
2 & 3 & -6 \\
1 & -6 & 8 \\
3 & -2 & 1
\end{bmatrix} \mathbf{x} = \begin{bmatrix}
-8 \\
7 \\
-2
\end{bmatrix}
$$
Pivot and reduce,
$$
\begin{bmatrix}
0 & 0 & 1 \\
0 & 1 & 0 \\
1 & 0 & 0
\end{bmatrix} \begin{bmatrix}
3 & -2 & 1 \\
1 & -6 & 8 \\
2 & 3 & -6
\end{bmatrix} \implies \begin{bmatrix}
1 & 0 & 0 \\
1 /3 & 1 & 0 \\
2 /3 & 0 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -16 /3 & 23 /3 \\
0 & 13 /3 & -20 /3
\end{bmatrix}
$$
The current row has the higher magnitude,
$$
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & -13 /16 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -16 /3 & 23 /3 \\
0 & 0 & -7 /16
\end{bmatrix}
$$
The LU decomposition is,
$$
\begin{bmatrix}
1 & 0 & 0 \\
1 /3 & 1 & 0 \\
2 /3 & -13 /16 & 1
\end{bmatrix} \begin{bmatrix}
2 & 3 & -6 \\
0 & -16 /3 & 23 /3 \\
0 & 0 & -7 /16
\end{bmatrix}
$$
Recall that we have $PA=LU$ and there fore $LUx=Pb$.

The system to solve is $Ly=Pb$ and $Ux=y$
- Everything from here is algebra
### Question 3
In scaled partial row pivoting, we multiply all rows by a multiple so that the maximum magnitude of an element in each row is 1. For example,
$$
\begin{bmatrix}
2 & 3 & -6 \\
1 & -6 & 8 \\
3 & -2 & 1
\end{bmatrix}
$$
We would scale by,
$$
\begin{bmatrix}
1 /6 & 0 & 0 \\
0 & 1 /8 & 0 \\
0 & 0 & 1 /3
\end{bmatrix}
$$
To obtain,
$$
\begin{bmatrix}
1 /3 & 1 /2 & -1 \\
1 /8 & -3 /4 & 1 \\
1 & -2 /3 & 1 /3
\end{bmatrix}
$$
At this point you would apply pivoting as normal to complete the process. We have $PDA=LU$ and therefore $LUx=PDb$. So, the system to solve is $Ly=PDb$ and $Ux=y$.
### Question 6
Solve the following system without pivoting, with partial pivoting, and with complete pivoting.
$$
A = \begin{bmatrix}
0.001 & 1 \\
1 & 2
\end{bmatrix} \qquad b = \begin{bmatrix}
1 \\
3
\end{bmatrix}
$$
Without pivoting,
$$
\begin{bmatrix}
1 & 0 \\
1000 & 1
\end{bmatrix} \begin{bmatrix}
0.001 & 1 \\
0 & -998
\end{bmatrix} \to \begin{bmatrix}
1 & 0 \\
1000 & 1
\end{bmatrix} \begin{bmatrix}
0.001 & 1 \\
0 & -1000
\end{bmatrix}
$$
Solve the system $Ly=b$ and $Ux=y$ to find $x$,
$$
\begin{bmatrix}
1 & 0 \\
1000 & 1
\end{bmatrix} \begin{bmatrix}
y_{1} \\
y_{2}
\end{bmatrix} = \begin{bmatrix}
1 \\
3
\end{bmatrix}
$$
$$
y_{1} = 1 \qquad y_{2} = -997 \to -1000
$$
Solve for $x$,
$$
\begin{bmatrix}
0.001 & 1 \\
0 & -1000
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2}
\end{bmatrix} = \begin{bmatrix}
1 \\
-1000
\end{bmatrix}
$$
$$
x_{1}=0 \qquad x_{2}=1
$$
And so the solution we find this way is $\mathbf{x}=\begin{bmatrix}0 & 1\end{bmatrix}^{T}$

Now with partial pivoting,
$$
\begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix} \begin{bmatrix}
1 & 2 \\
0.001 & 1
\end{bmatrix}
$$
$$
\begin{bmatrix}
1 & 0 \\
0.001 & 1
\end{bmatrix} \begin{bmatrix}
1 & 2 \\
0 & 0.998
\end{bmatrix} \to \begin{bmatrix}
1 & 2 \\
0 & 1
\end{bmatrix}
$$
And so we have,
$$
P = \begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix} \qquad L = \begin{bmatrix}
1 & 0 \\
0.001 & 1
\end{bmatrix} \qquad U = \begin{bmatrix}
1 & 2 \\
0 & 1
\end{bmatrix}
$$
We are interested in solving the system $Ly=Pb$ and $Ux=y$
$$
\begin{bmatrix}
1 & 0 \\
0.001 & 1
\end{bmatrix} \begin{bmatrix}
y_{1} \\
y_{2}
\end{bmatrix} = \begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix} \begin{bmatrix}
1 \\
3
\end{bmatrix} = \begin{bmatrix}
3 \\
1
\end{bmatrix}
$$
Therefore we have,
$$
y_{1}=3 \qquad y_{2}=0.997 \to 1
$$
Hence,
$$
\begin{bmatrix}
1 & 2 \\
0 & 1
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2}
\end{bmatrix} = \begin{bmatrix}
3 \\
1
\end{bmatrix}
$$
$$
x_{1} = 1 \qquad x_{2}=1
$$
And so the solution in this case is $\mathbf{x}=\begin{bmatrix}1 & 1\end{bmatrix}^{T}$. Far closer to the exact answer.

For complete pivoting, we obtain the same answer. Things to remember:

Complete pivoting is done with $PAQ=LU$ where $P$ are the row pivots and $Q$ are the column pivots.

The system to solve is $Ly=Pb$, $U\hat{x}=y$ and finally $x=Q\hat{x}$.