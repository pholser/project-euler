import PrimeFactors

problem10 = sum $ 2 : filter isPrime (filter odd [3..2000000])
