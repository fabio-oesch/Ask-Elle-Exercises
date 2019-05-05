-- compared to the question the first element in the list is 0 and not 1
elementat :: [a] -> Int -> a
elementat [] _ = error "Index too large"
elementat (x:xs) 0 = x
elementat (_:xs) a = elementat xs (a - 1)
