
#### Problem [1](https://youtu.be/gcm1ypZYKG4?t=273)
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
a ^ zero = 1 
zero ^ _ = zero 
suc a ^ b =  * (a ^ b) 
```
