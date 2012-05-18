module Main
       where

import IO
import Random
import List

main = do
  hSetBuffering stdin LineBuffering
  numbers <- readNumbers []
  putStrLn ("the inputs are : " ++ show numbers)
  putStrLn ("the sum is :" ++ (show . sum $ numbers))
  putStrLn ("the product is :" ++ (show (foldl (*) 1 numbers)))
  putStrLn ("the factorials are : " ++ show (map factorial numbers))
  
readNumbers :: [Int] -> IO [Int]
readNumbers list = do
  putStrLn "Give me a number (or 0 to stop): "
  line <- getLine
  let num = read line
  if num == 0
    then do return list
    else do readNumbers (list ++ [num])
            
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * (factorial (n - 1))

-- printFactorial :: [Int] -> IO 
printFactorial [] = do
  return
printFactorial [x:xs] = do
  putStrLn ("The factorial of " ++ x ++ "is :" ++ (show . factorial $ x))
  printFactorial xs
  



            


     
      