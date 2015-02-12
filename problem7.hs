import PrimeFactors

isPrime :: Integer -> Bool
isPrime n = primeFactors n == [n]

nthPrime n = (filter isPrime [1..]) !! (n - 1)

problem7 = nthPrime 10001
