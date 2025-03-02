butLast :: [a] -> a
butLast [] = error "Empty list has no last element"
butLast [x] = x
butLast [x, y] = x
butLast (_ : xs) = butLast xs
