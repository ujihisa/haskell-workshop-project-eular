sum_square :: [Integer] -> Integer
sum_square lst = sum $ map (^2) lst
square_sum :: [Integer] -> Integer
square_sum lst = (sum lst) ^ 2

p6 = (square_sum [1..100]) - (sum_square [1..100])
main = do print p6

