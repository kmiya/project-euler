import Data.Time.Calendar

countSundays :: Int -> (Int,Day) -> Int
countSundays counter (w,date)
  | y >= 1901 = if w == 6 && d == 1 then counter+1 else counter
  | otherwise = counter
  where (y,_,d) = toGregorian date

main = print $ foldl countSundays 0 $
       zip weeks $ [fromGregorian 1900 1 1..fromGregorian 2000 12 31]
  where weeks = [x`mod`7 | x <- [0..]]