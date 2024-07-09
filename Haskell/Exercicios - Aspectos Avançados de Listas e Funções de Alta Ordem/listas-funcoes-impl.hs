penultimo :: xs
penultimo 

{-

-}

element :: Int -> [Int] -> Int
element 0 (x:_) = x
element n (x:xs) = element (n-1) xs