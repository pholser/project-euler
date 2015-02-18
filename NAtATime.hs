module NAtATime (nAtATime) where

nAtATime :: Int -> [a] -> [[a]]
nAtATime window xs = map (\n -> take window (drop n xs)) [0..(length xs - window)]
