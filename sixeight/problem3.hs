
-- transribed as sya kyo

primeFactor :: Integer -> Integer -> [Integer]
primeFactor n i
  | n `div` 2 < i  = [n]
  | n `mod` i == 0 = i : primeFactor (div n i) 2
  | otherwise      = primeFactor n $ i + 1

main = print $ primeFactor 600851475143 2
