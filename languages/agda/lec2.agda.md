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
