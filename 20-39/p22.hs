import Data.List
import Data.Char

main = do
  input <- getContents
  print $ sum $ map (\(x,y) -> x*y) $ 
    zip [1..] $ map (sum . map (\x->ord x - ord 'A' + 1)) $ 
    sort $ lines input