import List

f :: Integer -> Integer
f n
  | even n    = n `div` 2
  | otherwise = 3 * n + 1

fs :: Integer -> [Integer]
fs n = (takeWhile (/= 1) $ iterate f n) ++ [1]

maxWith :: (Ord b) => (a -> b) -> [a] -> a
maxWith f xs = maximumBy (\i j -> compare (f i) (f j)) xs

main = print $ maxWith (length . fs) [1..1000000]
