# Propagation in Linear Media
If there is no free charge or current,
$$
\nabla \cdot \vec{D}=0 \qquad \nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t }
$$
$$
\nabla \cdot \vec{B}=0 \qquad \nabla \times \vec{H} = \frac{ \partial \vec{D} }{ \partial t }
$$
If the medium is linear,
$$
\vec{D} = \epsilon \vec{E} \qquad \vec{H} = \frac{1}{\mu} \vec{B}
$$
And homogeneous (that is $\epsilon$ and $\mu$ so not vary from point to point),
$$
\nabla \cdot \vec{E}=0 \qquad \nabla \times \vec{E} = - \frac{ \partial \vec{B} }{ \partial t }
$$
$$
\nabla \cdot \vec{B}=0 \qquad \nabla \times \vec{B} = \mu\epsilon \frac{ \partial \vec{E} }{ \partial t }
$$
Generally speaking, inside linear homogeneous media we simply replace $\mu_{0}$ and $\epsilon_{0}$ with $\mu$ and $\epsilon$. The speed of light in here, for example, is,
$$
v = \frac{1}{\sqrt{ \epsilon \mu }} = \frac{c}{n} \qquad n \equiv \sqrt{ \frac{\epsilon \mu}{\epsilon_{0}\mu_{0}} }
$$
Where $n$ is called the index of refraction. Oftentimes $\mu$ is close to $\mu_{0}$ and it is approximated such that $n \approx \sqrt{ \epsilon_{r} }$. Telling us that light travels slower inside matter.

The energy becomes,
$$
u = \frac{1}{2} \left( \epsilon E^{2} + \frac{1}{\mu} B^{2} \right) \qquad \vec{S} = \frac{1}{\mu} (\vec{E}\times \vec{B})
$$
Which is really quite a miraculous simplification!
- In monochromatic plane waves, $\omega=kv$ where $k$ is the wave number.

The intensity inside linear media is,
$$
I = \frac{1}{2} \epsilon vE_{0}^{2}
$$
# Reflection and Transmission at Normal Incidence
In this case, we have some incident wave, reflected wave, and transmitted wave.
- You can go through and write them all down, and so all the math, but I'm just going to skip to the results.

According to the boundary conditions,
$$
\tilde{E}_{0_{I}} + \tilde{E}_{0_{R}} = \tilde{E}_{0_{T}} \qquad \tilde{E}_{0_{I}} - \tilde{E}_{0_{R}} = \beta\tilde{E}_{0_{T}}
$$
Where,
$$
\beta = \frac{\mu_{1}v_{1}}{\mu_{2}v_{2}} = \frac{\mu_{1}n_{2}}{\mu_{2}n_{1}}
$$
Where the wave is travelling from medium 1 to medium 2.

Now, assuming that $\mu \approx \mu_{0}$ then,
$$
\tilde{E}_{0_{R}} = \left( \frac{v_{2}-v_{1}}{v_{2}+v_{1}} \right) \tilde{E}_{0_{I}} \qquad \tilde{E}_{0_{T}} = \left( \frac{2v_{2}}{v_{2}+v_{1}} \right) \tilde{E}_{0_{I}}
$$
And the real amplitudes are related by,
$$
E_{0_{R}} = \left| \frac{v_{2}-v_{1}}{v_{2}+v_{1}} \right| E_{0_{I}} = \left| \frac{n_{1}-n_{2}}{n_{1}+n_{2}} \right| E_{0_{I}} \qquad E_{0_{T}} = \left( \frac{2v_{2}}{v_{2}+v_{1}} \right) E_{0_{I}} = \left( \frac{2n_{1}}{n_{1}+n_{2}} \right) E_{0_{I}}
$$
The ratio of the intensities are,
$$
R \equiv \frac{I_{R}}{I_{I}} = \left( \frac{E_{0_{R}}}{E_{0_{I}}} \right)^{2} = \left( \frac{n_{1}-n_{2}}{n_{1}+n_{2}} \right)^{2}
$$
$$
T \equiv \frac{I_{T}}{I_{I}} = \frac{\epsilon_{2}v_{2}}{\epsilon_{1}v_{1}} \left( \frac{E_{0_{T}}}{E_{0_{I}}} \right)^{2} = \frac{4n_{1}n_{2}}{(n_{1}+n_{2})^{2}}
$$
Where $R$ and $T$ are called the reflection and transmission coefficients. Necessarily, we require that,
$$
R+T=1
$$
# Reflection and Transmission at Oblique Incidence
Here, we end up re-deriving a number of facts familiar from optics. For example:

The incident, reflected, and transmitted wave vectors for a plane, called the plane of incidence.

The angle of incidence is equal to the angle of reflection
$$
\theta_{I} = \theta_{R}
$$
Which is the law of reflection.

And Snell's Law
$$
n_{1} \sin\theta_{I} = n_{2} \sin\theta_{T}
$$

Furthermore, we also discover the Fresnel coefficients,
$$
\tilde{E}_{0_{R}} = \left( \frac{\alpha-\beta}{\alpha+\beta} \right) \tilde{E}_{0_{I}} \qquad \tilde{E}_{0_{T}} = \left( \frac{2}{\alpha+\beta} \right) \tilde{E}_{0_{I}}
$$
Where,
$$
\alpha \equiv \frac{\cos\theta_{T}}{\cos\theta_{I}} \qquad \beta \equiv \frac{\mu_{1}v_{1}}{\mu_{2}v_{2}} = \frac{\mu_{1}n_{2}}{\mu_{2}n_{1}}
$$
Notably, the amplitudes of the transmitted and reflected waves depend on the angle of incidence. It is from this that we find Brewster's angle, where the reflected wave is completely diminished
$$
\sin ^{2}(\theta_{B}) = \frac{1-\beta^{2}}{(n_{1} /n_{2})^{2}-\beta^{2}}
$$
It occurs when $\alpha=\beta$. In most cases it can be approximated to be,
$$
\tan\theta_{B} \approx \frac{n_{2}}{n_{1}}
$$
The power per unit area is $\vec{S}\cdot \hat{z}$. The incident intensity is,
$$
I_{I} = \frac{1}{2} \epsilon_{1} v_{1} E^{2}_{0_{I}} \cos\theta_{I}
$$
Alongside the associated reflected and transmitted intensities:
$$
I_{R} = \frac{1}{2} \epsilon_{1} v_{1} E^{2}_{0_{R}} \cos\theta_{R} \qquad I_{T} = \frac{1}{2} \epsilon_{2} v_{2} E^{2}_{0_{T}} \cos\theta_{T}
$$
The reflection and transmission coefficients are,
$$
R \equiv \frac{I_{R}}{I_{I}} = \left( \frac{E_{0_{R}}}{E_{0_{I}}} \right)^{2} = \left( \frac{\alpha-\beta}{\alpha+\beta} \right)^{2}
$$
$$
T \equiv \frac{I_{T}}{I_{I}} = \frac{\epsilon_{2}v_{2}}{\epsilon_{1}v_{1}} \left( \frac{E_{0_{T}}}{E_{0_{I}}} \right)^{2} \frac{\cos\theta_{T}}{\cos\theta_{I}} = \alpha \beta \left( \frac{2}{\alpha+\beta} \right)^{2}
$$
Of course,
$$
R+T=1 \qquad I_{I} = I_{T} + I_{R}
$$
# Electromagnetic Waves in Conductors
Generally speaking, $\vec{J}_{f}$ is non-zero. Inside a conductor, it is typically proportional to the electric field,
$$
\vec{J}_{f} = \sigma \vec{E}
$$
Maxwell's equations assume the form,
$$
\nabla \cdot \vec{E} = \frac{1}{\epsilon} \rho_{f} \qquad \nabla \times \vec{E} =- \frac{ \partial \vec{B} }{ \partial t }
$$
$$
\nabla \cdot \vec{B}=0 \qquad \nabla \times \vec{B} = \mu \sigma \vec{E} + \mu\epsilon \frac{ \partial \vec{E} }{ \partial t }
$$
Combine the continuity equation for free charge, Ohm's law, and Gauss' law to find,
$$
\rho_{f}(t) = e^{ -(\sigma/\epsilon)t } \rho_{f}(0)
$$
This dissipation of charge essentially reflects the fact that free charge in a conductor will flow to the edges. For a perfect conductor $\sigma=\infty$.

However, we are more interested in the case where $\rho_{f}=0$, once the charge has sufficiently dissipated, and so,
$$
\nabla \cdot \vec{E} = 0
$$
The wave equation in this system still admits plane-wave solutions,
$$
\tilde{\mathbf{E}}(z, t) = \tilde{\mathbf{E}}_{0} e^{ i(\tilde{k}z-\omega t) } \qquad \tilde{\mathbf{B}}(z, t) = \tilde{\mathbf{B}}_{0} e^{ i(\tilde{k}z-\omega t) }
$$
With the now complex wave number,
$$
\tilde{k}^{2} = \mu\epsilon \omega^{2} + i\mu \sigma \omega \qquad \tilde{k} = k + i\kappa
$$
Where,
$$
k \equiv \omega \sqrt{ \frac{\epsilon \mu}{2} } \left[ \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} }+1 \right] ^{1/2} \qquad \kappa \equiv \omega \sqrt{ \frac{\epsilon \mu}{2} } \left[ \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} }-1 \right] ^{1/2}
$$
The imaginary part of $\tilde{k}$ results in an attenuation of the wave. That is, it decreases as the wave travels further in the material. The distance it takes for the amplitude to decrease by a factor of $e^{-1}$ is called the skin depth $d=\kappa ^{-1}$

The wavelength, and other familiar constants are determined in the familiar way,
$$
\lambda = \frac{2\pi}{k} \qquad v = \frac{\omega}{k} \qquad n=\frac{ck}{\omega}
$$
We can also express $\tilde{k}$ as a complex exponential,
$$
\tilde{k}=K e^{ i\phi } \qquad \phi=\arctan\left( \frac{\kappa}{k} \right)
$$
$$
K \equiv \left| \tilde{k} \right| = \sqrt{ k^{2}+\kappa^{2} } = \omega \sqrt{ \epsilon \mu \sqrt{ 1+\left( \frac{\sigma}{\epsilon \omega} \right)^{2} } }
$$
The complex amplitudes of the magnetic and electric fields are related by,
$$
B_{0} e^{ i\delta_{B} } = \frac{Ke^{ i\phi }}{\omega} E_{0} e^{ i\delta_{E} }
$$
Where the phase difference in the two fields is,
$$
\delta_{B} - \delta_{E} = \phi
$$
The real amplitudes of $\vec{E}$ and $\vec{B}$ are related by,
$$
\frac{B_{0}}{E_{0}} = \frac{K}{\omega}
$$
And the real electric and magnetic fields are,
$$
\vec{E}(z, t) = E_{0} e^{ -\kappa z } \cos(kz-\omega t+\delta_{E}) \hat{x}
$$
$$
\vec{B}(z, t) = B_{0} e^{ -\kappa z } \cos(kz-\omega t+\delta_{E} + \phi) \hat{y}
$$
- There is a lot more covered in class that you can find in the textbook, but I really do not want to write it all down