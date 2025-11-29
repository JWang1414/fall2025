# Question 4
- Comment on the results, in particular, how the error of each interpolant behaves as the number of data points increases, and whether this behaviour agrees with what expected from theory.
- What do the unlabelled quantities represent?

Comments:
As one would expect, the error decreases as the number of points increases. There are more points that can be used to refine the interpolants, so they are more accurate to the original function

The error in the cubic interpolant approaches machine precision for 16k points.

The polynomial interpolant is better than the linear spline interpolant for 8, 16, and 32 points, but it is worse in all other cases.

The error in the polynomial increases at 64 points. This is presumably because, when there are so many points, the degree of the polynomial gets very high, and so oscillatory behaviour becomes unavoidable.

The unlabelled values in the second table indicate the tangential order of convergence. It is tangential because it shows the order of convergence after each step, as opposed to the whole scheme.

The order of convergence for the linear spline method is constant. I conclude the order of convergence for the linear spline method, for this function, is $\mathcal{O}(n^{2})$.

Removing the outliers (7.4, 0.0), the mean convergence rate for the cubic spline is 3.75, with a standard deviation 0.55. Including the outliers, the mean is 3.74 with standard deviation 1.73.

The convergence rate stops increasing for the cubic spline in the last step, because it is approaching machine precision and cannot get smaller.

Based on the frequency of values, the order of convergence for the cubic spline method appears to be around $\mathcal{O}(n^{4})$. However, there is a step where the order of convergence jumps to 7.4. This same step has convergence rate 2.1 for the linear spline method. So, there may be a series of essential points being included in the interpolation scheme that vastly increases their accuracy.
- Maybe the number of points around the edges grows high enough that the overall interpolation adjusts and improves
