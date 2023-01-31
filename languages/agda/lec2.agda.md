### Key Ideas

> [Legitimize](https://youtu.be/37ENUdO8IVU?t=1202) failure

> [Dependent Case Split](https://youtu.be/37ENUdO8IVU?t=2487)

- [Many](https://www.cse.chalmers.se/~ulfn/papers/afp08/tutorial.pdf) languages allow you to define lists (or arrays) of a given size, but what makes Vec a true dependent type is that the length of the list can be an arbitrary term, which need not be known at compile time.
- Giving things a name `(X : Set)`

### Questions
  - what does $\forall \{A\}$ mean?
  - Right of the collon?
  - `Fin n`


### Main Result
- [Indexed datatypes](https://agda.readthedocs.io/en/v2.5.4/language/data-types.html#indexed-datatypes) (local binding)
```
data Vec (X : Set) : ℕ -> Set where 
  [] : Vec X zero 
  _::_ : {n : ℕ} -> Vec X n -> Vec X (suc n) 
```
- The empty list constructor is really interesting becomes it creates a vector of "size" 0.

```
data Fin : ℕ → Set where 
  zero : {n : ℕ} → Fin (suc n)
  suc : {n : ℕ} → Fin n → Fin (suc n)
```

```
_!!_ : {A : Set} {n : ℕ} → Vec A n → Fin n → A
[] !! () 
(x :: xs) !! zero 
```

### Observations
- notice the similarity between `[]` and `nothing`

  
