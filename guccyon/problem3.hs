
prime_factor :: Integer -> Integer -> [Integer]
prime_factor n i
    |n `div` 2 < i = [n]
    |n `mod` i == 0 = i : prime_factor (div n i) 2
    |otherwise = prime_factor n (i+1)

main = do print $ prime_factor 600851475143 2

