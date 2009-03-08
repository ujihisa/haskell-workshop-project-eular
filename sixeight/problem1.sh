
ts = [3, 6 .. 1000]
fs = [5, 10 .. 999]

sumTwoList :: [Int] -> [Int] -> Int
sumTwoList xs ys = sum xs + sum ys

main = print $ sumTwoList ts fs
