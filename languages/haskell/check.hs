f :: Float -> Float 
f a  = a + 2.0

x :: Float -> Float 
x a = a * a 

g :: (Float -> Float) -> Float -> Float 
g f a = f a 