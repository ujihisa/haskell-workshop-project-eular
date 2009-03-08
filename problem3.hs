--The prime factors of 13195 are 5, 7, 13 and 29.
--
--What is the largest prime factor of the number 600851475143 ?
--

-- primes :: [Integer]
-- primes = 2 : 3 : filter (\x -> all (\p -> x `rem` p /= 0) (takeWhile (\p -> p^2 <= x) primes)) [5, 7..]
-- 
-- problem3 :: Integer -> [Integer]
-- problem3 p = filter (\x -> p `rem` x == 0) (takeWhile (<= p) primes)
-- main = print $ problem3 600851475143


primeFactor :: Integer -> [Integer]
primeFactor n = f n 2
  where
    f :: Integer -> Integer -> [Integer]
    f n i
      |n `div` 2 < i  = [n]
      |n `mod` i == 0 = i : f (div n i) 2
      |otherwise      = f n (i+1)

main = print $ primeFactor 600851475143
