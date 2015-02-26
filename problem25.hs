import Fib

problem25 = (filter (\n -> fib n > 10^999) [1..]) !! 0
