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
To find $M$ I will use,
$$
|f'(x)-g(x, h)| \leq \frac{h}{2!} M
$$
By the definition of $g(x, h)$, for $f_{1}$:
$$
g(x, h) = \frac{f(x+h)-f(x)}{h} = \frac{(x+h)^{5/2} - x^{5/2}}{h}
$$
Use L'Hopital's rule to evaluate the limit as $h\to 0$,
$$
g(x, h) = \frac{5}{2} (x+h)^{3/2}
$$
Substituting into the identity, and using the fact that $x=1$,
$$
\left| f'(x) - g(x, h) \right| = \left| \frac{5}{2}x^{3/2} - \frac{5}{2}(x+h)^{3/2} \right| = \left| \frac{5}{2}- \frac{5}{2}(h+1)^{3/2} \right| = \frac{5}{2} \left| 1 - (h+1)^{3/2} \right|
$$
Approximating with Taylor series,
$$
(h+1)^{3/2} \approx 1 + \frac{3}{2}h + H.O.T.
$$
$$
\frac{5}{2} \left| 1 - \left( 1 + \frac{3}{2}h \right) \right| = \frac{15}{4}h
$$
Substitute into the boundary,
$$
\frac{15}{4}h \leq \frac{h}{2} M \implies \frac{15}{2} \leq M
$$
And therefore $M$ is approximately $15 /2$.

For $f_{2}$, complete the same process,
$$
g(x, h) = \frac{3}{2}(x+h)^{1/2}
$$
$$
\left| \frac{3}{2} \sqrt{ x } - \frac{3}{2} \sqrt{ x+h } \right| = \frac{3}{2} \left| 1 - \sqrt{ h+1 } \right|
$$
$$
\frac{3}{2} \left| 1 - \left( 1+\frac{h}{2} \right) \right| = \frac{3}{2} \left( \frac{h}{2} \right) = \frac{3}{4}h
$$
$$
\frac{3}{4}h \leq \frac{h}{2}M \implies \frac{3}{2} \leq M
$$
So $M$ is approximately $3 /2$.
- This process seems very wrong because I'm effectively just computing the derivative at all these points
---
b.
