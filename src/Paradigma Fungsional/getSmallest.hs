module GetSmallest where

isOneElmt :: [Int] -> Bool
isOneElmt l = length l == 1

konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l

getSmallest :: [Int] -> Int
getSmallest l
    | isOneElmt l = head l
    | head l < head (tail l) = getSmallest (konso (head l) (tail (tail l)))
    | otherwise = getSmallest (tail l) 