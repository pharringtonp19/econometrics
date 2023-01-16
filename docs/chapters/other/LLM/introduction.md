
??? info "References"

    - [A Neural Probabilistic Language Model](https://www.jmlr.org/papers/volume3/bengio03a/bengio03a.pdf)

### **Aim**

The aim is to "learn" $\mathbb{P}$. 

$$\Big(\{\textrm{Sequences of Words}\}, \mathcal{F}, \mathbb{P} \Big)$$

### **High Level Approach**

We can achieve this objective as follows: 

-  Learn a distribution over the first word of a sequence. 

$$\big(\mathcal{V}, \mathcal{F}, \mathbb{P} \big)$$

- Learn the conditional distribution 

$$\textrm{Model} :: \textrm{Params} \to \{\textrm{context}\} \to \mathbb{P}_{\mid \textrm{context}}$$

??? warning "To Do" 

    This should be made more exact

### **[A Neural Probabilistic Language Model](https://www.jmlr.org/papers/volume3/bengio03a/bengio03a.pdf)**

!!! Abstract "Essence"

    - transfer probability mass
    - In the proposed model, it will so generalize because “similar” words are expected to have a similar feature vector, and because the probability function is a smooth function of these feature values, a small change in the features will induce a small change in the probability

We can construct the condition distribution as follows. 

- First we introduce an embedding function. Given that our vocab is finite, we can represent this function as a matrix. i.e. $h$ is isomorphic to $\theta \in {| \mathcal{V} | \times m}$


$$h :: \mathcal{V} \to \mathcal{R}^p$$

- We introduce a function $g$ which maps subsequences of these embeddings into a conditional distribution

- Given this level of detail we could augment the signature of our model as follows:

$$\textrm{Model} :: \textrm{Embedding Functions} \to \textrm{Forward Functions} \to \{\textrm{context}\} \to \mathbb{P}_{\mid \textrm{context}}$$

??? warning "To Do" 

    What should the name of this forward function be?


### **Key Insights**

- "In high dimensions, it is crucial to distribute probability mass where it matters rather than uniformly in all directions around each training point."[^1]



[^1]: [A Neural Probabilistic Language Model](https://www.jmlr.org/papers/volume3/bengio03a/bengio03a.pdf)

