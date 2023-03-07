??? Abstract "References"
    - STATS 203 - Large Sample Theory 
    - [Master Program: Probability Theory - Lecture 3: Applications of independence](https://youtu.be/VNSf9NcEwRA)

### **Introduction** 

??? Abstract "TLDR"

    The defining feature of convergence is the restriction on the underlying probability space. 

    - In convergence in Law/distribution, we do not require $X_n$ and $X$ to be defined on the same probability space. 
    - In convergence in probability or expectation, we require that for each $n$,  $X_n$ and $X$ are defined on the same probability space, but this probability space is allowed to change with $n$. 
    - In convergence almost surley, the underlying probability space for $X_n$ and $X$ must be the same and fixed for all $n$. 

### **Weak Law of Large Numbers** 

???+ Abstract "Presentation"

    It seems like there are at least two distinct ways to illustrate this result. The first places more emphasis on random variables, the second, which I do below, places more emphasis on empirical measures. The relationship between these two approaches is the following: 

    $$\mathcal{I} \ (x \mapsto x) \ \hat{\mathbb{P}}_n \equiv \frac{X_1 + X_2 + \dots + X_n}{n}$$

We begin by defining a probability space parameterized by $n$. 

$$\Big(\mathcal{R}^n,  \mathcal{B}(\mathcal{R}^n), \mathbb{P}^n\Big)$$ 

!!! info inline end "Projection Random Variables"
    Defined as follows:

    $$\omega \in \Omega_n \longmapsto X_i(\omega) = \omega[i] $$

with $n$ i.i.d **projection random variables**.

$$ \begin{align*}
\hat{\mathbb{P}}_n &:: \mathcal{R}^n \to \mathcal{B}(\mathcal{R}) \to [0,1] \\ 
\mathcal{I}_n &:: (\mathcal{R}^n \to \mathcal{R}) \to (\mathcal{B}(\mathcal{R}^n) \to [0,1]) \to \mathcal{R} \\
\mathcal{I}_1 \ (x \mapsto x) \ \hat{\mathbb{P}}_n &:: \mathcal{R}^n \to [0,1] 
\end{align*}$$

From this, we can define the following sequence of random variables: 

$$\begin{align*} d_n  &:: \mathcal{R}^n \to [0,1] \\
& := \mathcal{I}_1 \ (x \mapsto x) \ \hat{\mathbb{P}}_n - \mathcal{I}_1 \ (x \mapsto x) \ \mathbb{P} \end{align*}$$

We can show that the following result.

$$\underset{n \to \infty}{\lim} \mathcal{I}_n \ d_n \ \mathbb{P}_n = 0 $$

!!! Success "Result"

    We say

    $$\mathcal{I}_1 \ (x \mapsto x) \ \hat{\mathbb{P}}_n \ \textrm{converges in} \ L_2 \ \textrm{to} \ \mathcal{I}_1 \ (x \mapsto x) \ \mathbb{P}$$

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


### **Applications**

#### **Weak Law of Large Numbers** 

Proof given [here](https://youtu.be/VNSf9NcEwRA?list=PLo4jXE-LdDTS5BYqea-LcHdtjKwVcepP7&t=192)

Let $X_1, \dots, X_n$ be a family of i.i.d random variables with a finite second moment. Then 

$$\underset{n \to \infty}{\lim} \mathbb{E}\Big[\Big( \frac{X_1 + \dots + X_n}{n} - \mathbb{E}[X]\Big)^2\Big] = 0$$




