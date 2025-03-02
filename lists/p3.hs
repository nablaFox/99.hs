elementAt :: [a] -> Int -> a
elementAt [] _ = error "Out of bounds"
elementAt (x : xs) k
  | k == 1 = x
  | otherwise = elementAt xs (k - 1)

-- uncurried version
elementAt' :: ([a], Int) -> a
elementAt' ([], _) = error "Out of bounds"
elementAt' (x : _, 1) = x
elementAt' (_ : xs, k) = elementAt' (xs, k - 1)

-- safe version
elementAtSafe :: [a] -> Int -> Maybe a
elementAtSafe [] _ = Nothing
elementAtSafe (x : xs) k
  | k == 1 = Just x
  | otherwise = elementAtSafe xs (k - 1)

-- !! operator
elementAt'' :: [a] -> Int -> a
elementAt'' xs k = xs !! (k - 1)
