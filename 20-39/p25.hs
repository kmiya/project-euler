fib :: Int -> Int
fib n = fibs !! n where fibs = 0:1:zipWith (+) fibs (tail fibs)

p25 :: Int -> Int
p25 n = if 1000 <= (length $ show $ fib n) then n else p25 (n+1)

main :: IO ()
main = print $ p25 1