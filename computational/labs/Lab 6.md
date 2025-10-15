### Question 1
---
ai.
$$
F_{f} = -\alpha \dot{x}
$$
$$
F_{s} = -\beta e^{ -\dot{x} / v_{f} }
$$
Give a brief physical interpretation for $\beta$ and $v_{f}$
- $\beta$ controls the magnitude of the static friction at $\dot{x}=0$
- $v_{f}$ controls the rate of decay of the static friction as $\dot{x}$ increases

Show that when $\dot{x}<v_{f}$ we require $\beta>\alpha v_{f}$ for the magnitude of the total friction to decay when $\dot{x}$ increases from zero.
- Note that $v_{f}$ largely for the physical interpretation for the friction. When $\dot{x}>v_{f}$, $F_{f}$ dominates, but $F_{s}$ dominates otherwise.

Why do we want this property?
- We are plotting the static friction. The static friction is 0 once our mass begins moving, when $\dot{x}>0$. Ideally, our function also decays to zero as quickly as possible at this point



The magnitude of the total frictional force is,
$$
\left| F(\dot{x}) \right| = \left| F_{f}(\dot{x}) + F_{s}(\dot{x}) \right| = \left| -\alpha \dot{x} - \beta e^{ -\dot{x}/v_{f} } \right|
$$
Which is valid for $\dot{x}>0$.
$$
\begin{align}
\frac{d}{dx} \left| F \right|  & = \frac{d}{dx} (\alpha x + \beta e^{ -x/v_{f} }) \\
 & = \alpha - \frac{\beta}{v_{f}} e^{ -x/v_{f} }
\end{align}
$$
We require $|F|<0$ when $x=0$,
$$
x=0 \implies \alpha - \frac{\beta}{v_{f}}e^{ -x/v_{f} } = \alpha - \frac{\beta}{v_{f}}
$$
Solve for $\beta$ when $|F|<0$
$$
\alpha -  \frac{\beta}{v_{f}} < 0  \implies \beta > \alpha v_{f}
$$
- This doesn't use the property that $\dot{x}<v_{f}$, I have no clue why it's relevant
---
aii.
Equation 16 is the correction for the static friction,
$$
F_{s} = - \beta e^{ -\dot{x}/v_{f} }
$$
In this function, when $\dot{x}<0$, $F_{s}$ will approach $-\infty$. Physically, this means that if our mass is moving in the negative direction (to the left, perhaps) the static friction will rapidly increase, as opposed to disappear.

The correction we will apply is using exclusively the absolute value for the velocity. That is, use the updated equation,
$$
F_{s} = -\beta e^{ -|\dot{x}|/v_{f} }
$$
---
aiii.
The given equation of motion is,
$$
m \ddot{x} =-k(x-v_{p}t) - \alpha \ddot{x}
$$
Substituting in the quantities,
$$
\omega_{0}^{2} = \frac{k}{m} \qquad \tau=\frac{m}{\alpha} \qquad \gamma =\frac{\beta}{m}
$$
We obtain that,
$$
k = \omega_{0}^{2}m \qquad \alpha=\frac{m}{\tau} \qquad \beta = \gamma m
$$
So,
$$
m\ddot{x} = -\omega_{0}^{2} m(x-v_{p}t) - \frac{m}{\tau}\dot{x} \implies \ddot{x} =-\omega_{0}^{2} (x-v_{p}t) - \frac{\dot{x}}{\tau}
$$
And,
$$
\beta > \alpha v_{f} \implies \gamma m > \frac{m}{\tau} v_{f} \implies \gamma > \frac{v_{f}}{\tau}
$$
Substituting in the static friction, the equation of motion becomes,
$$
\ddot{x} = -\omega_{0}^{2} (x-v_{p}t) - \frac{\dot{x}}{\tau} - \gamma e^{ -\dot{x}/v_{f} }
$$
---
aiv.
When $\dot{x}=C$ we have $\ddot{x}=0$. Substitute this into the equation of motion to find that,
$$
0 = -\omega_{0}^{2} (x_{0}-v_{p}t) - \frac{C}{\tau} - \gamma e^{ -C/v_{f} }
$$
Solve for $x$
$$
\begin{align}
\frac{C}{\tau} + \gamma e^{ -C/v_{f} }  & = -\omega_{0}^{2} (x-v_{p}t) \\
-\frac{1}{\omega_{0}^{2}} \left( \frac{C}{\tau} + \gamma e^{ -C/v_{f} } \right)  & = x-v_{p}t \\
x & = v_{p}t -\frac{1}{\omega_{0}^{2}} \left( \frac{C}{\tau} + \gamma e^{ -C/v_{f} } \right)
\end{align}
$$
$x_{0}$ is the case when $t=0$,
$$
x_{0} = -\frac{1}{\omega_{0}^{2}} \left( \frac{C}{\tau} + \gamma e^{ -C/v_{f} } \right)
$$
Furthermore, to solve for $C$ we can differentiate this equation,
$$
\begin{align}
\frac{d}{dt} \left[ -\frac{1}{\omega_{0}^{2}} \left( \frac{C}{\tau} + \gamma e^{ -C/v_{f} } \right) \right] & = \frac{d}{dt} (x-v_{p}t) \\
0 & = \dot{x} - v_{p} \\
 v_{p} & = \dot{x}
\end{align}
$$
And, since $\dot{x}=C$ we find that $v_{p}=C$.

---
av.
Taking derivatives of the original equation, we find,
$$
\begin{align}
x & =x_{0} + Ct + u \\
\dot{x} & = C + \dot{u} \\
\ddot{x} & = \ddot{u}
\end{align}
$$
Recall that previously, we found that,
$$
v_{p}=C
$$
And so this becomes,
$$
\begin{align}
x & =x_{0} + v_{p}t + u \\
\dot{x} & = v_{p} + \dot{u} \\
\ddot{x} & = \ddot{u}
\end{align}
$$
Solve for $\ddot{u}$,
$$
\ddot{u} = \ddot{x} = -\omega_{0}^{2} (x-v_{p}t) - \frac{\dot{x}}{\tau} - \gamma e^{ -\dot{x}/v_{f} }
$$
Substitute in $x$ and $\dot{x}$,
$$
\ddot{u} = -\omega_{0}^{2} (\left[ x_{0} + v_{p}t + u \right] -v_{p}t) - \frac{v_{p} + \dot{u}}{\tau} - \gamma e^{ -(v_{p} + \dot{u})/v_{f} }
$$
Substitute in $x_{0}$,
$$
\ddot{u} = -\omega_{0}^{2} \left( \left[ \left( -\frac{1}{\omega_{0}^{2}} \left( \frac{v_{p}}{\tau} + \gamma e^{ -v_{p}/v_{f} } \right) \right)  + v_{p}t + u \right] -v_{p}t \right)  - \frac{v_{p} + \dot{u}}{\tau} - \gamma e^{ -(v_{p} + \dot{u})/v_{f} }
$$
Simplify this equation,
$$
-\omega_{0}^{2} \left[ -\frac{1}{\omega_{0}^{2}} \left( \frac{v_{p}}{\tau} + \gamma e^{ -v_{p}/v_{f} } \right) + v_{p}t + u - v_{p}t \right] - \frac{v_{p}+\dot{u}}{\tau} - \gamma e^{ -(v_{p}+\dot{u})/v_{f} }
$$
$$
\frac{v_{p}}{\tau} + \gamma e^{ -v_{p}/v_{f} } - \omega_{0}^{2} u - \frac{v_{p}+\dot{u}}{\tau} - \gamma e^{ -(v_{p}+\dot{u})/v_{f} }
$$
$$
\frac{\dot{u}}{\tau} - \omega_{0}^{2} u + \gamma e^{ -v_{p}/v_{f} } (1 - e^{ -\dot{u}/v_{f} })
$$
