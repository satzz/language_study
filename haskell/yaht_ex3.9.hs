-- http://www.umiacs.umd.edu/~hal/docs/daume02yaht.pdf

my_map f [] = []
my_map f (x:xs) = (f x : my_map f xs)