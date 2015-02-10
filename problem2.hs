fib :: Int -> Integer
fib = (map f [0 ..] !!)
    where f 0 = 1
          f 1 = 2
          f n = fib (n - 2) + fib (n - 1)

problem2 :: Integer
problem2 = sum . filter even . takeWhile (<= 4000000) . map fib $ [0 ..]
