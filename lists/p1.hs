import Prelude hiding (last)

last :: [a] -> a
last [x] = x
last (_ : xs) = last xs
last [] = error "Empty list has no last element"
