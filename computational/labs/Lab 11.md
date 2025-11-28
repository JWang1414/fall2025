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
