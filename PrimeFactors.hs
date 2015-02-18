module PrimeFactors (primeFactors, isPrime, nthPrime) where

import Data.List
import Data.Function.Memoize

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors 2 = [2]
primeFactors 3 = [3]
primeFactors n = factors n []
    where factors' n fs =
             let candidate = find (\x -> n `mod` x == 0) [2..floor.sqrt $ fromIntegral n]
             in case candidate of
                 Nothing -> fs ++ [n]
                 Just f -> factors' (n `div` f) (fs ++ [f])
          factors = memoize factors'

isPrime :: Integer -> Bool
isPrime n = length (primeFactors n) == 1

nthPrime n = (filter isPrime [1..]) !! (n - 1)
