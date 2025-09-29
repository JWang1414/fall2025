### Question 2
---
a.
Find extreme by computing the derivative,
$$
E'(h) = A\varepsilon _\text{mach} \frac{d}{dh} \frac{1}{h} + \frac{M}{2} \frac{d}{dh}h = -\frac{A}{h^{2}} \varepsilon _\text{mach} + \frac{M}{2}
$$
Set this equal to 0 and solve for $h$,
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
