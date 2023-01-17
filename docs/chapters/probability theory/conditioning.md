### **Conditioning**

Given a measurable space

$$\big(\Omega, \mathcal{F}\big)$$

??? inline end note "Different Signature"

    If we had "rearranged" the signature of $C$ as follows: 

    $$C :: \mathcal{F}_+ \to \mathcal{M} \to \mathcal{M} $$

    Then $C \  \Omega$ would be the identity function

Let $\mathcal{M}$ be the set of probability measures defined on this space. Then conditioning can be defined as follows:

$$\begin{align*}
&C :: \mathcal{M} \to \mathcal{F}_+ \to \mathcal{M} \\
& C \ \mathbb{P} \ A  \ B = \frac{\mathbb{P}(A \cap B)}{\mathbb{P}(A)} \end{align*}$$





### **Independence**

Given a probability space

$$\big(\Omega, \mathcal{F}, \mathbb{P}\big)$$

- **Two Events**: $A, B$ are independent under $\mathbb{P}$ if 

$$\mathbb{P}( A \cap B) = \mathbb{P}(A) \mathbb{P}(B)$$

- **Finite Collection of Events**: $A_1, A_2, \dots, A_n$ are independent if 

$$\forall I_0 \subset \{1,2, \dots, n\}, \quad \mathbb{P}\big(\cap _{i \in I_0} A_i \big) = \prod _{i \in I_0}  \mathbb{P}(A_i)$$

- **Arbitrary Collection of Events**: $\{A_i, i \in I\}$

    - Independent if for any finite subset, the independent condition defined above holds

- **$\sigma$-algebra**

