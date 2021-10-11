module MergeList where

--DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI
konso :: Int -> [Int] -> [Int]
-- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- integer) dan l (list of integer),
-- dengan e sebagai elemen pertama: e o l -> l'
-- REALISASI
konso e l = [e] ++ l

mergeList:: [Int] -> [Int] -> [Int]
mergeList li1 li2
    | isEmpty li1 && isEmpty li2  = []
    | isEmpty li1 = li2
    | isEmpty li2 = li1
    | not (isEmpty li1) && not (isEmpty li2) && (head li1 < head li2) 
    = konso (head li1) (mergeList (tail li1) li2)
    | otherwise = konso (head li2) (mergeList li1 (tail li2))