module Argmax (argmax) where

argmax :: (Ord b) => (a -> b) -> [a] -> a
argmax fn (x:xs) = foldl (\p x -> if fn p > fn x then p else x) x xs
