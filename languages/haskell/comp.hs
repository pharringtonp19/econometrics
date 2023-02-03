f :: Float -> Int -> Float 
f _ 0 = 1 
f x a = x * (f x (a - 1))

x :: Float -> Float 
x a = a + 1 

