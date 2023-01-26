> [Legitimize](https://youtu.be/37ENUdO8IVU?t=1202) failure


### Topics
- [Indexed datatypes](https://agda.readthedocs.io/en/v2.5.4/language/data-types.html#indexed-datatypes) (local binding)


- [Many](https://www.cse.chalmers.se/~ulfn/papers/afp08/tutorial.pdf) languages allow you to define lists (or arrays) of a given size, but what makes Vec a true dependent type is that the length of the list can be an arbitrary term, which need not be known at compile time.
- Giving things a name `(X : Set)`

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
- The empty list constructor is really interesting becomes it creates a vector of "size" 0.

```
data Fin : N 
```

```
_!!_ : \forall {A} -> List A -> \bN -> A 
[] !! n = ? 
(x :: xs) !! zero = x
(x :: xs) !! suc n = xs !! n 
```

### Observations
- notice the similarity between `[]` and `nothing`

  
