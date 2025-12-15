### Monte Carlo simulation in statistical mechanics
$$
\left< X \right> = \sum_{i=1}^{\text{ALL}} X_{i} P(E_{i}) \qquad P(E_{i}) = \frac{\exp \left[ -E_{i} / (k_{B}T) \right] }{Z} \qquad Z = \sum_{i=1}^{\text{All}} \exp \left[ -\frac{E_{i}}{k_{B}T} \right] 
$$
There is such an extreme number of terms in this system that it makes the most sense to use Monte Carlo to simulate it.

However, we need to figure out how to estimate $\left< X \right>$ and $Z$. We will use importance sampling, and Markov chain Monte Carlo, respectively.

There are a lot of states $P(E_{i})$ there are incredibly small ($E_{i}\gg k_{B}T$), and so we would like to use importance sampling so that the calculation is more accurate for the terms that are larger.
### Importance sampling for Stat. Mech.
We have:
$$
\left< X \right> = \sum_{i=1}^{N} X_{i} P(E_{i}) \approx \frac{1}{N} \sum_{k=1}^{N} \frac{X_{k}P(E_{i})}{w_{k}} \sum_{i=1}^{\text{All}} w_{i}
$$
Which actually ends up simplifying to:
$$
\left< X \right> \approx \frac{1}{N} \sum_{i=k}^{N} X_{k}
$$
Because we choose $P(E_{i})$ as the weight function. This is the mean value method, but the values $X_{k}$ are picked from a non-uniform distribution.
### Markov chain method
1. Choose a random state
2. Calculate the energy of that state $E_{i}$
3. Choose a transition to a new state $j$ uniformly at random from the allowed step
4. Calculate the energy of this new state $E_{j}$
5. Calculate the acceptance probability for the transition
$$
P_{a} = \begin{cases}
1 & E_{j} \leq E_{i} \\
\exp \left( -\frac{E_{j}-E_{i}}{k_{B}T} \right)  & E_{j}> E_{i}
\end{cases}
$$
6. Accept/reject the move
7. Measure the quantity $X$ in its current state, and store it
8. Repeat from step 2

Typically, given any initial state, the system will progressively evolve towards one where all states follow Boltzmann.
### Simulated annealing
Annealing comes from metal working. It's based on the idea of finding the optimal cooling rate for the product to be sturdy, as opposed to snapping from the change in temperature.

This method is good for finding global min/max in complicated systems.

Use the function $f$ the energy function, and then reduce the temperature in the system until the ground state is discovered
- Sometimes it can be wrong though. Especially if there are two min/max with similar energies
