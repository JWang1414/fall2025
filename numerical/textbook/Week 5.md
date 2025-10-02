### Pivoting
Gaussian elimination will break down if one of the diagonal entries is either 0 or very small.
- The first because we cannot divide by zero
- The second because it will give us significant truncation errors

In order to fix this problem, before every elementary elimination, we must pivot to remove the small values from the diagonal. This is accomplished by searching for the largest value in the same column, and them swapping the current row with that one.

The slightly changes the reduction process for $A$. We still have $MA=U$, however,
$$
M = M_{n-1} P_{n-1} \dots M_{1} P_{1}
$$
Instead of just all $M_{i}$. $M^{-1}$ is still triangular, however it is not lower triangular.

Interestingly, if you apply all the permutations prior, you will still end up with the proper system:
$$
PA = LU
$$
Where now $L$ is lower triangular. To solve this linear system $Ax=b$ we first solve $Ly=Pb$, then $Ux=y$.

So, in a sense, the permutations done during the reduction process are there to *determine* the correct permutation. However it is impossible to determine beforehand in practice.

The above is called *partial pivoting*. Complete pivoting requires the entire unreduced matrix to be searched for the largest entry. This require swapping from columns and rows. It has a factorisation of the form:
$$
PAQ = LU
$$
Where $P$ and $Q$ are two permutation matrices. To solve this you would need to complete $Ly=Pb$ then, $Uz=y$, and finally $x=Qz$.

The numerical stability of complete pivoting is superior, but because it is so expensive, it is rarely ever used.
### Implementation of Gaussian Elimination
There are numerous different ways of implementing Gaussian elimination. You could, for example, search along the rows instead of the columns. Or you could make $U$ unit diagonal instead of $L$.

Difference methods are helpful for difference computers, depending on the architecture, one method may run much faster.

Assuming the row pivot sequence is the same, if we have two LU factorisations,
$$
PA = LU = \hat{L}\hat{U}
$$
Then we also have,
$$
\hat{L}^{-1}L = \hat{U} U^{-1} = D
$$
If $\hat{L}$ and $L$ are both unit triangular, then the diagonal matrix $D$ must be the identity. Implying that LU factorisation is unique.

Do not though, it is just unique up to a constant. The LDU factorisation proves this.
$$
PA = LDU
$$
Where $L$ and $U$ have unit diagonals, and $D$ is diagonal.

Because the effect of all the interchanges results in just a net permutation you can apply before the computation, in practice a single vector storing the row order suffices as opposed to using a full matrix.
- This vector is simply a permutation of the integers from 1 to $n$
### Improving Accuracy
Recall that diagonal scalar is largely inconsequential to the overall solution of a system. Row scaling leaves the system unchanged, and the system is easily recoverable after column scaling.

Scaling the rows and columns may potentially improve or degrade the stability and accuracy of a problem.

---
Example:
$$
\begin{bmatrix}
1 & 0 \\
0 & \epsilon
\end{bmatrix} \begin{bmatrix}
x_{1} \\
x_{2}
\end{bmatrix} = \begin{bmatrix}
1 \\
\epsilon
\end{bmatrix}
$$
This linear condition has condition number $\epsilon$ and so is poorly conditioned if $\epsilon$ is small. Multiply the second row by $1 /\epsilon$, however, and the system is well conditioned.

---

Although scaling can be quick and easy, there is no simple method of determining the correct scaling to use. There is no general, automatic method that produces optimal scaling.

Define some system $Ax=b$. We can compute the residual in our solution,
$$
r_{0} = b - Ax_{0}
$$
Where $x_{0}$ is the solution we have initially found. Now, we can perhaps use the same LU factorisation we used to solve another system,
$$
As_{0} = r_{0}
$$
From which we find another solution,
$$
x_{1} = x_{0} + s_{0}
$$
Which is a more accurate solution because,
$$
Ax_{1} = A(x_{0} + s_{0}) = Ax_{0} + As_{0} = (b-r_{0}) + r_{0} = b
$$
This process is called *iterative refinement*, because it can be repeated until convergence.

Unfortunately, iterative refinement requires double the storage, since both the
original matrix and its LU factorisation are required, and the residual must usually be computed with higher precision than that used in computing the initial solution.

It is best used on systems that are poorly scaled, or if the initial solution is poor enough that the residual can be computed without requiring extra precision.
