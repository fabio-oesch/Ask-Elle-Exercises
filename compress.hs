compress :: Eq a => [a] -> [a]
compress (x:xs) = compress' x xs
   where compress' :: Eq a => a -> [a] -> [a]
         compress' y (x:xs) | xs == [] = y : if y == x then [] else [x]
                            | y == x = compress' y xs
                            | otherwise = y : compress' x xs

test :: Num a => [a]
test = [2,2,2,1,2,2,3,3,3,3,3,2]
