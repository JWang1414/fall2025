# Cross Products
Remember the Levi-Civita for cross products,
$$
\hat{e}_{i} \times \hat{e}_{j} = \epsilon_{ijk} \hat{e}_{k}
$$
Where for Cartesian, cylindrical, and spherical coordinates the cycles are,
$$
ijk \to xyz \to s \phi z \to r\theta \phi
$$
# Conversion
![[Pasted image 20251207190805.png]]
In the same format:
![[Pasted image 20251207190922.png]]
# Gradient
$$
\begin{align}
\nabla f  & = \frac{ \partial f }{ \partial x } \hat{x} + \frac{ \partial f }{ \partial y } \hat{y} + \frac{ \partial f }{ \partial z } \hat{z} \\
 & = \frac{ \partial f }{ \partial \rho } \hat{\rho} + \frac{1}{\rho} \frac{ \partial f }{ \partial \varphi } \hat{\varphi}+ \frac{ \partial f }{ \partial z } \hat{z} \\
 & = \frac{ \partial f }{ \partial r } \hat{r} + \frac{1}{r} \frac{ \partial f }{ \partial \theta } \hat{\theta} + \frac{1}{r \sin \phi} \frac{ \partial f }{ \partial \phi } \hat{\phi} \\
\end{align}
$$
# Divergence
$$
\begin{align}
\nabla \cdot \vec{A} & = \frac{ \partial A_{x} }{ \partial x } + \frac{ \partial A_{y} }{ \partial y }  + \frac{ \partial A_{z} }{ \partial z }  \\
 & = \frac{1}{\rho} \frac{ \partial (\rho A_{\rho}) }{ \partial \rho } + \frac{1}{\rho} \frac{ \partial A_{\varphi} }{ \partial \varphi } + \frac{ \partial A_{z} }{ \partial z }  \\
 & = \frac{1}{r^{2}} \frac{ \partial (r^{2}A_{r}) }{ \partial r } + \frac{1}{r \sin\theta} \frac{ \partial  }{ \partial \theta } (A_{\theta} \sin\theta) + \frac{1}{r\sin\theta} \frac{ \partial A_{\phi} }{ \partial \phi } 
\end{align}
$$
# Curl
$$
\begin{align}
\nabla \times \vec{A} & = \begin{vmatrix}
\hat{x} & \hat{y} & \hat{z} \\
\partial x & \partial y & \partial z \\
A_{x} & A_{y} & A_{z}
\end{vmatrix} \\
 & = \frac{1}{s} \begin{vmatrix}
\hat{s} & s\hat{\phi} & \hat{z} \\
\partial s & \partial \phi & \partial z \\
A_{s} & sA_{\phi} & A_{z}
\end{vmatrix} \\
 & = \frac{1}{r^{2}\sin\theta} \begin{vmatrix}
\hat{r} & r \hat{\theta} & r \sin\theta \hat{\phi} \\
\partial r & \partial\theta & \partial \phi \\
A_{r} & r A_{\theta} & r \sin\theta A_{\phi}
\end{vmatrix}
\end{align}
$$
# Differential
For some displacement $d\vec{l}$
$$
\begin{bmatrix}
dx \\
dy \\
dz
\end{bmatrix} = \begin{bmatrix}
ds \\
s \, d\phi \\
dz
\end{bmatrix} = \begin{bmatrix}
dr \\
r \, d\theta \\
r \sin\theta \, d\phi
\end{bmatrix}
$$
For some volume $d\tau$
$$
dx \, dy \, dz \to s \, ds \, d\phi \, dz \to r^{2} \sin\theta \, dr \, d\theta \, d\phi
$$
# Integration theorems
$$
\int_{\vec{a}}^{\vec{b}} (\nabla T)\cdot d\vec{a} = T(\vec{b}) - T(\vec{a})
$$
$$
\int_{\mathcal{V}} \nabla \cdot \vec{v} \, d\tau = \oint_{\mathcal{S}} \vec{v}\cdot d\vec{a}
$$
$$
\int_{\mathcal{S}} (\nabla \times \vec{v})\cdot d\vec{a} = \oint_{\mathcal{p}} \vec{v}\cdot d\vec{l}
$$
