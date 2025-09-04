### Representation of Numbers
Recall the decimal and binary systems of representing numbers:
$$
350=(350)_{10} = (3\times 10^{2}) + (5\times 10) + (0 \times 10^{0})
$$
$$
350 = (101011110)_{2} = (1\times 256) + (0\times 128) + \dots + (1\times 2) + (0\times 1)
$$
So, for any digit system with base $b$, we have:
$$
x = (d_{n} d_{n-1} \dots d_{0})_{b} = (d_{n} \times b^{n}) + (d_{n-1} \times b^{n-1}) + \dots + (d_{0} \times b^{0})
$$
Where we have $0\leq d_{i}<b$, $i=0, \dots, n$ and $x>0$, $x \in \mathbb{N}$.

For example, in a hexadecimal system we use the digits 0-9 and A-F.

By grouping together several binary digits, we can simulate a system of base $b$, where $b$ is a power of 2. For example, 4 binary digits simulate a hexadecimal system.

On computers, negative and non-negative integers are indicated as an extra digit, as opposed to a sign.

For some number $x \in \mathbb{R}$ such that $x=\pm(x_{I}.x_{F})$, we have the two parts of the number $x_{I}$ and $x_{F}$. $x_{I}$ is the *integral* part, a non-negative integer. And the *fraction* $x_{F}$ is represented as a possibly infinite number of non-zero digits. This is effectively splitting a number up into the portions before and after the decimal.
### Floating Point Numbers
One way of representing *floating point numbers* in base $b$ is:
$$
x - (f)_{b} \times b^{(e)_{b}}
$$
Where we call $f=\pm(.d_{1}d_{2} \dots d_{t})_{b}$ the *mantissa* or *significand* and $e=\pm(c_{s-1}c_{s-2}\dots c_{0})_{b}$ the *exponent* or *characteristic*. A computer is said to have $t$ base $b$ digits of precision.

A floating point number is *normalised* if $d_{1}\neq 0$ or else $d_{1}=d_{2}=\dots=d_{n}=0$. *Significant* digits are the digits following and including the first non-zero digit of the mantissa. All the digits of the mantissa in a normalised floating point number are significant.

As an example, the number $0.01204\times 10$ is not normalised, but $0.12040\times 10^{0}$ is normalised.
- The absolute value of the mantissa is always $\geq 0$ and $<1$

Define the new values $-E_\text{min}=E_\text{max}=(aa\dots a)_{b}$ where $a=b-1$. Then, we also have $E_\text{min}\leq e\leq E_\text{max}$.

The largest floating point number, often called the *overflow level OFL* is:
$$
N_\text{max} = (.aa\dots a)_{b} \times b^{(aa\dots a)_{b}}
$$
Where $a=b-1$. While the smallest, suitably called the *underflow level UFL* is:
$$
N_\text{min} = (0.100)_{b} \times b^{-(aa\dots a)_{b}}
$$
If normalised.
$$
N_\text{min} = (0.00\dots_{0}1)_{b} \times b^{-(aa\dots a)_{b}}
$$
Otherwise.

The set of all base $b$ floating point numbers that can be represented by $t$ $b$-digits mantissa (including the sign) and $s$ $b$-digits exponent (including the sign) is:
$$
\mathbb{R}_{b} (t, s) \subseteq [-OFL, -UFL] \cup \{ 0 \} \cup [UFL, OFL]
$$
*Overflow* occurs when a number with a magnitude greater than $N_\text{max}$ has to be stored on a computer, and *underflow* when a number in a range $(-N_\text{min}, N_\text{min})$ has to be stored on a computer.
- $\mathbb{R}$ is dense but $\mathbb{R}_{b}(t, s)$ isn't. There are many holes in a real axis not exactly represented on a computer
- Representable numbers are concentrated towards 0
![[Pasted image 20250903231123.png]]
![[Pasted image 20250903231134.png]]
Above is a comparison between fixed point and floating point numbers. Fixed point numbers look like integers multiplied by some negative power of the base.

There are three primary method of approximating real numbers with floating point values. Chopping, rounding (traditional), and rounding (proper/perfect). Here are a few examples:
![[Pasted image 20250903232235.png]]
For the rounding in the proper form, if $D_{t+1}=b /2$ and $D_{t+2}=D_{t+3}=\dots=0$ then round $D_{t}$ up or down to the nearest even number.

The IEEE standard floating point numbers are:
$$
(-1)^{q} \times (d_{0}.d_{1}d_{2}\dots d_{t-1}) \times 2^{e}
$$
Where we have:
$$
e=(-1)^{p} \times (c_{s-2} \dots c_{1}c_{0})_{b}
$$
This number is binary, and so all digits are 0 or 1. $p$ and $q$ can also only be 0 or 1, just because they determine the sign of the value. Binary 32 numbers are of single precision, binary 64 of double, and binary 128 are quadruple.
### Error
The difference between $x$ and $fl(x)$ is called *round off error*. It is roughly proportional to $x$, and so is often written:
$$
fl(x)-x=x\delta \qquad fl(x)=x(1+\delta)
$$
Where $\delta$ is the *relative round off error*. $\delta$ may depend on $x$, however, $\mu$, the *unit round off*, does not depend on $x$.
$$
|\delta| \leq b^{1-t} \qquad \text{if normalised numbers and chopping are assumed}
$$
$$
|\delta| \leq \frac{1}{2} b^{1-t} \qquad \text{if normalised numbers and rounding are assumed}
$$
An approximation $\hat{x}$ to $x$ is considered correct in $r$ significant $b$-digits if:
$$
\left| \frac{x-\hat{x}}{x} \right| \leq \frac{1}{2} b^{1-r}
$$
For two numbers $x,y\in \mathbb{R}_{b}(t, s)$ and some operation $o\in(+, -, \times, /)$ then, for the computers floating point operation $\bar{o}$ corresponding to $o$, we have:
$$
xoy \neq fl(x\bar{o}y) \qquad x\bar{o}y = fl(xoy)
$$
Which is achieved with the used of one or two extra temporary digits. The error of a computation is the round-off error of the correct result. Computer operations therefore return the correctly rounded result.

The same case if for built-in functions on a computer:
$$
\bar{f}(x) = fl(f(x))
$$
The smallest non-normalised floating point number $\varepsilon _\text{mach}$ of the form $b^{-i}$ where $i \in \mathbb{Z}^{\geq 0}$ with the property $fl(1+\varepsilon _\text{mach})>1$ is called the machine epsilon.
$$
\varepsilon _\text{mach} = b^{1-t} \qquad \text{if chopping}
$$
$$
\varepsilon _\text{mach} = \frac{1}{2} b^{1-t} \qquad \text{if traditional rounding}
$$
$$
\frac{1}{2}b^{1-t} < \varepsilon _\text{mach} \leq b^{1-t} \text{ and } \varepsilon _\text{mach} = \frac{1}{2} b^{1-t}+b^{-t} \qquad \text{if proper rounding}
$$
Which also gives us the property
$$
-\varepsilon _\text{mach} \leq \delta \leq \varepsilon _\text{mach}
$$
For IEEE numbers, $\varepsilon _\text{mach}=2^{1-t}$
- Note that we have $0<UFL<\varepsilon _\text{mach}<OFL$
- As soon as error from round-off or a floating point operation arises, it may be amplified or reduced in subsequent operations, like multiplication and division.

There are cases where we have *catastrophic cancellation*, and therefore, the relative error is very high.
$$
\begin{align}
x & = .123456790 \times 10^{0} \\
y & = .123456789 \times 10^{0}
\end{align}
$$
Therefore we have:
$$
\begin{align}
fl(fl(x)-fl(y)) & = 0.1 \times 10^{-7} \\
x-y & = 0.1 \times 10^{-8}
\end{align}
$$
The relative error in the floating point representation of $y$ is at the level of $10^{-8}$, but the relative error in the fully evaluated floating point quantity is in the order of $10^{0}$.
- Generally speaking subtracting nearly equal numbers will result in having no correct digits
- This is one of the very few cases where arithmetic operations give large errors
### Error Propagation
- Page 29