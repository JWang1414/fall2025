### Question 2
---
a.
First, compute the derivative to find the minimum,
$$
E'(h) = A\varepsilon _\text{mach} \frac{d}{dh} \frac{1}{h} + \frac{M}{2} \frac{d}{dh}h = -\frac{A}{h^{2}} \varepsilon _\text{mach} + \frac{M}{2}
$$
Find when the derivative is zero, and solve for $h$,
$$
-\frac{A}{h^{2}}\varepsilon _\text{mach} + \frac{M}{2} \implies \frac{M}{2} = \frac{A}{h^{2}} \varepsilon _\text{mach} \implies h^{2} = \frac{2A}{M} \varepsilon _\text{mach}
$$
Assuming that $h$ must be a positive value, I find that,
$$
h_\text{min} = \sqrt{ \frac{2A}{M} \varepsilon _\text{mach} }
$$
According to the definition of $M$,
$$
\left| f''(x) \right| \leq M
$$
For $f_{1}$,
$$
\left| f_{1}''(1) \right| = \left| \frac{5}{2} \frac{3}{2} \sqrt{ 1 } \right| = \frac{15}{4} \leq M_{1}
$$
For $f_{2}$,
$$
\left| f_{2}''(1) \right| = \left| \frac{3}{2} \frac{1}{2} \frac{1}{\sqrt{ 1 }} \right| = \frac{3}{4} \leq M_{2}
$$
And so the $M$ upper-bounds corresponding to $f_{1}$ and $f_{2}$ are roughly $M_{1}\approx 15 /4$ and $M_{2}\approx 3 /4$.

---
b.
The respective error is highlighted to be,
$$
e_{i}(x) = \left| f(x) - g(x, h_{i}) \right|
$$
And the convergence rates are,
$$
\log\left( \frac{e_{i}}{e_{i+1}} \right) / \log\left( \frac{h_{i}}{h_{i+1}} \right)
$$
Equivalently expressed as,
$$
\frac{\log e_{i} - \log e_{i+1}}{\log h_{i} - \log h_{i+1}}
$$
Note that there is one less convergence rate than data points. The convergence rate for the first line should be omitted.
- This makes it look nicer in LaTeX but I won't be using it in Matlab
