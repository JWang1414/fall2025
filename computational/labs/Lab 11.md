# Question 4
Using the Ising model, we created a Markov chain Monte Carlo simulation of a $20\times 20$ lattice of dipoles for 100000 steps. Importantly, because the spins in the Ising model reduce to scalars, the dot products typically required to determine the energy in the system simplify into point multiplication. The energy in the system can therefore be determined by:
$$
E = - J \sum_{\left< ij \right> } s_{i}s_{j}
$$
Where $J$ is a positive interaction constant, and $\left< ij \right>$ indicates a sum over pairs $i$, $j$ that are adjacent on the lattice.

The magnetization, on the other hand, is:
$$
M = \sum_{i} s_{i}
$$
$$
\text{Probability} = \min\left\{  1, \exp \left( - \frac{E_\text{new} - E_\text{old}}{k_{B}T} \right)   \right\}
$$
Where $E_\text{new}$ and $E_\text{old}$ are the energies before and after a flip, $k_{B}$ is the Boltzmann constant, and $T$ is the temperature.
# Question 2
Our simulation was run for $N=30$ monomers, interaction energy $\epsilon=-5$, temperatures $T=0.5, 1.5, 5$ for $10^{5}$ steps.
# Question 1
Lets say we have a cubic box of side length $L$ with an ideal gas of $N$ atoms inside. If we model this cube as an infinite square well, then the energy of each particle inside is:
$$
E(n_{x}, n_{y}, n_{z}) = \frac{\pi^{2}\hbar^{2}}{2mL^{2}} (n^{2}_{x} + n^{2}_{y} + n^{2}_{z})
$$
Where $n_{x}, n_{y}, n_{z}\in \mathbb{N}$ are the quantum numbers for the system. In an ideal gas, the particles do not interact, so the total energy is simply the sum of the energies of the individual particles:
$$
E = \sum_{i=1}^{N} E(n^{(i)}_{x}, n^{(i)}_{y}, n^{(i)}_{z})
$$
Where $n^{(i)}_{x}$ is the value of the quantum number $n_{x}$ of the $i$th atom. To perform a Monte Carlo simulation of this gas, we will suppose that, each step, one random particle can move to one of the six possible states where $n_{x}$, $n_{y}$, or $n_{z}$ fluctuates by $\pm 1$. In this case, the change in energy each step simplifies into:
$$
\begin{align}
\Delta E & = \frac{\pi^{2}\hbar^{2}}{2mL^{2}} \left[ (n_{x}\pm1)^{2} + n^{2}_{y} + n^{2}_{z} \right] - \frac{\pi^{2}\hbar^{2}}{2mL^{2}} \left[ n^{2}_{x} + n^{2}_{y} + n^{2}_{z} \right]  \\
 & = \frac{\pi^{2}\hbar^{2}}{2mL^{2}} (\pm 2n_{x}+1)
\end{align}
$$
$n_{x}$ has been used as an example here, but the result is the same for each value. Our simulation will be done using the Markov chain method using $N=1000$ particles, $k_{B}T=10$, and $m=\hbar=L=1$. The initial state of the box will set $n_{x}=n_{y}=n_{z}=1$ for all the particles.

The heat capacity for this system can be estimated with $\Delta E /\Delta T$ where $\Delta E$ is the change in energy and $\Delta T$ is the change in temperature. To determine how the energy changes as a function of time, our simulation will be run for $k_{B}T=10, 40, 100, 400, 1200, 1600$. In order to make sure the system would reach equilibrium in each case, the number of steps was multiplied by 1500 each time the temperature increased. Equilibrium was verified visually, by plotting the data for each temperature.

In addition to computing the total energy at equilibrium, we are also interested in the average $n$ for the system:
$$
\bar{n} \approx \frac{\sum_{n}f(e_{n})n}{\sum_{n}f(e_{n})}
$$
Where $f(e_{n})$ is the frequency for some energy $e_{n}$
# Question 3
Assuming that the location of the cities is chosen at random, the total distance travelled by the salesman over the whole tour is:
$$
D = \sum_{i=0}^{n-1} \left| \vec{r}_{i+1} - \vec{r}_{i} \right|
$$
Where the position of city $i$ is $\vec{r}_{i}=(x_{i}, y_{i})$.

Each move in the Markov chain is one swap of two cities in the tour. We begin with an initial tour, and then repeatedly swap cities in an attempt to final the global minimum $D$. The probability a swap is accepted is:
$$
\text{Probability} = \min\left\{  1, \exp \left( D_\text{old} - D_\text{new} \right)   \right\}
$$
Where $D_\text{new}$ and $D_\text{old}$ are the distances before and after the swap. Notice that, if the swap shortens the distance of the tour, it is always accepted, but if it lengthens the tour, it is accepted with a lower probability.

The cooling function for simulated annealing in this system is the exponential:
$$
T = T_{0} e^{ -t/\tau }
$$
Where $T_{0}$ is the initial "temperature" in the system, and $\tau$ is a time constant which controls how quickly the optimization cools down. By default, our simulation uses $T_{0}=10$, and $\tau=10^{4}$. To prevent the program from running too long, it will prematurely stop itself once the temperature has dipped below $T_\text{min}=10^{-4}$.

Specifically, for this salesman problem we will attempt to find the shortest path between 25 random points, which will remain fixed for the duration of this experiment.

Computing the minimum distance using the default simulated annealed parameters, the shortest tour we found over the course of 5 trials was 4.14 units long, with a standard deviation of 0.23. The longest tour was 4.76 units long. Additionally, we find that if we increase $\tau$, or slow down the cooling, the tour length is more likely to be shorter, but the program will run substantially longer. That is, for larger $\tau$ the probability of finding the global minimum of a function is greater, but the runtime and resource usage also increases. The opposite is true if we instead choose to decrease $\tau$.

Provided the function,
$$
f(x, y) = x^{2} - \cos(4\pi x) + (y-1)^{2}
$$
We are interested in solving for the global minimum with simulated annealing. Analytically, the global minimum for this function is at $(x, y)=(0, 1)$.

To setup the Markov chain, we begin at some point like $(2, 2)$, then, shift the location by some $(x, y)\to (x+\delta x, y+\delta y)$ where $\delta x$ and $\delta y$ are random numbers drawn from a Gaussian distribution.

We used the cooling parameters $T_{0}=10$, $\tau=10^{4}$, and $T_\text{min}=10^{-7}$.

Now, we turn our attention to the more complicated function:
$$
f(x, y) = \cos x + \cos(\sqrt{ 2 }x) + \cos(\sqrt{ 3 }x) + (y-1)^{2}
$$
We are interested in determining the global minimum in the range $0<x<50$, $-20<y<20$. The analytical global minimum is approximately $(16, 1)$.