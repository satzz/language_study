module Test where

mysignum x =
    if x < 0
       then -1
       else if x > 0
         then 1
         else 0
f x =
  case x of 
    0 -> 1
    1 -> 5
    2 -> 2
    _ -> -1

square x = x * x

roots a b c =
  let det = sqrt(b*b-4*a*c)
      twice_a = 2 * a
  in ( (-b + det) / twice_a,
       (-b - det) / twice_a)

factorial 1 = 1
factorial n = n * factorial ( n-1 )

my_exponent a 1 = a
my_exponent a b = a * my_exponent a (b-1)

my_length [] = 0
my_length (x:xs) = 1 + my_length xs

my_filter p [] = []
my_filter p (x:xs) =
  if p x 
    then x : my_filter p xs
    else my_filter p xs


  