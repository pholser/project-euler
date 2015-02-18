import SumOfDigits
import Data.Function.Memoize

factorial' :: Integer -> Integer
factorial' 1 = 1
factorial' n = n * factorial' (n - 1)

factorial = memoize factorial'

problem20 = sumOfDigits $ factorial 100 
