# Question 4
- Comment on the results, in particular, how the error of each interpolant behaves as the number of data points increases, and whether this behaviour agrees with what expected from theory.
- What do the unlabelled quantities represent?

Comments:
As expected, generally speaking the error decreases as the number of points increases. There are more points that can be used to refine the interpolants, so they are more accurate to the original function. An exception can be seen in the polynomial interpolant when $n=64$. This is presumably because the degree of the polynomial is far too high, and has begun exhibiting oscillatory behaviour. Prior to this breakdown, the accuracy of the polynomial interpolant was similar or better than the linear spline interpolant.

The unlabelled values in the second table indicate the convergence rate from the last $n$ to the current $n$, as opposed to the full scheme. For this reason, I will call it the "tangential" convergence rate. The order of convergence for the linear spline method is consistently 2 as $n$ increases. I conclude the order of convergence for the linear spline method, for this function, is $\mathcal{O}(n^{2})$.

The convergence rate for the cubic spline hovers around 4, with a few outliers, for this reason I think the order of convergence is $\mathcal{O}(n^{4})$. Including the outliers, the mean is 3.74 with standard deviation 1.73. For the last step, the convergence rate is 0 because the error is approaching machine precision.

Notably, there is a step where the order of convergence jumps to 7.4. This same step has convergence rate 2.1 for the linear spline method. So, there may be a series of essential points being included in the interpolation scheme that vastly increases their accuracy.
# Question 1
---
a.
Re-arranging the term in the system of equations I obtain:
$$
\bar{f} = \begin{bmatrix}
z_{1}^{(i)} - z_{1}^{(i-1)} - hz_{2}^{(i)} \\
z_{2}^{(i)} - z_{2}^{(i-1)} + h \left( \frac{\gamma}{ml^{2}}z_{2}^{(i)} + \frac{g}{l} \sin z_{1}^{(i)} - \frac{A}{ml^{2}} \cos(\omega t_{i}) \right)
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix}
$$
The Jacobian of this system is:
$$
\begin{bmatrix}
1 & -h \\
\frac{gh}{l} \cos z_{1}^{(i)} & 1 + \frac{\gamma h}{ml^{2}}
\end{bmatrix}
$$
---
b1.
Using $h=0.01$ both of the Newton iterations take 3 steps. The residuals always begin with magnitude $10^{-2}$ and decrease in size as the Newton iterations proceed, likely because they are converging onto the correct answer.

As a sanity check, this confirms that the mass on the pendulum is moving downwards, towards the horizontal line, while increasing in velocity. This motion is exactly what we would expect from a physical pendulum.

---
b2.
With $h=0.001$, the Newton iterations now take just 2 steps to converge. This time, the initial residual is within the order of magnitude $10^{-3}$. Based on this correlation, I suspect the initial residual will be within a similar order of magnitude to $h$.

The general behaviour of the system is identical to the previous case with $h=0.01$. The ball moves less, because it is given less time to move, but the velocity reaches a similar value. This suggests that the velocity is updated late with the longer step size.

---
c.
The average number of Newton steps is 2.87, with the minimum and maximum number of steps being 2 and 3. This is strongly reflects the number of steps needed when there were just 2 steps taken as opposed to the 400 000 steps present in the full simulation. I conclude that the number of Newton steps is very consistent throughout the full simulation.

---
d.
- Comment on the number of Newton’s iterations (per timestep), and, when A = 0, on the relation between time of rest and γ , and, when A ≠ 0 and γ constant (e.g. γ = 4 or γ = 8), on the relation between final angle and A. (These comments are based on the numerical experiments, we do not expect a mathematical/physical explanation. The relations are approximate.)

The number of Newtons iterations consistently ranges between 2 and 3 for all trials. However, the number of iterations appears to strongly skew towards 2 or 3 depending on the trial. When $\gamma=0$, the Newtons iterations always skew to 3. The number of Newton iterations also skews towards 3 for $\gamma=2$ and $A=4$. I believe this is because the mass is moving quicker or more erratically. When $\gamma=0$, there is no damping force slowing down the mass, and when $A=4$, the driving force is strong enough to overpower the comparatively weak damping force $\gamma=2$.

When $A=0$, the time of rest gradually decreases as $\gamma$ increases. This tells me that, as the pendulum grows more damped, without a driving force, the mass quickly stops oscillating. When $A\neq 0$, the final angle increases as $A$ increases, and decreases as $\gamma$ increases. This makes sense, a stronger driving force and weaker damping force correspond with larger oscillation amplitudes in a physical pendulum.

- Make any comments on the two plots that you find interesting

For figure 1:

When $\gamma=0$, the effect from the driving force appears to cause the amplitude of oscillation for the mass to change over time. Since the driving force is also sinusoidal in nature, this likely corresponds with the normal modes of oscillation. That is, when the driving force is synced with the movement of the mass, the amplitude will tend to increase.

When the damping force is strong enough to subsume the driving force, however, the normal modes disappear. The mass continues to oscillate, because the driving force encourages it to do so, but the amplitude of oscillation approaches a limit over time.

For figure 2:

The two masses begin off sync, they do not initially oscillate at the same frequency. Over time, this changes due to the frequency of the driving force being identical for both pendulums. Additionally, the stronger driving force increases the amplitude of oscillation, velocity, and acceleration, but it does not affect the period length.
