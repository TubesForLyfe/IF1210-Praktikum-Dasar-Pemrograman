module SumIsiList where

--DEFINISI DAN SPESIFIKASI
isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya
-- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

--DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{-  sumIsiList l menghitung hasil penjumlahan dari seluruh elemen 
sebuah list of integer l yang tidak kosong. -}

--REALISASI
sumIsiList l
    | isOneElmt l == True = head l
    | otherwise = head l + sumIsiList (tail l)