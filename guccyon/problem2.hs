fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
even_fibs = [x|x <-fibs, x `mod` 2 == 0]

main = do print $ sum $ takeWhile (<4000000) even_fibs

