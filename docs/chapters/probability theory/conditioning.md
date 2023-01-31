## **Conditioning**

Given a measurable space, $(\Omega, \mathcal{F})$, let $\mathcal{M}$ be the set of probability measures defined on this space. Then conditioning can be defined as follows:

$$\begin{align*}
&C :: \mathcal{M} \to \mathcal{F}_+ \to \mathcal{M} \\
& C \ \mathbb{P} \ A  \ B = \frac{\mathbb{P}(A \cap B)}{\mathbb{P}(A)} \end{align*}$$

Two things to note here: 

1. Notice the dependent structure between $\mathcal{M}$ and $\mathcal{F}_+$. The measure restricts the set of events that we can condition on. 
2. Notice also that if we rearrange the signature of the function, as done below, $C \  \Omega$ would be the identity function.

$$C ::\mathcal{F}_+ \to \mathcal{M} \to \mathcal{M}$$





