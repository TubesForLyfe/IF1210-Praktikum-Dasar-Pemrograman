module IsOrdered where

--DEFINISI DAN SPESIFIKASI
isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya
-- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

isOrdered :: [Int] -> Bool
isOrdered l
    | isOneElmt l == True = True
    | (head l) < (head (tail l)) = isOrdered (tail l)
    | otherwise = False