

#### [Belkin's Claim](https://youtu.be/_lCM207PdxQ?t=654):  
(1) If we have a solution manifold and (2) if this manifold has curvature then the loss function is not locally convex. 

!!! tip "Proof"

    Assume we have a solution manifold. 

    $$f(y) \geq f(x) + \nabla f(x)^T(y-x)$$



??? info "Lemma"

    Minimizers of Convex Function form a Convex Set

    - Let $x_1, x_2$ be minimizers of a convex function $f$. i.e. $\forall x \ f(x) \geq x_1, x_2$
    - Then $\forall \alpha \in (0,1), \alpha x_1 + (1-\alpha x_2)$ is also a minimizer of $f$.
