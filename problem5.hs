import Data.List
import Data.Map
import PrimeFactors

problem5 = 
    let divisors = [1..20]
        occurrences = [Data.Map.fromListWith (+) [(f, 1) | f <- primeFactors n] | n <- divisors]
        collapsed = toList $ Data.List.foldl (Data.Map.unionWith max) (singleton 2 0) occurrences
        exponentiated = Data.List.map (\(n,e) -> n^e) collapsed
    in product exponentiated
