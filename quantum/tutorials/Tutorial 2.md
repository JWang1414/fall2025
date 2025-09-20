### Question 3
---
a.
It is possible to do this question with computations, but there is a smarter way to complete it with intuition.

Since the parity of the dipole moment operator is the negative of itself, we have:
$$
\bra{n'l'm'} \hat{p}_{e} \ket{nlm} = - \bra{n'l'm'}  \Pi ^{\dagger} \hat{p}_{e} \Pi \ket{nlm}
$$
From the result we obtain in question 1, this is equal to,
$$
(-1)^{l+l'-1} \left< \hat{p}_{e} \right>
$$
From this we have the equivalence,
$$
\left< \hat{p}_{e} \right> = (-1)^{l+l'-1} \left< \hat{p}_{e} \right>
$$
Which means that if $l+l'$ are even, then the expectation value must be zero. The 1s state has $nlm=100$ which means the exponent is $0+0-1=-1$. Therefore,
$$
\bra{100} \hat{p}_{e} \ket{100}  =0
$$
---
b.
Guess a superposition of $N=2$ eigenstates,
$$
\ket{\psi} = (\ket{210} + \ket{200} ) \left( \frac{1}{\sqrt{ 2 }} \right)
$$
Take the expectation value. Lots of terms are zero from the previous part,
$$
\bra{\psi} \hat{p}_{e} \ket{\psi} = \frac{1}{2} \left[ \bra{210} \hat{p}_{e} \ket{200} + \bra{200} \hat{p}_{e} \ket{210}  \right] = \mathrm{Re}\{ \bra{210} \hat{p}_{e} \ket{200}  \}
$$
This result is, unfortunately, best done as a full computation,
$$
\begin{align}
= & e \mathrm{Re} \bigg\{ \int \psi^*_{210}(\vec{r}) \psi_{200}(\vec{r}) r \sin \theta \cos \phi \, d\vec{r}^{3} \hat{i} \\
 & + \int \psi^*_{210}(\vec{r}) \psi_{200}(\vec{r}) r \sin \theta \sin \phi \, d\vec{r}^{3} \hat{j}  \\
 & + \int \psi_{210}(\vec{r}) \psi_{200}(\vec{r}) r \cos \theta  \, d\vec{r} \hat{k}
\end{align}
$$
However, because we have $m=0$, our functions have no $\phi$ dependence, and so the first two integrals simplify to 0 since,
$$
\int_{0}^{2\pi} \sin \phi \, d\phi = \int_{0}^{2\pi} \cos \phi \, d\phi =0
$$
Writing out the full integral we now have,
$$
e\mathrm{Re} \left\{  \left[ \int R^*_{21}(r) R_{20}(r) r^{3} \, dr  \right] \left[ 2\pi \int \left( \frac{1}{4\pi} \right)^{1 /2} \left( \frac{3}{4\pi} \right)^{1/2} \sin \theta \cos ^{2}\theta \, d\theta  \right]   \right\}
$$
As you can see, this computation is miserable. The correct answer is,
$$
\bra{\psi} \hat{p}_{e} \ket{\psi} = \left< \hat{p}_{e} \right> = 3ea \hat{k}
$$
Where $a$ is the Bohr radius.
- This question can be done in radial coordinates, but it is actually harder
- The main takeaways are:
	- You can use symmetries to simplify your life quite a lot
	- We get something non-zero here because of the interference terms. Perhaps wouldn't have been the same with just one eigenstate
### Question 5
---
i.
Note that $\vec{a}$ and $\vec{b}$ are normal vectors.
$$
(\vec{a} \cdot \vec{\sigma}) (\vec{b} \cdot \vec{\sigma}) = (a_{i}\sigma_{i}) (b_{j}\sigma_{j})
$$
Where we are using the Einstein summation notation.
$$
= a_{i} b_{j} \sigma_{i} \sigma_{j} = a_{i} b_{j} (\delta_{ij} + i \epsilon_{ijk} \sigma_{k}) = a_{i} b_{j} \delta_{ij} + i (\epsilon_{ijk} a_{i} b_{j})\sigma_{k}
$$
The first term is still a summation, remember. So it reduces to the dot product. And, because the Levi-Cevita tensor simplifies the second segment into a cross product, we have,
$$
\vec{a} \cdot \vec{b} + i (\vec{a} \times \vec{b}) \cdot \vec{\sigma}
$$
As needed.

---
ii.
Note that,
$$
(\hat{n}\cdot \vec{\sigma}) (\hat{n} \cdot \vec{\sigma}) = \hat{n} \cdot \hat{n} + (\hat{n}\times \hat{n}) \cdot \vec{\sigma}
$$
Since $\hat{n}\cdot \hat{n}=1$ and $\hat{n}\times \hat{n}=0$,
$$
(\hat{n}\cdot \vec{\sigma}) ^{m} = \begin{cases}
\hat{n}\cdot \vec{\sigma} & \text{for }m \text{ odd} \\
1 & \text{for }m \text{ even}
\end{cases}
$$
Now, we will expand the given exponential into a summation,
$$
\begin{align}
e^{ -i\phi(\hat{n}\cdot \vec{S})/\hbar } & = e^{ -i\phi(\hat{n}\cdot \vec{\sigma})/2 } \\
 & = \sum_{k=0}^{\infty} \frac{1}{k!} \left( -\frac{i\phi}{2} \right)^{k} (\hat{n}\cdot \vec{\sigma})^{k}
\end{align}
$$
We can split this into the even and odd indices,
$$
\sum_{k=0}^{\infty} \frac{1}{(2k)!} \left( \frac{i\phi}{2} \right)^{2k} + \sum_{k=0}^{\infty} \frac{1}{(2k+1)!} \left( -\frac{i\phi}{2} \right)^{2k+1} \hat{n}\cdot \vec{\sigma}
$$
And notice that you can simplify both of these into the Taylor series for sine and cosine
$$
\sum_{k=0}^{\infty} \frac{(-1)^{k}}{(2k)!} \left( \frac{\phi}{2} \right)^{2k} -i \sum_{k=0}^{\infty} \frac{(-1)^{k}}{(2k+1)!} \left( \frac{\phi}{2} \right)^{2k+1} \hat{n}\cdot \vec{\sigma}
$$
So this is just,
$$
\cos\left( \frac{\phi}{2} \right) -i \sin\left( \frac{\phi}{2} \right) (\hat{n}\cdot \vec{\sigma})
$$
As needed.

---
iii.
$$
R_{n}(2\pi) = \cos(\pi) \hat{1} -i \sin(\pi) \hat{n}\cdot \vec{\sigma} =- \hat{1}
$$
- It's surprising because apparently we need to rotate by $4\pi$ radians in order to go back to where we were before