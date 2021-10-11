module SortList where

isOneElmt :: [Int] -> Bool
isOneElmt l = length l == 1

isEmpty :: [Int] -> Bool
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l

well :: Int -> [Int] -> [Int]
well x l
    | isEmpty l = [x]
    | x <= head l = konso x l
    | otherwise = konso (head l) (well x (tail l))

sortList :: [Int] -> [Int]
sortList l
    | isOneElmt l = [head l]
    | otherwise = well (head l) (sortList (tail l))