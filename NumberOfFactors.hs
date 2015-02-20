module NumberOfFactors (numberOfFactors) where

import Data.Map (fromListWith, toList )
import PrimeFactors

numberOfFactors :: Integer -> Integer
numberOfFactors n =
    let occur = Data.Map.fromListWith (+) [(f, 1) | f <- primeFactors n]
        occurrences = toList occur
        exponents = Prelude.map snd occurrences
    in product $ Prelude.map (+1) exponents

