module SumRange where

sumRange :: Int -> Int -> Int
sumRange a b
    | a == b    = a -- Basis
    | otherwise = sumRange a (b-1) + b -- Rekurens