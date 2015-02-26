import Data.List (permutations, sort)

problem24 = read ((sort $ permutations "0123456789") !! 999999) :: Integer
