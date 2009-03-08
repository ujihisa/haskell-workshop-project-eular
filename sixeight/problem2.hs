
problem2 :: Int -> Int
problem2 n = sum $ takeWhile (< n) [x | x <- fibs, x `mod` 2 == 0]
  where
    fibs = 1:1:zipWith(+) fibs (tail fibs)

main = print $ problem2 4000000
