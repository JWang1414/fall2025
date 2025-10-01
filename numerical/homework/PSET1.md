### Question 1
---
a.
The condition number is defined to be,
$$
\text{Condition Number} = \left| \frac{xf'(x)}{f(x)} \right|
$$
The derivative of $f(x)$, $f'(x)$ is:
$$
\frac{df}{dx} = \frac{d}{dx} (a+x)^{1/4} - \frac{d}{dx} a^{1/4} = \frac{1}{4(a+x)^{3/4}}
$$
Substitute this into the definition of the condition number:
$$
\left| \frac{xf'(x)}{f(x)} \right| = \left| \frac{x}{4(a+x)^{3/4}} \frac{1}{(a+x)^{1/4}-a^{1/4}} \right| = \left| \frac{x}{4(a+x - a^{1/4}(a+x)^{3/4})} \right|
$$
Ill-conditioning is most-likely to occur when the denominator is zero. Check when this is the case:
$$
a+x - a^{1/4} (a+x)^{3/4} =0 \implies a+x = a^{1/4} (a+x)^{3/4}
$$
$$
(a+x)^{4} = a(a+x)^{3} \implies a+x = a \implies x=0
$$
The denominator is 0 exclusively when $x=0$. By inspection, because the numerator and denominator are both of order 1, as $x\to \infty$ the condition number will remain finite. Check what happens as $x\to 0$:
$$
\lim_{ x \to 0 } \left| \frac{x}{4(a+x - a^{1/4}(a+x)^{3/4})} \right| = \lim_{ x \to 0 } \left| \frac{(a+x)^{1/4}}{4(a+x)^{1/4}-3a^{1/4}} \right| = \left| \frac{a^{1/4}}{4a^{1/4}-3a^{1/4}} \right| =1
$$
Where I have used L'Hopital's rule to evaluate this limit. I conclude that the condition number remains finite and near one, and so $f(x)$ is well-conditioned for all values of $x>0$ and $a>0$.

---
b.
When $x$ is close to zero, $(a+x)^{1/4}\approx a^{1/4}$ and so $f(x)$ will take the difference between two similar numbers. As a result, catastrophic cancellation may occur, especially if $a\gg x$.

A mathematically equivalent, but more stable expression is,
$$
(a+x)^{1/4} - a^{1/4} = \frac{\sqrt{ a+x }-\sqrt{ a }}{(a+x)^{1/4}+a^{1/4}} = \frac{x}{((a+x)^{1/4}+a^{1/4})(\sqrt{ a+x }+\sqrt{ a })}
$$
Where I have multiplied the numerator and denominator by the conjugate of the numerator two times. This should be more stable because, since $x>0$ and $a>0$, there is no risk of catastrophic cancellation. The relative error in the remaining operations, division and exponentiation, will be smaller.

---
c.
Notes for the script:
- The condition number for both equations is equivalent
- The relative error can be computed using the formula below:
$$
\frac{|x-y|}{x}
$$
Where $x$ is the more accurate solution, and $y$ is the approximation.
### Question 3
---
ai.
Define $A$ as some strictly row diagonally dominant matrix. Then,
$$
|a_{ii}| > \sum_{j\neq i} |a_{ij}|
$$
For all rows $i$ and columns $j$ in $A$. In $-A$, all entries in the matrix are multiplied by $-1$ such that,
$$
a_{ij} = -a_{ij}
$$
By definition of the absolute value, or magnitude,
$$
|a_{ij}| = |-a_{ij}|
$$
Which implies that, in $-A$ I have:
$$
|a_{ii}| = |-a_{ii}| \qquad \sum_{j\neq i} |a_{ij}| = \sum_{j\neq i} |-a_{ij}|
$$
And so I therefore re-obtain the identity listed prior,
$$
|a_{ii}| > \sum_{j\neq i} |a_{ij}| \iff |-a_{ii}| > \sum_{j\neq i} |-a_{ij}|
$$
I conclude that $-A$ is also strictly row diagonally dominant.

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
In the first row, $a_{11}=1<1+1=a_{12}+a_{13}$ and so $A^{T}$ is not strictly row diagonally dominant.

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
In the first row, $a_{11}=a_{12}$ and so $A+B$ is not strictly row diagonally dominant.

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
In the first row, $a_{11}=4<4+1<a_{12}+a_{13}$ and so $A^{2}$ is not strictly row diagonally dominant.

---
b.
Define some arbitrary vector, $\vec{x}$,  with $n$ entries labelled from $a_{1}$ to $a_{n}$. For $A$ to be positive definite, I require:
$$
\vec{x}^{T} A\vec{x} >0
$$
Expanding out this calculation:
$$
\vec{x}^{T} A \vec{x} =  \begin{bmatrix}
a_{1} & \cdots & a_{n}
\end{bmatrix} \begin{bmatrix}
2 & -1 \\
-1 & 2 & -1 \\
 & . & . & . \\
 &  & -1 & 2 & -1 \\
 &  &  & -1 & 2
\end{bmatrix} \begin{bmatrix}
a_{1} \\
\vdots \\
a_{n}
\end{bmatrix}
$$
Which becomes the series:
$$
2a_{1}^{2} - a_{1}a_{2} + 2a_{2}^{2} - a_{1}a_{2} - a_{2}a_{3} + 2a_{3}^{2} - a_{2}a_{3} - a_{3}a_{4} + \dots + 2a_{n}^{2} - a_{n-1}a_{n}
$$
Notice, in summation notation this is equivalent to:
$$
2 \sum_{i=1}^{n} a_{i}^{2} - 2 \sum_{i=1}^{n-1} a_{i}a_{i+1}
$$
Note the following identity, valid for all real numbers.
$$
(\alpha-\beta)^{2} = \alpha^{2} - 2\alpha \beta + \beta^{2} \implies \alpha^{2} + \beta^{2} = 2\alpha \beta + (\alpha-\beta)^{2} > 2\alpha \beta
$$
Applying this to the summation:
$$
2 \sum_{i=1}^{n} a_{i}^{2} - 2 \sum_{i=1}^{n-1} a_{i}a_{i+1} > 2 \sum_{i=1}^{n} a_{i}^{2} - \sum_{i=1}^{n-1} (a_{i}^{2} + a_{i+1}^{2})
$$
By linearity:
$$
= 2 \sum_{i=1}^{n} a_{i}^{2} - \sum_{i=1}^{n-1} a_{i}^{2} - \sum_{i=1}^{n-1} a_{i+1}^{2} = a_{1}^{2} + a_{n}^{2} > 0
$$
I obtain that,
$$
\vec{x}^{T} A \vec{x} = a_{1}^{2} + a_{n}^{2} > 0
$$
And so $A$ is positive definite, as needed.
