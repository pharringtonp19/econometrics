
> These notes are taken from the following lectures: [Lecture](https://youtu.be/8n2_1EbST-8)

### **Reproducing Kernel Hilbert Spaces**

- Let $\mathcal{X}$ be a set 
- Let $F(\mathcal{X}, \mathcal{R})$ be the vector space of funcions defined on $\mathcal{X}$. i.e. 

$$f_1, f_2 \in F(\mathcal{X}, \mathcal{R}) \implies \alpha f_1 + \beta f_2 \in F(\mathcal{X}, \mathcal{R})$$

- Then $\mathcal{H}(\mathcal{X}, \mathcal{R}) \subset F(\mathcal{X}, \mathcal{R})$ is a **Reproducing Kernel Hilbert Space** if 
    1. $\mathcal{H}(\mathcal{X}, \mathcal{R})$ is a subspace of $F(\mathcal{X}, \mathcal{R})$
    2. $\Big(\mathcal{H}(\mathcal{X}, \mathcal{R}), \langle \cdot, \cdot  \rangle _{\mathcal{H}} \Big)$ is a Hilbert Space
    3. Evaluation Functionals, $\textrm{Apply}_x$, are continuous
    
    $$ \textrm{Apply} : \mathcal{X} \to \mathcal{H}(\mathcal{X}, \mathcal{R}) \to \mathcal{R}
     $$

**Note**: 

- We can think of Euclidean Spaces as a function space.

$$\mathcal{R} ^n \equiv \Big( F(\textrm{Fin} \ n, \mathcal{R}), \langle z_1, z_2  \rangle _{F} :=  \sum _{i=1}^n z_1(i)z_2(i)\Big)$$

- We can generalize this structure to  $l^2(\mathcal{X})$

$$\begin{align*}
l^2(\mathcal{X}):= \Big\{ f \mid f:\mathcal{X} \to \mathcal{R}, \quad 
\sum _{x\in \mathcal{X}} |f(x)|^2 < \infty \Big\}
\end{align*}$$


