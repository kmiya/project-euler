p48 = reverse . take 10 . reverse . show . sum . map (\x -> x^x)

main = print $ p48 [1..1000]