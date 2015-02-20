import NumberOfFactors
import Data.Function.Memoize

triangleNumber' :: Integer -> Integer
triangleNumber' 1 = 1
triangleNumber' n = n + triangleNumber' (n - 1)

triangleNumber = memoize triangleNumber'

problem12 n = (filter (\t -> numberOfFactors t > n) (Prelude.map triangleNumber [1..])) !! 0
