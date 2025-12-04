![[Pasted image 20251204165256.png]]
Swap this into
$$
\begin{bmatrix}
x_{1}+x_{2}-3 \\
x_{1}^{2}+x_{2}^{2}-9
\end{bmatrix} = \vec{0}
$$
Compute Jacobian
$$
\begin{bmatrix}
1 & 1 \\
2x_{1} & 2x_{2}
\end{bmatrix}
$$
This matrix is singular when $x_{1}=x_{2}$. For initial $x_{0}=\begin{bmatrix}1 & 2\end{bmatrix}^{T}$,
$$
\vec{f}(\vec{x}_{0}) = \begin{bmatrix}
0 \\
-4
\end{bmatrix}
$$
$$
\vec{J} = \begin{bmatrix}
1 & 1 \\
2 & 4
\end{bmatrix}
$$
Solve for $s_{0}$
$$
\begin{bmatrix}
1 & 1 \\
2 & 4
\end{bmatrix} s_{0} = \begin{bmatrix}
0 \\
4
\end{bmatrix}
$$
$$
s_{0} = \begin{bmatrix}
-2 \\
2
\end{bmatrix}
$$
The first iteration is therefore,
$$
x_{1} = x_{0}+s_{0} = \begin{bmatrix}
1-2 \\
2+2
\end{bmatrix} = \begin{bmatrix}
-1 \\
4
\end{bmatrix}
$$
- And then you can just repeat the process which I do not want to do
