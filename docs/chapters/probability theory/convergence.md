!!! Abstract "TLDR"

    The defining feature of convergence is the restriction on the underlying probability space. 

    - In convergence in Law/distribution, we do not require $X_n$ and $X$ to be defined on the same probability space. 
    - In convergence in probability or expectation, we require that for each $n$,  $X_n$ and $X$ are defined on the same probability space. i.e. they share the same probability space, but this probability space is allowed to change with $n$. 
    - In convergence almost surley, the underlying probability space for $X_n$ and $X$ must be the same and fixed for all $n$. 

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




