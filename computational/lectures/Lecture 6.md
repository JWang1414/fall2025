Consider the ODEs with the given initial conditions,
$$
\frac{dx}{dt} = f(x, t) \qquad x(t=0)=x_{0}
$$
For higher order systems we might have more initial conditions,
$$
\frac{dx}{dt} = v, \frac{dv}{dt}=a, \frac{da}{dt} = f
$$
And so on.
### Euler Method
The familiar method of adding small increments to the initial condition decided by the ODE.

Has an error within the range of $\mathcal{O}(h^{2})$
### Runge-Kutta Method
Instead of evaluating the slope at $t$, we evaluate the slope at $t+h /2$. Afterwards, the familiar Euler method steps are applied.
$$
x(t+h) = x(t) + h f\left[ \left( x(t) + \frac{h}{2} f(x(t), t) \right) , \left( t+\frac{h}{2} \right)  \right]
$$
To program this method you would compute:
1. $k_{1}=hf(x, t)$ before $x(t+h /2)$
2. $k_{2}=hf(x + k_{1} /2 , t+ h /2)$
3. $x(t+h)=x(t)+k_{2}$

This second-order Runge-Kutta method has $\mathcal{O}(h^{3})$ step error and typically $\mathcal{O}(h^{2})$ global error.

However, we can further improve this using the fourth-order Runge-Kutta method. It is done by completing various Taylor expansions at points in the interval to obtain higher order approximations. The code is straight forward, but the algebra is not.

To program this method you would compute:
1. $k_{1}=hf(x, t)$
2. $k_{2}=hf\left[ (x + k_{1} /2), (t+h /2) \right]$
3. $k_{3}=hf\left[ (x+k_{2} /2), (t+h /2) \right]$
4. $k_{4}=hf(x+k_{3}, t+h)$
5. $x(t+h)=x(t)+(k_{1}+2k_{2}+2k_{3}+k_{4}) /6$

Runge-Kutta carries global $\mathcal{O}(h^{4})$ error
### Leap-frog Methods
The second-order Runge-Kutta method uses mid-point locations as a clutch to jump to $t+h$. The leap-frog methods uses each point as a mid-point.
$$
x(t+h) = x(t) + hf\left[ x+\frac{h}{2}f(x, t), t+\frac{h}{2} \right]
$$
$$
x\left( t+ \frac{3}{2}h \right) = x\left( t+\frac{h}{2} \right) + hf \left[ x(t+h), t+h \right]
$$
Notice that the first equation is the same as RK2, however, the second equation uses the information from the first mid-point to jump forward.

![[Pasted image 20251014122647.png]]
A comparison of the Runge-Kutta and leap-frog methods

Also has a $\mathcal{O}(h^{2})$ global error, same as RK2. The difference here is that it is time reversible. The time-stepping is reversible and therefore follows the conservation of energy.
### Verlet Method
Special case for two coupled ODEs, with the LHS and RHS having separated variables.
$$
\frac{d^{2}x}{dt^{2}} = \frac{F(x, t)}{m} \implies \frac{dx}{dt} = v, \frac{dv}{dt} = \frac{F(x, t)}{m}
$$
For this example, the Verlet method states that,
$$
x(t+h) = x(t) + hv \left( t+\frac{h}{2} \right)
$$
$$
v\left( t+\frac{3}{2}h \right) = v\left( t+\frac{h}{2} \right) + h \frac{F(x(x+t), t+h)}{m}
$$
