import NAtATime
import Data.Text as T
import Data.Text.IO as T

collapse x y = Prelude.zipWith (+) [Prelude.maximum xs | xs <- nAtATime 2 y] x

problem67 = do
    textLines <- fmap T.lines (T.readFile "p067_triangle.txt")
    let splitLines = Prelude.map T.words textLines
        rows = [Prelude.map (\x -> read (unpack x) :: Int) words | words <- splitLines]
        result = Prelude.head $ Prelude.foldr1 collapse rows
    return result
