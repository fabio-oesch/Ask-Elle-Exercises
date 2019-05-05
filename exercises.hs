-- myconcat
myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat [[]] = []
myconcat (xs:xss) = xs ++ myconcat xss

-- myfilter
myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []
myfilter f (x:xs) | f x = x: myfilter f xs
                  | otherwise = myfilter f xs
