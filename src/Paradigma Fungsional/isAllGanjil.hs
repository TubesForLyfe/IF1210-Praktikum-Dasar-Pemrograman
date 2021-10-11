module IsAllGanjil where

isEmpty :: [Int] -> Bool
isEmpty l = null l

isAllGanjil :: [Int] -> Bool 
isAllGanjil l
    | isEmpty l = True
    | mod (head l) 2 == 0 = False
    | otherwise = isAllGanjil (tail l)