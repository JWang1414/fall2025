The most fundamental method of solving linear systems is Gauss elimination (GE). This is based on transforming an existing linear system into a simpler equivalent one.

Consider a lower triangular matrix $A$ that is $n\times n$. Define $b$ has a $n\times 1$ vectors. Solve $Ax=B$
$$
\begin{align}
a_{11}x_{1} & =b_{1} \\
a_{21}x_{1} + a_{22}x_{2} & = b_{2} \\
\dots
\end{align}
$$
Notice that the first expression is trivial, and you can substitute the result you find into the next line to find the following value. You can continues this until you are done.

This procedure can be described as: For $i=1$ to $n$ do,
$$
x_{i} = \frac{1}{a_{ii}}\left( b_{i} - \sum_{j=1}^{i-1} a_{ij}x_{j} \right)
$$
If $a_{ii}\neq 0$, otherwise, quit.
- There is a computational version in the slides I will not write
- The computational version requires about $n^{2} /2$ operations
- Pairs of additions and multiplications are often called *flops*
- Since we have far less divisions than flops, we often ignore them in operation counts

Notice that the same series of operations can be done for an upper-triangular matrix. You just need to start from the bottom instead.

For $i=n$ down to $1$ do,
$$
x_{i} = \frac{1}{a_{ii}} \left( b_{i} - \sum_{j=i+1}^{n} a_{ij}x_{j} \right)
$$
If $a_{ii}\neq 0$, otherwise quit.

Two linear systems are called *equivalent* if they have the same solutions or sets of solutions.
$$
Ax=b \iff By=c
$$
When $x=y$

One way to obtain systems equivalent to a given one is to apply the familiar *row operations*.
- Row reducing
- Gauss elimination is build on these operations

The slides going through Gauss elimination pretty much just show me that it's the same thing as row reduction or whatever. Two different names for the same thing. I'm lucky, already did this in 3 different classes.

It is possible to write an algorithm to complete Gauss elimination.
- While row reducing, it is useful to save the operation you complete. For example, saving each operation with some matrix $L$
- The number of operations required is $n^{3} /3$ flops and $n^{2} /2$ divisions