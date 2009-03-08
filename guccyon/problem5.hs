lcm4list :: [Integer] -> Integer
lcm4list [] = 1
lcm4list (x:xs) = lcm x $ lcm4list xs

main = do print $ lcm4list [1..20]
