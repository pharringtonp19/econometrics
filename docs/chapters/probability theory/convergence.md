> Reference: STATS 203 - Large Sample Theory 

???+ Abstract "TLDR"

    The defining feature of convergence is the restriction on the underlying probability space. 

    - In convergence in Law/distribution, we do not require $X_n$ and $X$ to be defined on the same probability space. 
    - In convergence in probability or expectation, we require that for each $n$,  $X_n$ and $X$ are defined on the same probability space. i.e. they share the same probability space, but this probability space is allowed to change with $n$. 
    - In convergence almost surley, the underlying probability space for $X_n$ and $X$ must be the same and fixed for all $n$. 

### **Motivation** 
We are interested in the following function

$$ \begin{align*}
&J :: \{n\} \to P(\Omega_n) \to (\theta^{d(n)} \to \mathcal{R}) \to \\
&J \ \Omega_n \ \mathbb{P}_n \ (\hat{g}_n \circ \hat{\theta}_n)
\end{align*}$$

### **Convergence in Distribution (or Law) **

- A random variable $X_n$ convergences in distribution (or in law )to $X$ when the corresponding sequence of CDFs converge "pointwise" to the CDF
of $X$

$$\begin{align}
X_n \to_D X \implies F_{X_n} \to F_X 
\end{align}$$

???+ note "Helly-Bray Theorem"

    ???+ Abstract "TLDR"

        If the parameters of our model converge in distribution or law, then we have an asymptotically unbiased estimate.

    Let $\theta_n \to_D \theta$. Let $g$ be a continuous and bounded function. Then: 

    $$I \ \Omega_1 \ \mathcal{P}_n \ (g \circ \theta_n) \to I \ \Omega_2 \ \mathcal{P} \ (g \circ \theta)$$

    Note, if we define our estimator $\hat{\beta}_n$ as follows. 

    $$\hat{\beta}_n := g \circ \theta_n = \int f(\theta_n, X) d\mathbb{P}_X$$

    Then this theorem tells us that 

    $$\int \hat{\beta}_n d\mathbb{P}_n \to \beta$$

    


### **Convergence in Probability**

> If the limit is a random variable, then we care aboout the joint distribution!

- A random variable $X_n$ converges in probability to $X$ when for all $\varepsilon > 0$ the following holds:

$$\begin{align}
\underset{n \to \infty}{\lim}\mathbb{P}(\|X_n - X \| > \varepsilon)= 0
\end{align}$$




