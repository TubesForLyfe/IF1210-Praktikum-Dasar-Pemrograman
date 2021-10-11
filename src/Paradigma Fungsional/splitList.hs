module SplitList where

--DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
-- isEmpty(lc) true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI
konso :: Int -> [Int] -> [Int]
-- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- integer) dan l (list of integer),
-- dengan e sebagai elemen pertama: e o l -> l'
-- REALISASI
konso e l = [e] ++ l

splitListPositif :: [Int] -> [Int]
splitListPositif li
    | isEmpty li = []
    | head li >= 0 = konso (head li) (splitListPositif (tail li))
    | otherwise = splitListPositif (tail li)

splitListNegatif :: [Int] -> [Int]
splitListNegatif li
    | isEmpty li = []
    | head li < 0 = konso (head li) (splitListNegatif (tail li))
    | otherwise = splitListNegatif (tail li)

splitList :: [Int] -> ([Int],[Int])
splitList li = (splitListPositif li, splitListNegatif li)