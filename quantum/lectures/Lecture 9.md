### Helium Atom
Recall that within the helium atom we have 2 protons, 2 electrons, and some number of neutrons we will ignore. The Hamiltonian for this system is:
$$
\mathcal{H} = \frac{p_{1}^{2}}{2m} + \frac{p_{2}^{2}}{2m} - \frac{ze^{2}}{4\pi\epsilon_{0}} \left( \frac{1}{r_{1}} + \frac{1}{r_{2}} \right) + \frac{e^{2}}{4\pi\epsilon_{0}(\Delta r_{12})}
$$
Where $\Delta r_{12}$ is the distance between the two interacting electrons. For the Helium atom, $z=2$ because that is the number of protons.

Lets review the hydrogen atom before applying it to this system. The eigenstates of the hydrogen atoms are:
$$
\psi_{nlm}(r\theta, \phi) = R_{nl}(r) Y_{nl}(\theta, \phi)
$$
With the energies,
$$
E_{n} = -\frac{m}{2\hbar^{2}} \left( \frac{ze^{2}}{4\pi\epsilon_{0}} \right)^{2} \frac{1}{n^{2}} = -\frac{z^{2}}{2} \left( \frac{e^{2}}{4\pi\epsilon_{0}a} \right)
$$
Where we have defined the Bohr radius
$$
a = \frac{4\pi\epsilon_{0}\hbar^{2}}{me^{2}}
$$
For the hydrogen atom we have,
$$
E_{n}(z) = \frac{z^{2}}{n^{2}} E^{HY}_{1}
$$
- This refers to the ground state energy of hydrogen
The ground state of hydrogen is,
$$
\psi_{100} (r, \theta, \phi) = \left( \frac{z^{3}}{\pi a^{3}} \right)^{1/2} e^{ -zr/a }
$$
Going back to the helium atom, lets try solving the problem after dropping the electron-electron interaction. Then, we have,
$$
\mathcal{H} = H_{1} + H_{2}
$$
Where both $H_{1}$ and $H_{2}$ are hydrogenic Hamiltonians. Furthermore, we expect the energies here to be lower because,
$$
V_{e e} = \frac{e^{2}}{4\pi\epsilon_{0} \Delta r_{12}} \implies \left< V_{e e} \right> >0
$$
The ground state of this system is simply,
$$
\min(H_{1}) + \min(H_{2}) = \frac{z^{2}}{n^{2}} E_{1}^{HY} + \frac{z^{2}}{n^{2}} E_{1}^{HY} = 4 E_{1}^{HY} + 4E_{1}^{HY} = 8E_{1}^{HY} \approx -108\text{ eV}
$$
Because we have thrown away a small part of the Hamiltonian we expect to be positive, this, in a sense, functions as a lower bound on the ground state of helium.

Experimentally, the energy of the ground state of helium is somewhere within -79 eV. The mismatch between the -108 eV and this result is around the amount of energy it takes to put two electrons within the Bohr radius of each other.
- This confirms that the process we have just completely makes sense, and checks out in experiments

Now, lets apply the variational method to see if we can find an upper bound. We will try to choose a state similar to the ground states of hydrogen,
$$
\Psi _\text{var} = (\vec{r}_{1}, \vec{r}_{2}, \sigma_{1}, \sigma_{2}) = \psi(\vec{r}_{1}) \psi(\vec{r}_{2}) \left( \frac{1}{\sqrt{ 2 }} \ket{\uparrow_{1} \downarrow_{2} - \uparrow_{2} \downarrow_{1}}  \right)
$$
- Where $\sigma_{i}$ are the spins $m$ for each atom (spin down or up)

Note that, when computing the expectation value for the Hamiltonian, we can drop the spin ket included here,
$$
\bra{\psi _\text{vec}} H \ket{\psi _\text{var}}
$$
For both of the functions we have chosen, lets make $z$ a variational parameter. And therefore, copying from the hydrogen atom, we have,
$$
\psi(\vec{r}_{i}) = \left( \frac{z^{3}}{\pi a^{3}} \right)^{1/2} e^{ -zr_{i}/a }
$$
Now, to compute the expectation value, we should split the Hamiltonian into the two parts we defined, and compute them explicitely,
$$
\int \int \psi^*(\vec{r}_{1}) \psi^*(\vec{r}_{2}) H_{1} \psi(\vec{r}_{2}) \psi(\vec{r}_{1}) \, dr_{1}  \, dr_{2}
$$
However, because the Hamiltonian here is $H_{1}$, $\psi(\vec{r}_{2})$ commutes with it, and cancels out into 1. The result becomes,
$$
\int \psi^*(\vec{r}_{1}) H_{1} \psi(\vec{r}_{1}) \, dr_{1} = z^{2} E_{1}^{HY} + \frac{(z-2)e^{2}}{4\pi\epsilon_{0}} \left( \frac{z}{a} \right)
$$
Where the first part of this result arises because we are using the eigenstates of the hydrogen atom, and the Hamiltonian is also for the hydrogen atom.

For the helium atom, we can multiply our result by 2, and then compute the expectation value of the Coulomb interaction $\left< V_{e e} \right>$,
$$
\left< V_{e e} \right> = \int \frac{e^{2}}{4\pi\epsilon_{0} |\vec{r}_{1}-\vec{r}_{2}|}\left| \psi(r_{1}) \right|^{2} \left| \psi(r_{2}) \right| ^{2}  \, d\vec{r}_{1} d\vec{r}_{2}
$$
This computation is long, but we eventually find that it is,
$$
\left< V_{e e} \right> = \frac{5e^{2}z}{32\pi\epsilon_{0}a}
$$
Plug this into the variational energy to find,
$$
E_\text{var} (z) = 2z^{2} E_{1}^{HY} + \frac{2(z-2)e^{2}}{4\pi\epsilon_{0}} \left( \frac{z}{a} \right) + \frac{5e^{2}z}{32\pi\epsilon_{0}a} = \left[ 2z^{2} - 4z(z-2) - \frac{5}{4}z \right] E_{1}^{HY}
$$
Now, we just need to optimize for $z$,
$$
\frac{ \partial E_\text{var} }{ \partial z } = 0 \implies z_\text{opt} = \frac{27}{16} \approx 1.69
$$
Plug this back into the variational energy to find the upper-bound,
$$
E_\text{var} (z_\text{opt}) \approx -77.5 \text{ eV}
$$
