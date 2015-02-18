module SumOfDigits (sumOfDigits) where

import Data.Char (digitToInt)

sumOfDigits n = sum $ map digitToInt (show n)
