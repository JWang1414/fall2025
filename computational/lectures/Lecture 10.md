### Psuedo-random Number Generators
Computers cannot generate random numbers, so we need to find versions that are close. Commons methods are: using system time, and "Mersenne twister"

We can try to determine if something is random with pairwise correlations
$$
\epsilon(N, n) = \frac{1}{N} \sum_{i=1}^{N} x_{1} x_{i+n} - \mathbf{E}[x^{2}]
$$
For $N$ number of data points, $n$ correlation distance, and $\mathbf{E}[X]$ is the expected value of $X$.

$k$th moment of sequence of $N$ elements
$$
\mu(N, k) = \mathbf{E}[x^{k}]
$$
We would like the moments of our random number distributions have desired properties.

We can also test for overlapping permutations. For example, for the orders of 5 random numbers, there should be $5!$ possible permutations, and each of them should occur with equal probability.
### Linear Congruential Generator
Sequences of numbers produced by a PRNG that are reproducible if you start with the same seed.

Generally, these are best used to get numbers quickly, and for testing (you can keep using the same seed).
### Non-Uniform Distributions
Consider some source of random floats $z$ with the probability density $q(z)$. For a uniform distribution, $q(z)=1$ because the probably for anything to be chosen is the same.

Consider some transformation of $z$ into a new variable $x$ using $x=x(z)$. Clearly, $x$ is another random number, but we will use some other probability distribution $p(x)$.

The probability of generating a number from $x$ to $x+dx$ and $z$ to $z+dz$ must be equal:
$$
p(x)\, dx = q(z) \, dz
$$
Where we are interesting in solve for a $x(z)$ with the distribution we want. This can be done with the integral:
$$
z = \int_{0}^{x(z)} p(x') \, dx'
$$
However, sometimes it is not so easy to solve for $x(z)$.
### Monte Carlo Integration
1. Good for pathological functions and fast-varying functions
2. Much faster for multi-dimensional integrals
3. Easier to implement for complicated domains
#### Hit-or-Miss MC
If your function fits inside a finite region where we want to integrate from $x=0$ to $x=2$. Define the area of the box as $A$.
1. Randomly pick $N$ locations $(x, y)$ inside the box
2. Count the number of locations that are in the shaded region
3. The fraction of points inside the shaded region is $k /N$, which approximates the probability $p$
Now, using $p$ solve for the integral $I$
$$
P = \frac{I}{A} \approx \frac{k}{N} \implies I \approx \frac{kA}{N}
$$
The expected error for this method is,
$$
\sigma = \sqrt{ \frac{(A-I)I}{N} }
$$
Which is within the range of $N^{-1/2}$. Comparatively slow to the trapezoid and Simpson's rule $N^{-2}$ and $N-4$, respectively.
- Only use MC integration if you absolutely have to
#### Mean value MC
Use the definition of the average/mean value
$$
I = \int_{a}^{b} f(x) \, dx \qquad \left< f \right> = \frac{1}{b-a} \int_{a}^{b} f(x) \, dx
$$
Therefore,
$$
I = (b-a) \left< f \right>
$$
Estimate $\left< f \right>$ using random numbers:
$$
\left< f \right> \approx \frac{1}{N} \sum_{i=1}^{N} f(x_{i}) \implies I \approx \frac{b-a}{N} \sum_{i=1}^{N} f(x_{i})
$$
Here, we pick $x$, for the hit-or-miss method we use $(x, y)$.

The error in this method is,
$$
\sigma = (b-a) \sqrt{ \frac{\left< f^{2} \right> -\left< f \right> ^{2}}{N} }
$$
#### Importance Sampling MC
Use when your integrand contains a divergence. Essentially, you want to place more points where the integrand is large, but give less weight to points in densely-populated regions.

The weight function is always:
$$
I = \int_{a}^{b} f(x) \, dx = \left< \frac{f(x)}{w(x)} \right> \int_{a}^{b} w(x) \, dx
$$
Where the angle brackets define the weighted average $\left< X \right>_{w}$, the average of $X$ over a set of points that sample important regions more frequency according to $w$.

Generally after choosing a weight function, the non-uniform distribution is,
$$
p(x) = \frac{w(x)}{\int_{a}^{b} w(x) \, dx }
$$
The expected error using this method is,
$$
\sigma = \sqrt{ \frac{\left< f^{2} \right> -\left< f \right> ^{2}}{N} } \int_{a}^{b} w(x) \, dx
$$
Which, just like the rest of the MC method, varies as $N^{-1/2}$
