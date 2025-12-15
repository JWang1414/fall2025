### Numerical Errors
Typically there are two errors in computations
1. Rounding errors. Based on how computers store values
2. Approximation errors. Issues with our approximations in functions and methods

Round off errors, for example, can result in something like $(x+y)+z$ and $x+(y+z)$ being different from each other. If you add a very small number to a very large number, for example, the truncation will cut off the end.

Something like removing the higher order terms from a Taylor series expansion, or using a forward Euler will result in approximation errors.

Python doesn't limit the number of digits than can be stored in an integer. For non-integer values, like floats, we have rounding after 16 significant digits.

The Error constant is defined to be $\sigma=C|x|$ where
- $x$ is the number we are representing
- $\sigma$ is the standard deviation of error
- $C$ is the fractional error for a single floating point number
Generally speaking, although the error is very small, we need to try and prevent it from propagating through our calculations.

Most notably, this interferes with numerical derivatives
$$
\frac{df}{dt} \approx \frac{f_{i+1} - f_{i}}{\Delta t}
$$
Where we are adding or subtracting two very similar numbers. For smaller and smaller $\Delta t$, we can get much larger errors.
### Approximation Errors
For numerical integration, we can use the intuition we have with Riemann sums to take numerous infinitely small sums for the area under the curve.

In each of the Riemann sums, we can use a Taylor series approximation of the function within that slice. Most of the time, we just go up to linear or quadratic approximations, but you can go quite high at the cost of speed.
### Error Estimation
The Euler-MacLaurin formulae help to estimate the error sizes. You can find that, for the trapezoidal rule, it is accurate up to and including terms proportional to $h$. The approximation of error is,
$$
\epsilon = \frac{h^{2}[f'(a)-f'(b)]}{12} + H.O.T.
$$
And for the Simpson's rule,
$$
\epsilon = \frac{h^{4}[f'''(a)-f'''(b)]}{180} + H.O.T.
$$
We call the trapezoid rule a 1st-order integration rule, and the Simpson's rule a 3rd-order integration rule, because they are accurate up to and including terms proportional to $h$ and $h^{3}$

What if you don't know the derivatives? Well, if you know the error of the order, there is a way. For the trapezoid rule, for example, the error has order $h^{2}$.

Choose $N$ intervals, and compute $I_{N}(a, b)$. You know,
$$
I(a, b) = I_{N}(a, b) + Ch^{2}
$$
Where we are trying to solve for $C$. Compute $I_{2N}(a, b)$, and we know that,
$$
I(a, b) = I_{2N}(a, b) + C \left( \frac{h}{2} \right)^{2}
$$
But $C$ does not change between the two. Equate the two expressions to find that,
$$
\frac{I_{2N}(a, b) - I_{N}(a, b)}{h^{2}} = \frac{3}{4} C
$$
And now we have an approximate expression to solve for $C$.