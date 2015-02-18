import PrimeFactors
import Data.Map (fromListWith, toList)
import Data.Function.Memoize

triangleNumber' :: Integer -> Integer
triangleNumber' 1 = 1
triangleNumber' n = n + triangleNumber' (n - 1)

triangleNumber = memoize triangleNumber'

numberOfFactors :: Integer -> Integer
numberOfFactors n =
    let occur = Data.Map.fromListWith (+) [(f, 1) | f <- primeFactors n]
        occurrences = toList occur
        exponents = Prelude.map snd occurrences
    in product $ Prelude.map (+1) exponents

problem12 n = (filter (\t -> numberOfFactors t > n) (Prelude.map triangleNumber [1..])) !! 0
