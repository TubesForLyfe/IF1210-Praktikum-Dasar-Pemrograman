module DelElement where

isEmpty :: [Int] -> Bool
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l

delElement :: Int -> [Int] -> [Int]
delElement x l
    | isEmpty l = []
    | x == head l = tail l
    | otherwise = konso (head l) (delElement x (tail l))