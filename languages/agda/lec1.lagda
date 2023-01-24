Agda functions take types as arguments. This makes sense to me. 

\begin{code}
const : (A : Set) -> (B : Set) -> A -> B -> A
\end{code}

Like in Haskell, we have Type Constructors 

\begin{code}
data List (X : Set) : Set where 
  [] : List 
\end{code}

