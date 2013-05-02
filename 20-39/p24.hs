import Data.List

p24 :: String -> [String]
p24 = sort . permutations

main :: IO ()
main = print $ p24 "0123456789" !! (10^6-1)