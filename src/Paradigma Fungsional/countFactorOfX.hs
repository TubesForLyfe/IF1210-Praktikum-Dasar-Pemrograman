module CountFactorOfX where

--DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

countFactorOfX :: Int -> [Int] -> Int
countFactorOfX n l
    | isEmpty l == True = 0
    | (mod (head l) n == 0) = 1 + countFactorOfX n (tail l)
    | otherwise = countFactorOfX n (tail l)