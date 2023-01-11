!!! abstract 

    In this note we introduce the fundamentals of the learning problem 

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
&L(h) := \underset{(x,y)\sim p}{\mathbb{E}} \big[l(h, x, y)\big]\end{align*}$$


#### Empirical Risk 

$$
\begin{align*}
&\hat{L} :: \{X, Y\}^n \to \Theta \to \mathcal{R}_+ \\
&\hat{L}(\{x_i, y_i\}_{i=1}^n, \theta) = \frac{1}{n} \sum _i l(\theta, x_i, y_i)
\end{align*}$$

??? tip "Partial Evaluation" 

    Partially evaluated at $\theta$, $\hat{L}$  is a random variable. Taking its expectation

    $$
    \begin{align*}
    \mathbb{E}\big[ \hat{L} _{\theta}\big] &= \mathbb{E}\big[ \frac{1}{n} \sum _i l(\theta, x_i, y_i)\big] \\ 
    &= \frac{1}{n} \sum _i \mathbb{E}\big[ l(\theta, x_i, y_i)\big] \\ 
    &= L(\theta) \end{align*}$$

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
