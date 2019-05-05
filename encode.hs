encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = encode' 1 xs
    where encode' :: Eq x => Int -> [x] -> [(Int, x)]
          encode' a (x:[]) = [(a, x)]
          encode' a (x:xs) | x == head xs = encode' (a + 1) xs
                           | otherwise = (a, x): encode' 1 xs
