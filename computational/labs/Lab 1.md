### Question 1
---
a.
The given set of equations is:
$$
\frac{dx}{dt} = v_{x} \qquad \frac{dy}{dt} = v_{y}
$$
$$
\frac{dv_{x}}{dt} = -\frac{GM_{S}x}{r^{3}} \qquad \frac{dv_{y}}{dt} = -\frac{GM_{S}y}{r^{3}}
$$
Apply the numerical approximation to the derivatives:
$$
\frac{dx}{dt} \approx \frac{\Delta x}{\Delta t} = \frac{x_{i+1} - x_{i}}{\Delta t} =v_{x} \implies x_{i+1} = x_{i} + v_{x} \Delta t
$$
And the analogues for the other equations are:
$$
\begin{align}
y_{i+1} & = y_{i} + v_{y}\Delta t \\
v_{x(i+1)} & = v_{x(i)} - \frac{GM_{S}x_{i}}{r^{3}}\Delta t \\
v_{y(i+1)} & = v_{y(i)} - \frac{GM_{S}y_{i}}{r^{3}}\Delta t
\end{align}
$$
---
b.
Some sample "pseudocode" for the Euler-Cromer method
```python
# Define relevant constants
# Define initial values
# While the current time is less than the simulation time,
	# Calculate the velocity of the planet
	# Calculate the position of the planet
	# Save the velocity and position values onto a list
# Draw plots. Including velocity (v_x and v_y) as a function of time, and the orbit (y as a function of x) in space
```
---
Other parts of this question have been done in a Python file elsewhere

### Question 2
