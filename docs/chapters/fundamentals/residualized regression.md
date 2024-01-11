#### **Instrumental Variables**

Linear instrumental variables consists of a the following two step process. We first regress the treatment variable $D_i$ on the controls $X_i$ and the instrument $Z_i$. We then regress the outcome variable $Y_i$ on the predicted treatment $\hat{D}_i$ and the controls.

$$\begin{align*}
D_i &= \gamma_1 X_i + \gamma_2 Z_i + v_i \\
Y_i &= \beta_1 \hat{D}_i + \beta_2 X_i + \varepsilon_i
\end{align*}$$

As emphasized in class, I prefer to interpret the coefficients in a linear model via a residualized approach. For one, it makes the source of the variation clear. We can interpret the coefficient $\beta_1$ in the second equation above via a residualized regression as follows where $\bar{\hat{D}}$ is the predicted predicted values! Not a typo. We first predict treatment given the controls and the instrument. We then predict this predicted value given only the controls. Via the law of iterated expectations it is equivalent to the predicted treatment given the controls.

$$\begin{align*}
Y_i &= \beta_1 (\hat{D}_i - \bar{\hat{D}}_i) + u_i \\ 
\end{align*}$$

As I also emphasize in class, I tent to think of linear models as approximations to the underlying conditional expectation function. Therefore, we can re-write the above regression in its nonparametric form as follows:

$$\begin{align*}
 Y_i &= \beta_1 (\mathbb{E}[D_i \vert X_i, Z_i] - \mathbb{E}[D_i \vert X_i] ) + u_i \\ 
\end{align*}$$

When I see a linear IV model in a paper, I try to interpret is as an approximation to the above regression. IV keeps only the local source of the treatment due to the instrument. IV is a local correction of the treatment variable.

