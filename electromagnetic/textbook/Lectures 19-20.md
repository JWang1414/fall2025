# The Continuity Equation
Recall that the charge in a volume $\mathcal{V}$ is,
$$
Q(t) = \int _{\mathcal{V}} \rho(\vec{r}, t) \, d\tau
$$
The local conservation of charge says:
$$
\frac{dQ}{dt} = - \oint_{\mathcal{S}} \vec{J}\cdot d\vec{a} \qquad \frac{ \partial \rho }{ \partial t } = \nabla \cdot \vec{J}
$$
Which essentially states that, if the amount of charge in some region changes, than it must have passed in or out through the surface.
- Note that both of these equations are equivalent

# Poynting’s Theorem
The total energy stored in electromagnetic fields, per unit volume, is:
$$
u = \frac{1}{2} \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}} B^{2} \right)
$$
The energy per unit time, per unit area, transported by the fields is called the Poynting vector:
$$
\vec{S} \equiv \frac{1}{\mu_{0}} \vec{E} \times \vec{B}
$$
$\vec{S}\cdot d\vec{a}$ is the energy per unit time crossing the infinitesimal surface $d\vec{a}$.

Poynting's Theorem:
$$
\frac{dW}{dt} = -\frac{d}{dt} \int _{\mathcal{V}} u \, d\tau - \oint_{\mathcal{S}}\vec{S}\cdot d\vec{a}
$$
> In words, Poynting's theorem states that the work done on the charges by the electromagnetic force is equal to the decrease in energy remaining in the fields, less the energy that flowed out through the surface.

If there is no work done on the charge in $\mathcal{V}$, like if $\mathcal{V}$ is a region of empty space, than we get:
$$
\frac{ \partial u }{ \partial t } = - \nabla \cdot \vec{S}
$$
Which is called the continuity equation for energy
# Maxwell’s Stress Tensor
The force per unit volume on the charges inside a volume $\mathcal{V}$ is:
$$
\begin{align}
\vec{f}  & =  \epsilon_{0} \left[ (\nabla \cdot \vec{E})\vec{E} + (\vec{E}\cdot \nabla)\vec{E} \right] + \frac{1}{\mu_{0}} \left[ (\nabla \cdot \vec{B})\vec{B} + (\vec{B}\cdot \nabla)\vec{B} \right] \\
 & - \frac{1}{2} \nabla \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}}B^{2} \right) - \epsilon_{0} \frac{ \partial  }{ \partial t } (\vec{E}\times \vec{B})
\end{align}
$$
Which can be simplified into:
$$
\vec{f} = \nabla \cdot \bar{T} - \epsilon_{0} \mu_{0} \frac{ \partial \vec{S} }{ \partial t }
$$
Where we have defined the new Maxwell Stress Tensor:
$$
T_{ij} \equiv \epsilon_{0} \left( E_{i}E_{j} - \frac{1}{2} \delta_{ij} E^{2} \right) + \frac{1}{\mu_{0}} \left( B_{i}B_{j} - \frac{1}{2} \delta_{ij} B^{2} \right)
$$
The indices $i$ and $j$ are the Cartesian coordinates $x$, $y$, and $z$.

In this way, the total magnetic force on the charges in a volume $\mathcal{V}$ can be expressed as,
$$
\vec{F} = \oint_{\mathcal{S}} \bar{T}\cdot d\vec{a} - \epsilon_{0} \mu_{0} \frac{d}{dt} \int _{\mathcal{V}} \vec{S} \, d\tau
$$
Notice that the second term will drop out in the static case.

Physically, $\bar{T}$ is the force per unit area, or *stress*, acting on a surface. $T_{ij}$ is the force per unit area in the $i$th direction acting on an element of surface oriented in the $j$th direction. The diagonal elements are *pressure*, and the off-diagonal elements are *shears*.
# Conservation of Momentum
If you apply Newton's second law, you can find that:
$$
\vec{p} = \mu_{0} \epsilon_{0} \int _{\mathcal{V}} \vec{S} \, d\tau
$$
Which can be interpreted as the momentum stored in fields. The momentum per unit time flowing in through the surface is therefore:
$$
\oint_{\mathcal{S}} \bar{T}\cdot d\vec{a}
$$
From this we have the conservation of momentum. If the mechanical momentum increases, than the field momentum decreases, and vice versa.

The momentum density in the fields is:
$$
\vec{g} = \mu_{0} \epsilon_{0} \vec{S} = \epsilon_{0} (\vec{E}\times \vec{B})
$$
If the mechanical momentum in $\mathcal{V}$ is constant, like in empty space, than:
$$
\frac{ \partial \vec{g} }{ \partial t } = \nabla \cdot \bar{T}
$$
This is the continuity equation for electromagnetic momentum.
# Angular Momentum
Define the angular momentum of the fields:
$$
\mathscr{l} = \vec{r}\times \vec{g} = \epsilon_{0} [\vec{r}\times(\vec{E}\times \vec{B})]
$$

Note that field energy doesn't obey the superposition principle.
- If you double the charge in a sphere, the field doubles, but the energy quadruples.
- This applied to the Poynting vector, momentum, angular momentum, and the stress tensor
# The Wave Equation
For a physical string, the wave equation is:
$$
\frac{ \partial^2 f }{ \partial z ^2 } = \frac{1}{v^{2}} \frac{ \partial^2 f }{ \partial t ^2 }
$$
Where the speed of propagation for the wave is:
- Recall that the wave equation is *linear*. The sum of two solutions is another solution
$$
v = \sqrt{ \frac{T}{\mu} }
$$
$T$ is the tension in the string, and $\mu$ is the mass per unit length.
# Sinusoidal Waves
$$
f(z, t) = A \cos[k(z-vt)+\delta]
$$
$A$ is the amplitude of this wave, and the argument in the cosine is called the phase. $\delta$ is called a phase constant.

When $z=vt-\delta /k$, the phase is zero. Define this to be the *central maximum*. $k$ is the *wave number*, and is defined to be:
$$
\lambda = \frac{2\pi}{k}
$$
The period of oscillation is:
$$
T = \frac{2\pi}{kv}
$$
Where $v$ is the wave speed. The frequency of oscillation is:
$$
f = \frac{1}{T} = \frac{kv}{2\pi} = \frac{v}{\lambda}
$$
And the angular frequency is:
$$
\omega = 2\pi f = kv
$$
A sinusoidal oscillation of wave number $k$ and angular frequency $\omega$ travelling to the right is written:
$$
f(z, t) = A \cos(kz-\omega t+\delta)
$$
Swapping the sign of $k$ changes the direction the wave moves in. 
![[Pasted image 20251123115727.png]]
- I have included this figure to show an interpretation of $\delta /k$. This wave is moving towards the left, and so it different from the one written above

In complex notation, the wave can also be written like:
$$
f(z, t) = \mathrm{Re} \left\{ A \exp \left( i(kz-\omega t+\delta) \right)  \right\}
$$
Common notation is to work with the complex wave function:
$$
\tilde{f}(z, t) \equiv \tilde{A} \exp \left[ i(kz-\omega t) \right]
$$
And then take the real version of the wave afterwards:
$$
\tilde{A} \equiv A e^{ i\delta } \qquad f(z, t) = \mathrm{Re} \left[ \tilde{f}(z, t) \right]
$$
Complex notation helps to add waves, but not multiply them:
$$
\mathrm{Re} \{ \tilde{f}_{1} + \tilde{f}_{2} \} = \mathrm{Re}\{ \tilde{f}_{1} \} + \mathrm{Re}\{ \tilde{f}_{2} \}
$$
$$
\mathrm{Re}\{ \tilde{f}_{1} \cdot \tilde{f}_{2} \} \neq \mathrm{Re}\{ \tilde{f}_{1} \} \cdot \mathrm{Re} \{ \tilde{f}_{2} \}
$$
Any wave can be expressed as the linear combination of sinusoidal wave:
$$
\tilde{f}(z, t) = \int_{-\infty}^{\infty} \tilde{A}(k) e^{ i(kx-\omega t) } \, dk
$$
Where we can obtain $\tilde{A}(k)$ using Fourier transforms.
# Boundary Conditions: Reflection and Transmission
Lets say we have two string tied together with difference $\mu$. Then, at the intersection between the two, we will have an incident wave, reflected wave, and a transmitted wave.
- The incident wave will split into the other two waves

The wave velocity will change from one string to another, so the wavelength and wave numbers will follow suit:
$$
\frac{\lambda_{1}}{\lambda_{2}} = \frac{k_{2}}{k_{1}} = \frac{v_{1}}{v_{2}}
$$
The wave function and the complex wave function must be continuous at the break, with a continuous derivative:
$$
\tilde{f}(0^{-}, t) = \tilde{f}(0^{+}, t) \qquad \frac{ \partial \tilde{f} }{ \partial z } \bigg|_{0^{-}} = \frac{ \partial \tilde{f} }{ \partial z } \bigg|_{0^{+}}
$$
Assuming the knot itself has negligible mass.

If the second string is infinitely massive, for example, than the first string is essentially tied to an immovable post, and so everything gets reflected.
# Polarization
If the displacement is perpendicular to the direction of propagation, the waves are *transverse* waves

If the waves are parallel (like compression waves) than the waves are *longitudinal* waves.

The *polarization vector* $\hat{n}$ defined the plane of vibration. For transverse waves, $\hat{n}$ is perpendicular to the direction of propagation:
$$
\hat{n}\cdot \hat{z} =0
$$
And it is defined in terms of the *polarization angle* $\theta$
$$
\hat{n} = \cos\theta \hat{x} + \sin\theta \hat{y}
$$
# The Wave Equation for $\vec{E}$ and $\vec{B}$
In free space with no charge and current, we have:
$$
\nabla^{2} \vec{E} = \mu_{0}\epsilon_{0} \frac{ \partial^2 \vec{E} }{ \partial t ^2 } \qquad \nabla^{2}\vec{B} = \mu_{0}\epsilon_{0} \frac{ \partial^2 \vec{B} }{ \partial t ^2 }
$$
Each component of $\vec{E}$ and $\vec{B}$ satisfy the 3D wave equation:
$$
\nabla^{2}f = \frac{1}{v^{2}} \frac{ \partial ^2 f }{ \partial t ^2 }
$$
If you solve for $v$ here, you will discover the speed of light:
$$
c = \frac{1}{\sqrt{ \epsilon_{0} \mu_{0} }}
$$
# Monochromatic Plane Waves
In this regime, we confine our attention to sinusoidal waves of frequency $\omega$. Called monochromatic because different frequencies correspond to different colours.

We are interested in waves of the form:
$$
\tilde{E}(z, t) = \tilde{E}_{0} e^{ i(kz-\omega t) }
$$
Where $\tilde{E}_{0}$ is a complex amplitude, and $\omega=ck$. The version for the magnetic field is identical, just with $E$ swapped with $B$.

In free space, Maxwell's equations tell us:
$$
(\tilde{E}_{0})_{z} = (\tilde{B}_{0})_{z} =0
$$
So the waves have no $z$ dependence, and must be transverse waves. Going further, we have:
$$
\tilde{\mathbf{B}}_{0} = \frac{k}{\omega} (\hat{z}\times  \tilde{\mathbf{E}}_{0})
$$
So $\vec{E}$ and $\vec{B}$ are perpendicular to each other, alongside both being perpendicular to the propagation direction. Their real amplitudes are related by:
$$
B_{0} = \frac{k}{\omega} E_{0} = \frac{1}{c} E_{0}
$$
The common models for the electric and magnetic fields are:
$$
\begin{align}
\vec{E}(z, t) & = E_{0} \cos(kz-\omega t+\delta) \hat{x} \\
\vec{B}(z, t) & = \frac{1}{c} E_{0} \cos(kz-\omega t+\delta) \hat{y}
\end{align}
$$
In terms of a propagation vector $\vec{k}$, pointing in the direction of propagation with magnitude $k$, the equations are generalized to:
$$
\begin{align}
\tilde{\mathbf{E}}(\vec{r}, t) & = \tilde{E}_{0} \exp \left[ i(\vec{k}\cdot \vec{r}-\omega t) \right] \hat{n} \\
\tilde{\mathbf{B}}(\vec{r}, t) & = \frac{1}{c} \tilde{E}_{0} \exp \left[ i(\vec{k}\cdot \vec{r}-\omega t) \right] (\hat{k}\times \hat{n}) = \frac{1}{c} \hat{k}\times  \tilde{\mathbf{E}}
\end{align}
$$
Where $\hat{n}$ is the polarization vectors. Since $\vec{E}$ is transverse,
$$
\hat{n}\cdot \hat{k}=0
$$
# Energy and Momentum in Electromagnetic Waves
Recall that the energy per unit volume in electromagnetic fields is:
$$
u = \frac{1}{2} \left( \epsilon_{0} E^{2} + \frac{1}{\mu_{0}} B^{2} \right)
$$
For monochromatic plane waves:
$$
B^{2} = \frac{1}{c^{2}} E^{2} = \mu_{0}\epsilon_{0} E^{2}
$$
Therefore,
$$
u = \epsilon_{0} E^{2} = \epsilon_{0} E_{0}^{2} \cos ^{2}(kz-\omega t+\delta)
$$
It follows that the Poynting vector becomes:
$$
\vec{S} = \frac{1}{\mu_{0}} (\vec{E}\times \vec{B}) = cu \hat{z}
$$
The momentum density becomes:
$$
\vec{g} = \frac{1}{c} u\hat{z}
$$
However, these terms are typically very rapidly fluctuating because of the short wavelengths in the cosine. So, the average value is typically more enlightening.
$$
\left< u \right> = \frac{1}{2} \epsilon_{0} E_{0}^{2} \qquad \left< \vec{S} \right> = \frac{1}{2} c \epsilon_{0} E_{0}^{2}\hat{z} \qquad \left< g \right> = \frac{1}{2c} \epsilon_{0} E_{0}^{2} \hat{z}
$$
The average power per unit area is also called the intensity: $I \equiv \left< S \right>$.
- This is the scalar version of the Poynting vector from the looks of it

For a perfect absorber, all momentum is delivered onto the surface, and the average force per unit area from the momentum transfer is:
$$
P = \frac{1}{A} \frac{\left< \vec{g} \right> Ac\Delta t}{\Delta t} = \frac{1}{2} \epsilon_{0} E_{0}^{2} = \frac{I}{c}
$$
Also called the *radiation pressure*. Note that for a perfect reflector the pressure is double.
