import Divisors
import Data.Function.Memoize

abundant' :: Integer -> Bool
abundant' n = sumOfDivisors n > n

abundant = memoize abundant'

twoSums :: Integer -> [(Integer, Integer)]
twoSums n = [(a,b) | a <- [1..n `div` 2], b <- [n - a]]

nonAbundantSum :: Integer -> Bool
nonAbundantSum n =
    all (\(a,b) -> not (abundant a) || not (abundant b)) (twoSums n)

problem23 = sum $ filter nonAbundantSum [1..28123]
