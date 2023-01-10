
> These notes are taken from the following lectures: [Lecture](https://youtu.be/8n2_1EbST-8)

### **Definitions**

??? tip "Dual Space"

    Let $X$ be a vector space. Then the dual space of $X$, denoted by $X^*$, is the set of linear bounded functions on $X$. 

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

- This structure (set $+$ the norm/inner product)[^1] is an RKHS since 

$$\| E_x \| \leq \| f \| _{l^2(\mathcal{X})}$$

Consider the following function 

$$\begin{align*}
&\Lambda :: \mathcal{H} \to \mathcal{H} \to \mathcal{R}\\ 
&\Lambda \ y \ x = \langle x, y \rangle _{\mathcal{H}}
\end{align*}$$

We can re-write the signature of the function as follows:

$$\begin{align*}
&\Lambda :: \mathcal{H} \to \mathcal{H}^*\\ 
\end{align*}$$

If $H$ is a RKHS, then by definition, $\textrm{Apply} \ x$ is a linear bounded functional. By Reisz representation theorem, 

$$\textrm{Apply} \ x \ f = \langle r \ x, f \rangle _{\mathcal{H}} = f \ x $$

Then we can define the Kernel as follows: 

$$\begin{align*}
&K :: \mathcal{X} \to \mathcal{X} \to \mathcal{R}  \\ 
&K \ x \ y = r \ x \ y = \langle r \ y,  r \ x \rangle  \end{align*}$$





[^1]: I really think the key part of this structure is the inner product