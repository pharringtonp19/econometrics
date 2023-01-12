
!!! Abstract 

    We're interested in the behavior/performance of Estimators/Algorithms 

In applied microeconometrics, where we are generally interested in the causal effect of some policy/intervention, we use **estimators/algorithms** with the following signature. 

$$\begin{align*}
\mathcal{A}_1 :: \{ \mathcal{X} \times \mathcal{Y} \}^n \to \mathcal{R}^p\\ 
\end{align*}$$

Occasionally, these algorithms have an analytical form. For example, if we are interested in the average outcome we may use the following estimator. 

$$\begin{align*}
&\mathcal{A}_1 :: \{ \mathcal{X} \times \mathcal{Y} \}^n \to \mathcal{R}\\ 
&\mathcal{A}_1 \big(\{x_i, y_i \})_{i=1}^n\big) = \frac{1}{n} \sum y_i \\ 
\end{align*}$$

Or if we are interested in the linear approximation to the **CEF** we may use the following estimator. 

$$\begin{align*}
&\mathcal{A}_1 :: \{ \mathcal{X} \times \mathcal{Y} \}^n \to \mathcal{R}^p\\ 
&\mathcal{A}_1 \big(\{x_i, y_i \})_{i=1}^n\big) = \big( X^TX)^{-1}X^TY \\ 
\end{align*}$$




#### Probability Space 
??? warning

    Is the Borel Sigma Algebra well defined here? Should we add restrictions on $\mathcal{X}, \mathcal{Y}$?

$$\Big( \mathcal{X} \times \mathcal{Y}, \mathcal{B}(\mathcal{X} \times \mathcal{Y}), \mathbb{P}\Big)$$

#### Function Space/ Hypothesis Class/ Model Class

??? warning

    What additional restrictions should we place on $\mathcal{H}$?

$$ \mathcal{H} := \{h \mid h : \mathcal{X} \to \mathcal{Y} \}$$

#### Loss Function 

??? warning

    Make note on parameterization

$$\begin{align*}
&l : \mathcal{H} \to \mathcal{X} \to \mathcal{Y} \\
&l(h, x, y) = (y - h(x))^2
\end{align*}$$

#### Population Risk 

$$\begin{align*}
&L :: \mathcal{H} \to \mathcal{R}_+ \\ 
&L(h) := \underset{(x,y)\sim p}{\mathbb{E}} \big[l(h, x, y)\big] \\
&L(h)= \int _{\mathcal{X} \times \mathcal{Y}}l(h, X, Y)d\mathbb{P} \end{align*}$$


#### Empirical Risk 

$$
\begin{align*}
&\hat{L} :: \{X, Y\}^n \to \Theta \to \mathcal{R}_+ \\
&\hat{L}(\{x_i, y_i\}_{i=1}^n, \theta) = \frac{1}{n} \sum _i l(\theta, x_i, y_i)
\end{align*}$$

??? info "Partial Evaluation: Expectation" 

    Partially evaluated at $\theta$, $\hat{L}$  is a random variable. Taking its expectation

    $$
    \begin{align*}
    \mathbb{E}\big[ \hat{L} _{\theta}\big] &= \mathbb{E}\Big[ \frac{1}{n} \sum _i l(\theta, x_i, y_i)\Big] \\ 
    &= \frac{1}{n} \sum _i \mathbb{E}\big[ l(\theta, x_i, y_i)\big] \\ 
    &= L(\theta) \end{align*}$$

??? info "Partial Evaluation: Variance" 


    $$
    \begin{align*}
    \textrm{Var}(\hat{L} _{\theta})  &= \textrm{Var}\Big[ \frac{1}{n} \sum _i l(\theta, x_i, y_i)\Big] \\ 
    &= \frac{1}{n^2} \sum _i \textrm{Var}\big[ l(\theta, x_i, y_i)\big] \\ 
    &= \frac{\textrm{Var}\big[ l(\theta, x_i, y_i)\big]}{n}
    \end{align*}$$

??? tip "Partial Evaluation: Variance" 

    Partially evaluated at $\theta$, $\hat{L}$  is a random variable. Taking its expectation

    $$
    \begin{align*}
    \mathbb{E}\big[ \hat{L} _{\theta}\big] &= \mathbb{E}\Big[ \frac{1}{n} \sum _i l(\theta, x_i, y_i)\Big] \\ 
    &= \frac{1}{n} \sum _i \mathbb{E}\big[ l(\theta, x_i, y_i)\big] \\ 
    &= L(\theta) \end{align*}$$


#### Hmm 
But we are not really interested in this relationship, becuase $\hat{L}$ is not partially evaluated in practice. In practice, we use our training data to determine $\theta$. That is we have an algorithm $\mathcal{A}$. 

#### Algorithm 

$$
\begin{align*}
\mathcal{A} :: \{\mathcal{X}, \mathcal{Y}\}^n \to \Theta 
\end{align*}
$$

- Empirical Risk Minimization

$$
\begin{align*}
&\textrm{ERM} :: \{X, Y\}^n \to \Theta  \\
&\textrm{ERM}(\{x_i, y_i\}_{i=1}^n) = \underset{\theta \in \Theta}{\textrm{minimize}} \ \hat{L}(\{x_i, y_i\}_{i=1}^n, \theta)  
\end{align*}$$

- Consistency: 

    $$\mathbb{P}_n ( \| \mathcal{A}_n - \theta _0 \| > \varepsilon) \to 0  $$



- Which is just a random variable. We can evaluate it as follows: 

    $$
    \begin{align*}
    \mathbb{E} \big[ L \circ \mathcal{A} \big]
    \end{align*}
    $$




- Excess Risk:

$$ 
\begin{align*}
&E :: \mathcal{H} \to \mathcal{R}_+ \\
&E(h) = L(h) - \underset{g \in \mathcal{H}}{\inf} L(g)
\end{align*}$$
