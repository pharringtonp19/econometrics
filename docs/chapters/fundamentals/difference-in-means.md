In the previous note, we motivated why we are interested in estimating the average treatment effect. Given this objective, a natural starting point, it would seem, would be to estamate this effect by taking the difference between the average outcomes in the treated group and the average outcomes in the control group. 

Assuming for the moment, that we observe the entire population (i.e we're not thinking about sampling from a larger population), our difference-in-means strategy can be formally defined as follows. 

$$\mathbb{E}[Y_i \vert D_i = 1] - \mathbb{E}[Y_i \vert D_i=0]$$

These conditional expectations correspond to the average outcomes for those individuals in the treated/control group respectively. We use the binary variable $D_i$ to denote the treatment status. ($D_i=1$) means that the person is treated.

Whenever some proposes something, it's natural to question whether this is a good idea. In our context, this would be - does the difference in means estimator recover the average treatment effect? To assess this, we need to relate the terms in the above expression to the potential outcome function. Let's start with the first term, the expected outcome with the treatment for those who receive treatment. Read that sentence again. It's not easy to read but it conveys important information. There are two key pieces of information that are related to condtioning on $D_i=1$. The first piece of information is that we are observing the potential outcome associated with treatment $\tilde{Y}_i(1)$, and piece of information is that we observe this outcome for those individuals in the treated group. With this in mind, we can re-write the above expression as follows:


$$\begin{align*}\mathbb{E}[Y_i \vert D_i = 1] - \mathbb{E}[Y_i \vert D_i=0] &= \mathbb{E}[\tilde{Y}_i(1) \vert D_i = 1] - \mathbb{E}[\tilde{Y}_i(0) \vert D_i = 0] \end{align*}$$

To be able to interpret this term further, we're goind to add and subtract the following term $\textcolor{blue}{\mathbb{E}[\tilde{Y}_i(0) \vert D_i=1]}$. 

$$\begin{align*}\Big( \mathbb{E}[\tilde{Y}_i(1) \vert D_i = 1] - \textcolor{blue}{\mathbb{E}[\tilde{Y}_i(0) \vert D_i=1]}\Big) + \Big(\textcolor{blue}{\mathbb{E}[\tilde{Y}_i(0) \vert D_i=1]} - \mathbb{E}[\tilde{Y}_i(0) \vert D_i = 0]\Big) \end{align*}$$

We know have two bracketed expressions. The first captures the the average treatment effect on the treated group. The second captures the average difference between the treated and control groups in a counterfacutal world where no one is treated. We refer to this second expression as the **Selection Bias**.

We've shown that the difference-in-means is equivalent to the average treatment on the treated plus the selection bias. 

???+ tip "Consider" 

    What is the average treatment effect on the treated and selection bias in a randomized control trial?