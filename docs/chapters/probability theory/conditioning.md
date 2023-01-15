### **Conditioning**

Given a measurable space

$$\big(\Omega, \mathcal{F}\big)$$

Let $\mathcal{M}$ be the set of probability measures defined on this space. Then conditioning can be defined as follows:

$$\begin{align*}
&C :: \mathcal{M} \to \mathcal{F}_+ \to \mathcal{M} \\
& C \ \mathbb{P} \ A  \ B = \frac{\mathbb{P}(A \cap B)}{\mathbb{P}(A)} \end{align*}$$

??? warning "To Do"

    Is it possible to encode the postivity requirement of $A$ into the signature of $C$? Is this an example of a dependent type? As in, the set of possible events that we can condition on depends on the probability measure. 

### **Independence**

Given a probability space

$$\big(\Omega, \mathcal{F}, \mathbb{P}\big)$$

$A, B$ are independent under $\mathbb{P}$ if 

$$\mathbb{P}( A \cap B) = \mathbb{P}(A) \mathbb{P}(B)$$

