This entire section is taken from Conal Elliot's presentation titled: "[Automatic Differentiation Made Easy Via Category Theory](https://www.youtube.com/watch?v=17gfCTnw6uE)"

- [Cateogy Theory is the abstract algebra of functions](https://youtu.be/ZKmodCApZwk?list=PL8Ky8lYL8-Oh7awp0sqa82o7Ggt4AGhyf&t=35)

> "If you have a tricky problem to solve, finding a language in which the solution to that problem is compositional is like the most important step. Well, defining the problem clearly is the most important step. The second one is finding a vocabulary in which is compositional."[^1]

- Let $a,b$ be Banach spaces (complete normed vector spaces)

$$\mathcal{D} :: (a \to b) \to (a \to (a -\circ b))$$

- Terminology: *The derivative of $f$ at $a$*

$$\underset{\varepsilon \to 0}{\lim} \frac{ \| f \ (a + \varepsilon) - f \ a + \mathcal{D} \ f \ a \ \varepsilon \|}{\| \varepsilon \|} = 0$$


Differentiation preserves parallel composition 

$$\begin{align*}&(\triangle) :: (a \to b) \to (a \to d) \to (a \to b \times d) \\ 
&(f \ \triangle \ g) \ a = (f \ a, g \ a)  \\ 
&\mathcal{D} \ (f \ \triangle \ g)  = \mathcal{D} \ f \ \triangle \ \mathcal{D} \ g \end{align*}$$

$$\begin{align*} &\hat{\mathcal{D}} :: (a \to b) \to (a \to (b \times (a \to b))) \\ 
& \hat{\mathcal{D}} \ f = f \ \triangle \ \mathcal{D} \ f\end{align*}$$

[^1]: Reference: [See here](https://youtu.be/17gfCTnw6uE?t=565)