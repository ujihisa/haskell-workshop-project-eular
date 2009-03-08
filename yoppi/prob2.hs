-- Project_Euler problem2
-- 2009-03-08 09:31:51

main = print $ sum $ takeWhile (< 4000000) evenFibs

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
evenFibs = filter even fibs

