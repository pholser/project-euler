triangleNumber :: Integer -> Integer
triangleNumber 1 = 1
triangleNumber n = n + triangleNumber (n - 1)

factors :: Integer -> [Integer]
factors n = [f | f <- [1..n], n `mod` f == 0]
