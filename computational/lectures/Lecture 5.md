### Fourier Series
A method of expressing functions in terms of a summation of sines and cosines
$$
\hat{f}(k) = \int_{-\infty}^{\infty} f(x)e^{ 2\pi ikx } \, dx
$$
Where $\hat{f}$ is the Fourier transform of $f$

We  an discretize Fourier transforms like,
$$
\hat{f}(k) \approx \sum_{n=0}^{N-1} f(x_{n}) e^{ 2\pi ikx_{n} }\Delta_{x}
$$
Th frequency is also discretized $k_{n}=n /N$.

If you are trying to capture high frequencies, use smaller $\Delta_{x}$, and for low frequencies make the interval $N\Delta_{x}$ longer.
### Computing Fourier Coefficients
For some function $y_{k}=f(x_{k})$ and the coefficients $c_{k}=N\gamma_{k}$
$$
c_{k} = \sum_{n=0}^{N-1} y_{n} \exp \left( \frac{2\pi kn}{iN} \right)
$$
By convention, we typically compute $c_{k}$ instead of $\gamma_{k}$ as the coefficients.

We call the above the DFT, the definite Fourier transform. For $y(x)\in \mathbb{R}$, we only need half the points to determine the DFT because $c_{N-k}=c^*_{k}$.

The inverse DFT, called the iDFT is,
$$
y_{n} = \frac{1}{n} \sum_{k=0}^{N-1} c_{k} \exp \left( \frac{2\pi ikn}{N} \right)
$$
Recall that for computing sine and cosine Fourier transforms,
$$
f(x) = \sum_{k=0}^{\infty} \left[ \alpha_{k} \cos\left( \frac{2\pi kx}{L} \right) + \beta_{k} \sin\left( \frac{2\pi kx}{L} \right) \right]
$$
Then if $f$ is odd $\alpha_{k}=0$ or if $f$ is even $\beta_{k}=0$ and so if you can prove a function has these properties, you need only compute 1/2 of the coefficients.
### Fast Fourier Transform
The DFT requires some $N^{2}$ operations, which is very limited.

The idea is to divide and conquer. First, split the DFT into two,
$$
c_{k} = \sum_{n=0}^{N-1} y_{n} \exp \left( \frac{2\pi kn}{iN} \right) = E_{k} + \omega^{k} O_{k}
$$
Where we have,
$$
\begin{align}
E_{k} & = \sum_{p=0}^{N/2-1} y_{2p} \exp \left( \frac{2\pi pk}{iN /2} \right)  \\
O_{k} & = \sum_{p=0}^{N/2-1} y_{2p+1} \exp \left( \frac{2\pi pk}{iN /2} \right)
\end{align}
$$
So we have two sums, one over the even indices, and one over the odd indices. $\omega$ is called the twiddle factor,
$$
\omega = e^{ -2\pi i/N } \implies \omega^{k} = e^{ -2\pi ik/N }
$$
The number of operations required to compute this is $N^{2} /2$. However, we can keep going. Keep splitting $E_{k}$ and $O_{k}$ until each of them has just one term.
$$
c_{0} = \sum_{n=0}^{1-1} y_{n} e^{ -2\pi ikn/N } = y_{0}
$$
