dropevery :: [a] -> Int -> [a]
dropevery [] _ = []
dropevery xs a = dropevery' xs (a - 1)
    where dropevery' [] _ = []
          dropevery' (x:xs) 0 = dropevery xs a
          dropevery' (x:xs) a = x : dropevery' xs (a - 1)

test = [1,2,3,4,5,6,7,8,9]
