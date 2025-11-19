# Electromotive Force
Inside most substances, the current density $\vec{J}$ is proportional to the force per unit charge $\vec{f}$
$$
\vec{J} = \sigma \vec{f}
$$
Where $\sigma$ is the conductivity of the medium. The resistivity is called $\rho$. Inside perfect conductors, we have $\sigma=\infty$, and $\sigma=0$ inside perfect insulators.

In this course, the force on charges is done by electromagnetic forces, and so,
$$
\vec{J} = \sigma(\vec{E} + \vec{v} \times \vec{B}) \approx \sigma \vec{E}
$$
Where this approximation has been made because the velocity of the charges is often small. This equation is called *Ohm's law*.

The total current that flows from one electrode to another is,
$$
V=IR
$$
Which is the more familiar version of Ohm's law.

For steady currents and uniform conductivity,
$$
\nabla \cdot \vec{E} = \frac{1}{\sigma} \nabla \cdot \vec{J} =0
$$
So the charge density is zero, and any unbalanced charge resides on the surface. Something we have already derived.

The power delivered is:
$$
P = VI = I^{2}R
$$
Which is called the *Joule heating law*. It is measured in watts.
# Electromotive Force
Define the force on charge from the source as $\vec{f}_{s}$. Recall that $\vec{f}$ is the force per unit charge. The net effect from the source around a circuit is,
$$
\mathcal{E} \equiv \oint \vec{f}\cdot d\vec{l} = \oint \vec{f}_{s}\cdot d\vec{l}
$$
Where $\mathcal{E}$ is the *electromotive force* (EMF).

A motional EMF arises when a wire is moved through a magnetic field. The work done per unit charge in this case is equal to the EMF.

Define $\Phi$, the flux of $\vec{B}$ through the loop:
$$
\Phi \equiv \int \vec{B}\cdot d\vec{a}
$$
From which we find,
$$
\mathcal{E} = - \frac{d\Phi}{dt}
$$
Which is called the *flux rule* for motional EMF.
- Recall that we can use the right hand rule to determine the direction of flow.

Equation I took from an example in the textbook:
$$
\mathcal{E} = IR
$$
# Electromagnetic Induction
Faraday realized that a changing magnetic field induces an electric field. Specifically, this induced electric field is,
$$
\mathcal{E} = \oint \vec{E}\cdot d\vec{l} =- \frac{d\Phi}{dt} \implies \nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t }
$$
In particular, we use *Lenz' law* to determine the direction the current is moving on. It states that "nature abhors a change in flux". So, the magnetic field resulting from the induced current will *oppose* the changing field.

Notice that this is essentially an update to electrostatics. The divergence is still given by Gauss' law. However, if $\vec{E}$ is a pure Faraday field, than we have,
$$
\nabla \cdot \vec{E} =0 \qquad \nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t }
$$
Which is mathematically identical to magnetostatics. Because of this we can use the known formulae from there and apply it here,
$$
\vec{E} = -\frac{1}{4\pi} \frac{ \partial  }{ \partial t } \int \frac{\vec{B}\times \hat{r}}{r^{2}} \, d\tau \qquad \oint \vec{E}\cdot d\vec{l} = - \frac{d\Phi}{dt}
$$
- These equations, and Faraday's law, are valid only in the quasistatic regime
# Inductance
If a current runs though one loop, some of the field lines will go through a nearby loop, and so induce a current in that loop. This is called the *inductance*:
$$
\Phi_{2} = \int \vec{B}_{1}\cdot d\vec{a}_{2} = M_{21} I_{1}
$$
Where $M_{21}$ is a constant of proportionality. It is called the *mutual inductance*.

The Neumann formula reveals what this mutual inductance is:
$$
M_{21} = \frac{\mu_{0}}{4\pi} \oint \oint \frac{d\vec{l}_{1}\cdot d\vec{l}_{2}}{r}
$$
- $M_{21}$ is a purely geometrical quantity
- The mutual inductance is unchanged if loop 1 and 2 are swapped
$$
M_{21} = M_{12}
$$
Now, apply this to Faraday's law to find that,
$$
\mathcal{E} = - M \frac{dI_{1}}{dt}
$$
So, whenever the current in loop 1 changes, and induced current flows in loop 2.

This leads us to the idea of *self inductance*. A changing current will induce a current in itself.
$$
\mathcal{E} = -L \frac{dI}{dt}
$$
Where $L$ is called the *self-inductance*.

It is also often called the *back EMF* because it will oppose any change in current. Whenever you try to alter the current in wire, you must fight against it.
# Energy in Magnetic Fields
Here, we are interested in the work done against the back EMF. This is a recoverable amount of energy which you get back once the current is turned off. It can be regarded as the energy stored in the magnetic field.
$$
W = \frac{1}{2} LI^{2}
$$
From here it is possible to derive that,
$$
W = \frac{1}{2\mu_{0}} \int B^{2} \, d\tau
$$
Where this integral is taken over all space.
# Maxwell’s Equations
The correction to Ampere's law:
$$
\nabla \times \vec{B} = \mu_{0}\vec{J} + \mu_{0}\epsilon_{0} \frac{ \partial \vec{E} }{ \partial t }
$$
From which we can see that a changing electric field will also induce a magnetic field.

The extra term is called the displacement current:
$$
\vec{J}_{d} \equiv \epsilon_{0} \frac{ \partial \vec{E} }{ \partial t }
$$
In summary we have:
$$
\nabla \cdot \vec{E} = \frac{\rho}{\epsilon_{0}} \qquad \nabla \times \vec{E} + \frac{ \partial \vec{B} }{ \partial t } =0
$$
$$
\nabla \cdot \vec{B}=0 \qquad \nabla \times \vec{B} - \mu_{0}\epsilon_{0} \frac{ \partial \vec{E} }{ \partial t } = \mu_{0}\vec{J}
$$
The current density resulting from a changing polarization is:
$$
\vec{J}_{p} = \frac{ \partial \vec{P} }{ \partial t }
$$
The associated continuity equation is familiar:
$$
\nabla \cdot \vec{J}_{p} = - \frac{ \partial \rho_{b} }{ \partial t }
$$
Recall the displacement field and $\vec{H}$ from previous chapters. In terms of these versions, Maxwell's equations become:
$$
\nabla \cdot \vec{D} = \rho_{f} \qquad \nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t }
$$
$$
\nabla \cdot \vec{B} =0 \qquad \nabla \times \vec{H} = J_{f} + \frac{ \partial \vec{D} }{ \partial t }
$$
Which can be easier to work with in matter, because it is written in terms of the free charges, as opposed to all charge.

Recall that inside of linear media we have:
$$
\vec{P} = \epsilon_{0} \chi_{e} \vec{E} \qquad \vec{M} = \chi_{m}\vec{H}
$$
$$
\vec{D} = \epsilon \vec{E} \qquad \vec{H} = \frac{1}{\mu} \vec{B}
$$
Where $\vec{P}$ and $\vec{M}$ is the polarization and magnetization. $\epsilon$ and $\mu$ are the permittivity and the permeability. Furthermore, the displacement current is easy to represent in terms of the displacement field:
$$
\vec{J}_{d} \equiv \frac{ \partial \vec{D} }{ \partial t }
$$
# Boundary Conditions
The component of $\vec{D}$ perpendicular to the interface is discontinuous:
$$
D^{\perp}_\text{above} - D^{\perp}_\text{below} = \sigma_{f}
$$
$$
B^{\perp}_\text{above} - B^{\perp}_\text{below} =0
$$
The components of $\vec{E}$ parallel to the interface are continuous across the boundary:
$$
\vec{E}^{\parallel}_\text{above} - \vec{E}^{\parallel}_\text{below} =0
$$
$$
\vec{H}^{\parallel}_\text{above} - \vec{H}^{\parallel}_\text{below} = \vec{K}_{f} \times \hat{n}
$$
- There is a very cohesive list of boundary conditions written in this chapter (page 347), but I don't feel like writing them right now
