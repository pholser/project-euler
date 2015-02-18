import Data.Char (digitToInt)

sumOfDigits n = sum $ map digitToInt (show n)

f n = sumOfDigits (2^n) 

problem16 = f 1000
