
xs = [1..100]

main = print $ (-) ((^2) $ sum xs) (sum $ map (^2) xs)
