compress :: Eq a => [a] -> [a]
compress = foldr (\x acc -> if null acc || x /= head acc then x : acc else acc) []

compress' :: (Eq a) => [a] -> a -> [a]
compress' [] _ = []
compress' (x:xs) prev = if prev == x then compress' xs prev else [x] ++ compress' xs x

