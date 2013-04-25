import Data.List (maximumBy)
import Data.Ord (comparing)

chain :: (Integral a, Num b) => a -> b -> b
chain 1 c = c
chain n c
  | even n = chain (n `div` 2) (c + 1)
  | otherwise = chain (n * 3 + 1) (c + 1)

p14 :: (Integral a, Num b, Ord b) => a -> (a, b)
p14 given = maximumBy (comparing snd) $ [(n, chain n 1) | n <- [2..given] ]

main = print $ p14 1000000