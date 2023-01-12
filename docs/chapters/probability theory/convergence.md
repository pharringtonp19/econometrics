!!! Abstract "TLDR"

    For both of these definitions, the underlying probability space can vary with $n$!

### **Convergence in Distribution**

- A random variable $X_n$ convergences in distribution (or in law )to $X$ when the corresponding sequence of CDFs converge "pointwise" to the CDF
of $X$

$$\begin{align}
X_n \to_D X \implies F_{X_n} \to F_X 
\end{align}$$

### **Convergence in Probability**

> If the limit is a random variable, then we care aboout the joint distribution!

- A random variable $X_n$ converges in probability to $X$ when for all $\varepsilon > 0$ the following holds:

$$\begin{align}
\underset{n \to \infty}{\lim}\mathbb{P}(\|X_n - X \| > \varepsilon)= 0
\end{align}$$




