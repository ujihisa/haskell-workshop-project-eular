-- Project Euler problem1
-- 2009-03-08 09:11:14

main = print $ sum $ filter multi3or5 [1..999]

multi3or5 :: Int -> Bool
multi3or5 x 
  | x `mod` 3 == 0 = True
  | x `mod` 5 == 0 = True
  | otherwise      = False

