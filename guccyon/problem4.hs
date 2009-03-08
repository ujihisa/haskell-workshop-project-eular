is_palindrome :: Integer -> Bool
is_palindrome n = show(n) == (reverse (show n))
p4 = [x*y|x <-[100..999], y <- [100..999], is_palindrome(x*y)]

main = do print $ maximum p4
