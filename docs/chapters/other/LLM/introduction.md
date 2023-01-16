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

### **Conditional Distribution**

We can construct the condition distribution as follows. 

- First we introduce an embedding function. Given that our vocab is finite, we can represent this function as a matrix. i.e. $h$ is isomorphic to $\theta \in {| \mathcal{V} | \times m}$


$$h :: \mathcal{V} \to \mathcal{R}^p$$

- We introduce a function $g$ which maps subsequences of these embeddings into a conditional distribution


