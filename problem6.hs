problem6 :: Integer -> Integer
problem6 n =
    let seq = [1..n]
        sumOfSquares = sum (map (^2) seq)
        squareOfSum = (sum seq) ^ 2
    in abs (sumOfSquares - squareOfSum)
