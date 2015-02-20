divisors :: Integer -> [Integer]
divisors n =
    let candidates = [2..(floor . sqrt $ (fromIntegral n :: Float))]
        matches = filter (\d -> n `mod` d == 0) candidates
    in 1 : (concat $ map (\d -> [d, n `div` d]) matches)

sumOfDivisors = sum . divisors

amicable :: Integer -> Bool
amicable a =
    let b = sumOfDivisors a
        x = sumOfDivisors b
    in x == a && b /= x

problem21 = sum $ filter amicable $ takeWhile (< 10000) [1..]
