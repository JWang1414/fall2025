![[Pasted image 20251204115618.png]]
Natural splines must have the 2nd derivative equal to zero at the endpoints. The conditions are therefore:
- $S_{0}=S_{1}$, $S_{0}'=S_{1}'$ and $S_{0}''=S_{1}''$ at $x=0$
- $S_{0}'$ and $S_{1}'$ are zero at the points. That is, at $x=0$ and $x=2$ respectively

I made a mistake there. The 2nd derivative is supposed to be zero, not the first.
$$
S_{0}''=S_{1}''=0
$$
At the endpoints. Everything else from here is computations
![[Pasted image 20251204120053.png]]
a.
$$
S_{0}=S_{1} \qquad S_{0}'=S_{1}' \qquad S_{0}''=S_{1}''
$$
b.
A clamped spline must have the same values and derivatives of the function at the knots and endpoints. Since we are given the function $f$ this means
$$
S_{0}(0) = f(0) \qquad S_{1}(1) = f(1) \qquad S_{1}(2) = f(2)
$$
$$
S_{0}'(0)=f'(0) \qquad S_{1}'(2) = f'(2)
$$
