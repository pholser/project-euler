import Fib

problem2 :: Integer
problem2 = sum . filter even . takeWhile (<= 4000000) . map fib $ [0 ..]
