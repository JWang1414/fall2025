The error in RK2 is roughly $ch^{3}$
$$
x(t+2h) = x_{1} + 2ch^{3}
$$
$$
x(t+2h) = x_{2} + 8ch^{3}
$$
Equate these,
$$
x_{1} + 2ch^{3} = x_{2} + 8ch^{3} \implies x_{1} = x_{2} + 6ch^{3}
$$
The per step error is therefore,
$$
\epsilon = ch^{3} = \frac{1}{6} (x_{1}-x_{2})
$$
Define the target accuracy $\delta$ for the step size $h'$
$$
\frac{1}{6} \left| x_{1}-x_{2} \right| \left( \frac{h'}{h} \right)^{3} = h'\delta
$$
Solve for $h'$
$$
\frac{1}{6} \left| x_{1}-x_{2} \right| \frac{h'^{2}}{h^{3}} = \delta \implies \left| x_{1}-x_{2} \right| h'^{2} = 6h^{3}\delta
$$
$$
h' = \sqrt{ \frac{6h^{3}\delta}{\left| x_{1}-x_{2} \right| } }
$$
I conclude that $a=2$ and $b=6$
