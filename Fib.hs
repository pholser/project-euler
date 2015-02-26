module Fib (fib) where

fib :: Int -> Integer
fib = (map f [0 ..] !!)
    where f 0 = 0
          f 1 = 1
          f 2 = 1
          f n = fib (n - 2) + fib (n - 1)
