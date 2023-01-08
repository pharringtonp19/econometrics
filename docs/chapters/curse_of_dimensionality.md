> A pure sampling phenomena 

### **Numerical Integration**

$$\int _{[0,1]^d}f dx$$

### **Monte-Carlo Integration**

$$\begin{align*}\hat{\theta} &= \frac{1}{n}\sum _{i=1}^n \big(f(X_i) + \varepsilon_i) \\ 
&= \frac{1}{n}\sum _{i=1}^n f(X_i) + \frac{1}{n}\sum _{i=1}^n \varepsilon_i \\ \\ 
\mathbb{E}[\hat{\theta}] &= \mathbb{E} \Bigg[\frac{1}{n}\sum _{i=1}^n f(X_i) + \frac{1}{n}\sum _{i=1}^n \varepsilon_i  \Bigg] \\ 
&= \frac{1}{n}\sum _{i=1}^n \mathbb{E}\big[f(X_i)\big] + \frac{1}{n}\sum _{i=1}^n \mathbb{E}\underbrace{\big[\varepsilon _i\big]}_{=0} \\
&= \mathbb{E}\big[f(X_i)\big] \\ \\ 
\mathbb{E}\big[(\hat{\theta} - \theta_0 \big)^2] &= \textrm{Var}(\hat{\theta})\end{align*}$$



