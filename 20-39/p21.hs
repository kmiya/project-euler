factSum :: Int -> Int
factSum x = sum [y | y <- [1..x-1], x`mod`y == 0]

findAmicable :: Int -> Int
findAmicable x = if sumX > x && sumX <= 10000 && x == factSum sumX
                  then x+sumX else 0
  where sumX = factSum x

main = print $ sum $ map findAmicable [1..10000]