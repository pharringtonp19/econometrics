## Agda Problem Session 1: Introduction to Agda, types & functions (Tom) -- HoTTEST Summer School 2022)

#### Problem 1
```agda
_&&`_ :: Bool -> Bool -> Bool 
true &&` true = true 
true &&` false = false 
false &&` true = false 
false &&` false = false 
```

#### Problem [2] 
```agda 
_xor_ : Bool -> Bool -> Bool 
true xor false = true 
false xor true = true 
_ xor _ = false
```

#### Problem 3
```agda
_^_ : ℕ → ℕ → ℕ
n ^ zero = 1 
n ^ suc m = n * n ^ m 

_! : ℕ → ℕ
zero ! = zero 
suc n ! = (suc n) * (n !)
```

#### Problem 4
```agda 
min : ℕ → ℕ → ℕ
min zero _ = zero 
min _ zero = zero
min (suc a) (suc b) = suc (min a b) 
```

#### Problem 5 
```agda 
map : {X Y : Set} → (X → Y) → List X → List Y 
map f [] = [] 
map f (x :: xs) f x :: map f xs 
```
```

