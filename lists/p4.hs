import Prelude hiding (foldr, length)

length :: [a] -> Int -> Int
length [] acc = acc
length (x : xs) acc = length xs (acc + 1)

-- with foldr
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f z [] = z
foldr f z (x : xs) = f x (foldr f z xs)

length' :: [a] -> Int
length' xs = foldr (\a acc -> acc + 1) 0 xs
