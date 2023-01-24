> [Legitimize](https://youtu.be/37ENUdO8IVU?t=1202) failure

### Questions
  - what does $\forall \{A\}$ mean?
  - Right of the collon?
  - `Fin n`


### Main Result
```
data Vec (X : Set) : \bN -> Set where 
  [] : Vec X zero 
  _::_ : \forall {n} -> Vec X n -> Vec X (suc n) 
```

```
data Fin ?
```

```
_!!_ : \forall {A} -> List A -> \bN -> A 
[] !! n = ? 
(x :: xs) !! zero = x
(x :: xs) !! suc n = xs !! n 
```

### Observations
- notice the similarity between `[]` and `nothing`

  
