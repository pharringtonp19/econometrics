> [The](https://youtu.be/3FZDy6zX_h4?t=2869) unreasonable effectiveness of honesty

Agda functions take types as arguments. This makes sense to me. 

```
const : (A : Set) -> (B : Set) -> A -> B -> A
```

Like in Haskell, we have Type Constructors 

```
data List (X : Set) : Set where 
  [] : List X
  _::_ : X -> List X -> List X
```

```
append : {X : Set} -> List X -> List X -> List X 
append [] ys = ys 
append (x :: xs) ys = x :: append xs ys --the data promise
```

