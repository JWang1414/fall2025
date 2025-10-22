![[Pasted image 20251021213945.png]]
i.
$\epsilon _\text{mach}$ is the smallest non-normalised floating point number of the form $b^{-i}$. 

Consider the operations $1+2^{-t}$ and $1+2^{-t-1}$
$$
0.100\dots 000 \times 2^{1} + 0.000\dots 010 \times 2^{1} = 0.100\dots 010 \times 2^{1}
$$
$$
0.100\dots 000 \times 2^{1} + 0.000\dots 001 \times 2^{1} = 0.100\dots 001 \times 2^{1}
$$
The mantissa has been shown in binary, and the last three digits are the $t$ digit and the $t+2$ digits of the mantissa. Notice that, in the first case, the number is rounded up, but it is rounded down in the second case. The machine error for traditional rounding is therefore,
$$
\epsilon _\text{mach}= 0.000\dots 010 \times 2^{1} = 2^{-t}
$$
For proper rounding, consider the example with $1+2^{-t+1}$ and $1+2^{-t}$. We have,
$$
0.100\dots 000 \times 2^{1} + 0.000\dots 010 \times 2^{1} = 0.100\dots 010 \times 2^{1}
$$
$$
0.100\dots 000 \times 2^{1} + 0.000\dots 001 \times 2^{1} = 0.100\dots 001 \times 2^{1}
$$
Where I have shown $t+1$ digits in the mantissa. In the first case, the final digit is chopped off, and in the second case, the number is rounded down. The smallest representable number is therefore,
$$
\epsilon _\text{mach} = 0.000 \dots 010 \times 2^{1} = 2^{-t+1}
$$
![[Pasted image 20251021222243.png]]
$$
336+1.42 = 337.42 = 0.33742 \times 10^{3} \to 0.337 \times 10^{3}
$$
$$
337+0.1 = 337.1 = 0.3371 \times 10^{3} \to 0.337\times 10^{3}
$$
---
$$
1.42+0.1 = 1.52 = 0.152 \times 10^{1}
$$
$$
336+1.52 = 337.52 = 0.33752 \times 10^{3} \to 0.338 \times 10^{3}
$$
---
$$
336 \times 10^{7} = 0.336 \times 10 ^{10} \implies \text{overflow}
$$
---
$$
-900 \times 10^{6} - 100 \times 10^{6} = -0.900 \times 10^{9} - 0.100 \times 10^{9} = -10^{10} \implies \text{overflow}
$$
---
$$
10^{8} + 10^{5} = 1000\times 10^{5} + 10^{5} = 1001 \times 10^{5} \to 10^{8}
$$
---
$$
0.697 + \frac{0.699-0.697}{2} = 0.697 + \frac{0.002}{2} = 0.697 + 0.001 = 0.698
$$
![[Pasted image 20251021231212.png]]
The quadratic formula for some $ax^{2}+bx+c=0$ is,
$$
x = \frac{-b\pm \sqrt{ b^{2}-4ac }}{2a}
$$
So in this case we have,
$$
x = \frac{56\pm \sqrt{ 56^{2}-4(1) }}{2} = \frac{56\pm 6\sqrt{ 87 }}{2} \approx \frac{56\pm 55.964}{2} = \begin{cases}
55.982 \\
0.0180
\end{cases}
$$
Notice that there is catastrophic cancellation in the second step. It is more efficient to compute the second root as the inverse of the first $(x_{2}=x_{1}^{-1})$

Consider computing,
$$
y = \sqrt{ x+\delta } - \sqrt{ x }
$$
Where $\delta$ is small. The method is to use the equivalent,
$$
y = \frac{\delta}{\sqrt{ x+\delta }+\sqrt{ x }}
$$
Instead.

Consider computing,
$$
y = \cos(x+\delta) - \cos x
$$
The method is to use the equivalent,
$$
y = -2 \sin\left( \frac{\delta}{2} \right) \sin\left( x+\frac{\delta}{2} \right)
$$
### Question 7
Study the condition number of the function,
$$
f(x) = \frac{10}{1-x^{2}}
$$
Recall that the condition number is defined to be,
$$
\kappa_{f} = \left| \frac{xf'(x)}{f(x)} \right|
$$
We have,
$$
f'(x) = 10 \frac{d}{dx} (1-x^{2})^{-1} = 10 (-1)(1-x^{2})^{-2}(-2x) = \frac{20x}{(1-x^{2})^{2}}
$$
Therefore,
$$
\kappa_{f} = \left| \frac{x(20x)(1-x^{2})}{(1-x^{2})^{2}(10)} \right|  = \left| \frac{2x^{2}}{1-x^{2}} \right|
$$
This function has a hypotenuse at $x=\pm 1$. What about for $x\to \pm \infty$?
$$
\lim_{ x \to \infty } \frac{2x^{2}}{1-x^{2}} \implies \lim_{ x \to \infty } \frac{4x}{-2x} = -2
$$
I conclude that this function is well conditions for all values, including arbitrarily large values, with the exception of $x=\pm 1$.
### Question 8
This question requires MATLAB code, surely we won't be required to write it down on the midterm right?
![[Pasted image 20251021233735.png]]
