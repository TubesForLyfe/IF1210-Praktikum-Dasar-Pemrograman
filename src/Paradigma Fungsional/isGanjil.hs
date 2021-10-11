module IsGanjil where

isGanjil :: Int -> Bool
isGanjil n
    | n <= 1    = n == 1 -- Basis
    | otherwise = isGanjil (n-2) -- Rekurens