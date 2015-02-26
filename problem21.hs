import Divisors

amicable :: Integer -> Bool
amicable a =
    let b = sumOfDivisors a
        x = sumOfDivisors b
    in x == a && b /= x

problem21 = sum $ filter amicable $ takeWhile (< 10000) [1..]
