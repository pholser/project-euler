import Data.List

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors 2 = [2]
primeFactors 3 = [3]
primeFactors n = factors n []
    where factors n fs =
             let candidate = find (\x -> n `mod` x == 0) [2..floor.sqrt $ fromIntegral n]
             in case candidate of
                 Nothing -> fs ++ [n]
                 Just f -> factors (n `div` f) (fs ++ [f]) 

problem3 = maximum (primeFactors 600851475143)
