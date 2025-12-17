# PYTHON BASICS AND PSEUDOCODE
- **Writing your own pseudocode\***
# NUMERICAL ERRORS AND NUMERICAL INTEGRATION
- **Questions involving how Python treats integers and floats**
- **Rounding errors**
	- Catastrophic cancellation
- **Approximation**
	- How they come up in simulations
	- How we fix them

- How we do numerical integration
	- Trapezoid rule and Simpson's rule
- **Finding the error in numerical integration**
# GAUSSIAN QUADRATURE AND NUMERICAL DERIVATIVES
- How Gaussian quadrature works
	- How are the weights and slices determined?
	- Why is it more accurate than Newton-Cotes?
- **Estimating error in Gaussian quadrature**

- How to compute derivatives
	- Forward difference, backward difference, central difference
- **Why is the central difference the most accurate?**
# SOLVING LINEAR AND NON-LINEAR EQUATIONS
- Gaussian elimination
- **LU-decomposition**
- Partial pivoting for small values
- QR-decomposition

- Relaxation
	- **Newton's method**
	- Secant method
- Bisection
	- **Golden ratio search**
# FOURIER SERIES AND FOURIER TRANSFORMS
- What is a Fourier transform, and how we compute them
- How to compute the coefficients for an (inverse) discrete Fourier transform
- **How FFTs work, and why they are fast**
	- Maybe how the first few steps are computed?
# ORDINARY DIFFERENTIAL EQUATIONS
- Euler's method
- RK2 and RK4
- Leapfrog method
	- Verlet method

- Adaptive time stepping
	- Modified midpoint method
	- Bulirsch-Stoer

- Shooting method for different boundary value problems
# PARTIAL DIFFERENTIAL EQUATIONS
- Classify PDEs
	- Canonical PDEs

- Jacobi relaxation method
	- Overrelaxation method
	- Gauss-Seidel method
- FTCS method
- **Von Neumann Stability Analysis\***
- Crank-Nicolson
	- Explicit and implicit methods
- Spectral methods
	- What do they do? When are they good/bad?
# RANDOM NUMBER GENERATION
- RNG doesn't exist, we use PRNG and Mersenne Twister
	- **How can we tell if something is random?**
	- Seeds
- Generating non-uniform distributions
	- **Determining the transformation function**

- Monte Carlo Integration
	- When is it good/bad?
	- Hit or Miss
	- Mean value
	- **Important sampling**
# MONTE CARLO SIMULATIONS
- Markov chain method
	- How we use it in statistical mechanics
	- Eg: Ising model
- Simulated annealing
	- How does it work? What is it best for?
	- Eg: travelling salesman
