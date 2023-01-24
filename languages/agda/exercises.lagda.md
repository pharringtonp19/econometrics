
#### Problem [1](https://youtu.be/gcm1ypZYKG4?t=273)
```agda
_&&`_ :: Bool -> Bool -> Bool 
true &&` true = true 
true &&` false = false 
false &&` true = false 
false &&` false = false 
```
