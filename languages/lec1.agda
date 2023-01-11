data Bool : Set where
  true : Bool
  false : Bool

not : Bool → Bool
not true = false
not false = true

idBool : {X : Set} → X → X
idBool x = x

example : {P Q : Set} → P → (Q → P)
example {P} {Q} p = f
  where
    f : Q → P
    f _ = p

example' : {P Q : Set} → P → (Q → P)
example' p = λ q → p

open import binary-products

ex : {P Q : Set} → P × Q → Q × P
ex (p , q) = (q , p) 

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ


{-# BUILTIN NATURAL ℕ #-}

three' : ℕ
three' = 3

D : Bool → Set
D true = ℕ
D false = Bool 

if_then_else_ : {X : Set} → Bool → X → X → X
if true then x else y = x
if false then x else y = y

if[_]_then_else_ : (X : Bool → Set) → (b : Bool) → X true → X false → X b
if[ X ] true then x else y = x
if[ X ] false then x else y = y

unfamiliar : (b : Bool) → D b
unfamiliar b = if[ D ] b then 3 else false

data List (A : Set) : Set where 
  [] : List A
  _::_ : A → List A → List A

ff : Set → Set -- Type Constructor 
ff = List

infixr 10 _::_ 

sample-list : List ℕ
sample-list = 1 :: 3 :: 2 :: []

length : {X : Set} → List X → ℕ
length [] = 0
length (x :: xs) = suc (length xs)

-- Principle of induction on ℕ 
ℕ-elim : {A : ℕ → Set}
       → A 0 -- base case
       → ((k : ℕ) → A k → A (suc k)) -- induction step  
       → (n : ℕ) → A n 
ℕ-elim {A} a₀ f  = h
  where
    h : ( n : ℕ) → A n
    h zero = a₀
    h (suc n) = f n (h n)


