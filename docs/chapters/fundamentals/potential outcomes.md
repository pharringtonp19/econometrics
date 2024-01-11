If I were to ask you to define the causal effect of a treatment, how would you do so? In this brief note, we'll introduce a framework for defining causal effects.

Intuitively, we know that the causal effect of a treatment is the difference in some outcome when a person receives the treatment and when a person does not receive the treatment. Re-reading the line above, hopefully it jumps out to you that we cannot in fact observe a person in both of the states of the world. For instance, if we are interested in understanding the effects of a college education on annual earnings at the age of 40, we can observe each person either with a college education or without one. This highlights that the funamental issue of a causal inference is a missing data problem. 

While we cannot ever know the causal effects at the individual level, its nevertheless important to be able to define it at this level. To do so, we introduce the potential outcome function which maps levels of the treatment variable into an outcome space.[^1] Continuing with our example of college education, we can define the potential outcome function as follows. 

$$\tilde{Y}_i : \{\textrm{College Education}, \textrm{No College Education}\} \to \mathcal{R}$$

We can define the individual level treatment effect then as the difference, where we have replaced the college/no college status with an binary variable (i.e. a variable which takes the values either 1 or 0). 

$$\tilde{Y}_i(1) -\tilde{Y}_i(0)$$

With this set-up, we can then define the average treatment effect as the expectation of this difference over the entire population of interest. In many contexts, we will be interested in estimating this term. In our running example, this would be the return on education averaged over the entire population of interest.

$$\textrm{ATE} = \mathbb{E}[\tilde{Y}_i(1) -\tilde{Y}_i(0)]$$


[^1]: Question: What's the difference between a set and a space? 
