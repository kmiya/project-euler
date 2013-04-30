import Data.Char
endNum = 5 * 9 ^ 5
main = print $ sum [x | x <- [2..endNum], let y = sum $ map ((^5) . digitToInt) (show x), x == y]