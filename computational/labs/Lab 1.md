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
	# Save the velocity and position values onto a list (for plotting)
# Draw plots. Including velocity (v_x and v_y) as a function of time, and the orbit (y as a function of x) in space
```
---
Other parts of this question have been done in a Python file elsewhere

### Question 2
---
a.
```python
# Define the initial values for another planet (Jupiter in this case)
# While the current time is less than the simulation time
	# Calculate the velocity of Jupiter
	# Calculate the position of Jupiter
	# Calculate the velocity of Earth
	# Calculate the position of Earth
	# Save the velocity and position of all planets into a list
# Draw plots
```
Programming done on another file

---
b.
The increased mass of Jupiter destabilises Earth's orbit and flings it outside of the solar system.

---
c.
Work was done on another file

### Question 3
---
a.
```python
# Define an array of N Gaussian-distributed numbers between -5 and 5
# Use linspace to define bin edges from -5 to 5
# Define the histogram with a list of N zeroes
# Check each random number
	# Sort the random number into the correct bin
	# Add it to the bin
# Plot or print out the histogram for error checking
```
Our timing will begin at the point when we start sorting our numbers into the correct bins. We believe this to be valid because the time it takes to generate the numbers, and initialize the histogram to be inconsequential.

---
b.
