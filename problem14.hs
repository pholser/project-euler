import Argmax
import Data.Function.Memoize

collatz' :: Integer -> [Integer]
collatz' 1 = [1]
collatz' n = n : collatz x
            where x = if even n then n `div` 2 else 3 * n + 1

collatz = memoize collatz'

problem14 = argmax (length . collatz) [999999, 999998..1]
