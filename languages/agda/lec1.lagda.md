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

