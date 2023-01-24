> [Legitimize](https://youtu.be/37ENUdO8IVU?t=1202) failure

### Questions
  - what does $\forall \{A\}$ mean?

```
_!!_ : \forall {A} -> List A -> \bN -> A 
[] !! n = ? 
(x :: xs) !! zero = x
(x :: xs) !! suc n = xs !! n 
```

### Observations
- notice the similarity between `[]` and `nothing`

```
data Vec (X : Set) : (n : \bN) -> Set where 
  
