# Question 1
---
a.
Since we are generating spherical coordinates, the ranges of $\theta$ and $\phi$ should have the same representations. So, $\theta \in[0, \pi]$ and $\phi \in[0, 2\pi]$. Along these two intervals, the distributions $p_{1}$ and $p_{2}$ integrate to:
$$
\int_{0}^{\pi} p_{1}(\theta) \, d\theta = \int_{0}^{\pi} \frac{\sin\theta}{2} \, d\theta = -\frac{1}{2} \left[ \cos\theta \right] ^{\pi}_{0} = -\frac{1}{2} (-1-1) = 1
$$
$$
\int_{0}^{2\pi} p_{2}(\phi) \, d\phi = \frac{1}{2\pi} \int_{0}^{2\pi} d\phi = \frac{1}{2\pi} (2\pi) = 1
$$
Therefore both distributions are correctly normalized. To transform a random number $z$ in $[0, 1)$ to our desired probability distribution, we must solve:
$$
z = \int_{0}^{x(z)} p(x') \, dx'
$$
Where $p$ is the probability distribution, and $x(z)$ is the function with the distribution we want. For $p_{1}$ and $p_{2}$ the distributions are:
$$
z = \int_{0}^{\theta(z)} p_{1}(\theta') \, d\theta' = \frac{1}{2} \int_{0}^{\theta(z)} \sin\theta' \, d\theta' = \frac{1}{2} (1 - \cos\theta)
$$
$$
z = \int_{0}^{\phi(z)} p_{2}(\phi') \, d\phi' = \frac{1}{2\pi} \int_{0}^{\phi(z)} d\phi' = \frac{\phi}{2\pi}
$$
Invert these functions to solve for $\theta$ and $\phi$ as a function of $z$ to find:
$$
\theta(z) = \arccos(1-2z) \qquad \phi(z) = 2\pi z
$$
# Question 3
---
a.
To evaluate the integral:
$$
\int_{0}^{1} \frac{x^{-1/2}}{1+e^{ x }} \, dx
$$
We will define the weight function $w(x)$ and associated probability distribution function $p(x)$:
$$
w(x) = x^{-1/2} \qquad p(x) = \frac{1}{2\sqrt{ x }}
$$
The use of the Monte Carlo importance sampling method calls for us to compute the summation:
$$
I \approx \frac{1}{N} \sum_{i=1}^{N} \frac{f(x_{i})}{w(x_{i})} \int_{a}^{b} w(x) \, dx
$$
Where $N$ is the number of sample points, and the interval runs from $a$ to $b$. The points $x_{i}$ are the points randomly drawn according to the probability distribution function $p(x)$.

The definite integral of the weight function on this interval is:
$$
\int_{0}^{1} w(x) \, dx = \int_{0}^{1} x^{-1/2} \, dx = 2\sqrt{ x } \big|^1_{0} = 2
$$
And the transformation function according to the probability distribution function is:
$$
z = \int_{0}^{x(z)} p(x) \, dx = \frac{1}{2} \int_{0}^{x} \frac{1}{\sqrt{ x' }} \, dx' = \frac{1}{2} (2\sqrt{ x }) = \sqrt{ x }
$$
Solve for $x(z)$ by inverting $z$,
$$
z=\sqrt{ x } \implies x(z) = z^{2}
$$
The summation to compute for this problem is therefore:
$$
I \approx \frac{2}{N} \sum_{i=1}^{N} \frac{1}{1+e^{ x_{i} }}
$$
$$
I = (b-a) \left< f \right> \approx \frac{b-a}{N} \sum_{i=1}^{N} f(x_{i})
$$
$$
\int_{0}^{1} \frac{x^{-1/2}}{1+e^{ x }} \, dx = 0.838933
$$




---
b.
Now, we turn our attention to the integral:
$$
\int_{0}^{10} e^{ -2\lvert x-5 \rvert  } \, dx
$$



$$
w(x) = p(x) = \frac{1}{\sqrt{ 2\pi }} e^{ -(x-5)^{2}/2 }
$$
Compute the integral for the weight function:
$$
\frac{1}{\sqrt{ 2\pi }} \int_{0}^{10} e^{ -(x-5)^{2}/2 } \, dx = \frac{1}{\sqrt{ 2\pi }} \left[ \sqrt{ 2\pi } \text{ erf}\left( \frac{5}{\sqrt{ 2 }} \right) \right] = \text{erf}\left( \frac{5}{\sqrt{ 2 }} \right)
$$
Instead of solving for a probability distribution function, I will instead use `np.random.normal` to sample from a normal function. $p(x)$ has a mean of 5, and standard deviation 1.

The integral to solve is therefore:
$$
I \approx \frac{\sqrt{ 2\pi }}{N} \text{erf}\left( \frac{5}{\sqrt{ 2 }} \right) \sum_{i=1}^{N} \exp \left[ \frac{(x-5)^{2}}{2} - 2\lvert x-5 \rvert  \right]
$$
$$
\int_{0}^{10} e^{ -2\lvert x-5 \rvert  } \, dx = 1 - \frac{1}{e^{ 10 }} \approx 0.999955
$$
# Question 2
$$
I(\mu) \approx (0.4 + 0.6\mu)I_{1}
$$
Photons will be released at some angle $\theta$, and then scatter into some optical depth $\tau_{i+1}$, for step $i$. The width of the photosphere is $\tau _\text{max}$. The optical depth for each step is sampling from $\tau=-\log \xi$, where $\xi$ is a random number from 0 to 1, and the directional cosine will be taken as $\mu=\cos\theta$.
$$
N(\mu) \, d\mu \propto I(\mu)\mu \, d\mu \implies \frac{N(\mu)}{\mu} \, d\mu \propto I(\mu) \, d\mu
$$