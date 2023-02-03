<!-- - the root n consistent part is needed to ensure to tha taylor expansion "works"?  -->

### **The Inference Ladder**

Our estimator can be defined via the following components:

$$\begin{align*}\theta_n &:: \Omega_n \to \mathcal{R}^{d(n)} \\ \\ 
f_n &:: \mathcal{R}^{d(n)}  \to \mathcal{X} \to \mathcal{R} \\ \\ 
\gamma _n &:: (\mathcal{X} \to \mathcal{R}) \to \Omega_n \to \mathcal{R} \end{align*}$$

Our estimator is constructed by composing these elements as follows: 

$$\begin{align*}\theta_n &:: \Omega_n \to \mathcal{R}^{d(n)} \\ \\ 
f_n \circ \theta_n &:: \Omega_n \to \mathcal{X} \to \mathcal{R} \\ \\ 
\gamma _n \circ f_n \circ \theta_n &:: \Omega_n \to \Omega_n \to \mathcal{R} \end{align*}$$

???+ tip "Random Function(als)"

    A random variable has the following type signature: 

    $$Z :: \Omega \to \mathcal{R}$$

    A random function as the following type signature: 

    $$Z :: \Omega \to \mathcal{X} \to \mathcal{R}$$

    A random funtional as the following type signature: 

    $$Z :: \Omega \to (\mathcal{X} \to \mathcal{R}) \to \mathcal{R}$$

    From this, we observe that $f_n \circ \theta_n$ is a **random function** and that $\gamma _n$ is a **random functional**

### **Partial Convergence**