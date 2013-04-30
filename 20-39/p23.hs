import Data.Set

main = do
  let ls = [x | x <- [1..28123], x < sum [y | y <- [1..x-1], x `mod` y == 0]]
  let sums = fromList [x+y|x <- ls, y <- ls]
  print $ sum $ toList $ difference (fromList [1..28123]) sums