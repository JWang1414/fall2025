### Example 3.2
Lets say we have a grounded, conducting sphere. This means that $V(r)=0$ when $r\leq R$. Where $R$ is the radius of the sphere. Lets say we have some charge $a$ distance away from the origin of the sphere.

We are interested in solving for the potential some place away from the sphere.

Away from the sphere, we might have a potential with,
$$
V(r) = \frac{1}{4\pi\epsilon_{0}} \left( \frac{q}{r} + ? \right)
$$
We will use the method of images, because $\nabla^{2}V=0$ in most places.

To place this fictitious charge, we need to solve for,
$$
V(\theta) = \frac{1}{4\pi\epsilon_{0}} \left( \frac{q}{r} + \frac{q'}{r'} \right) =0
$$
Which gives us,
$$
\frac{q}{\sqrt{ R^{2}+a^{2}-2Ra \cos\theta }} = - \frac{q'}{\sqrt{ R^{2}+b^{2} - 2rb \cos\theta }}
$$
Notice that only $\theta$ is varying here. So, we can separate the equation into the constant and varying terms.
$$
q^{2}(R^{2}+b^{2}) = q'^{2} (R^{2}+a^{2})
$$
And,
$$
q^{2}(2Rb) = q'^{2}(2Ra)
$$
You will find that,
$$
b = \frac{R^{2}}{a} \qquad q' = -q \frac{R}{a}
$$
The distance will be,
$$
|\mathcal{r}| = |\vec{r}-\vec{a}|
$$
$$
|\mathcal{r}'| = |\vec{r} - \vec{b}|
$$
### Question 3.10
Now, we have a conducting, non-grounded sphere with potential $V_{0}$. What charge should you use, and where should you put it? Find the force of attraction between point charge $q$ and a neutral conducting sphere.