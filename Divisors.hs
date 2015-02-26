module Divisors (divisors, sumOfDivisors) where

import Data.Function.Memoize

divisors' :: Integer -> [Integer]
divisors' n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]

divisors = memoize divisors'

sumOfDivisors = sum . divisors

