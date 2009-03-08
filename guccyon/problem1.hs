main = do print $ p1

p1 = sum [x|x <- [1..999], is_either_multi x]
is_either_multi n = n `mod`3 == 0 || n `mod` 5 == 0
