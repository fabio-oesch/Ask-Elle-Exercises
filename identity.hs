identity :: Int -> [[Int]]
identity a = [replicate (j - 1) 0 ++ [1] ++ replicate (a - j) 0 | j <- [1..a]]
