primes = 2 : [x| x <- [3,5..], is_prime x]
    where
      is_prime :: Integer -> Bool
      is_prime n = all (\x -> n`mod`x /= 0) $ takeWhile (< n `div` 2) primes
p7 = primes !! (10001-1)
main = do print p7
