problem1 :: Int
problem1 = sum . filter (\n -> n `mod` 3 == 0 || n `mod` 5 == 0) . takeWhile (< 1000) $ [1..]
