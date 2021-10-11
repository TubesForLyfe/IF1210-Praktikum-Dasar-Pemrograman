module FilterList where

--DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

--DEFINISI DAN SPESIFIKASI
konso :: Int -> [Int] -> [Int]
-- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- integer) dan l (list of integer),
-- dengan e sebagai elemen pertama: e o l -> l'
-- REALISASI
konso e l = [e] ++ l

--DEFINISI DAN SPESIFIKASI
isPos :: Int -> Bool
--isPos n true n jika integer positif
isNeg :: Int -> Bool
--isNeg n true n jika integer negatif
isKabisat :: Int -> Bool
--isKabisat n true n jika integer masuk kategori tahun kabisat

--REALISASI
isPos n = n > 0
isNeg n = n < 0
isKabisat n = n > 0 && ((mod n 4 == 0 && mod n 100 /= 0) || (mod n 400 == 0))

--DEFINISI DAN SPESIFIKASI
filterList :: [Int] -> (Int -> Bool) -> [Int]
{- filterList l f melakukan “filter” atau penyaringan terhadap elemen 
list l dan menghasilkan list barudengan elemen yang lolos kriteria filter.-}

--REALISASI
filterList l f
    | isEmpty l = []
    | f (head l) = konso (head l) (filterList (tail l) f)
    | otherwise = filterList (tail l) f

--APLIKASI
--filterList [(-1),400,1,0,1404] isPos (hasil: [1,400,1404])
--filterList [(-1),400,1,0,1404] isNeg (hasil: [(-1)])
--filterList [(-1),400,1,0,1404] isKabisat (hasil: [400,1404])
--filterList [(-1),400,1,0,1404] (\x -> x > 0) (hasil: [1,400,1404])
--filterList [(-1),400,1,0,1404] (\x -> x < 0) (hasil: [(-1)])
{-filterList [(-1),400,1,0,1404] 
(\x -> x > 0 && ((mod x 4 == 0 && mod x 100 /= 0) || (mod x 400 == 0))) 
(hasil: [400,1404])-}