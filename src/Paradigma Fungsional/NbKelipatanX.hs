module NbKelipatanX where

-- DEFINISI DAN SPESIFIKASI
nbKelipatanX :: Int -> Int -> Int -> Int
{- nbKelipatanX yang menerima masukan dua buah integer positif 
(integer > 0), misalnya m dan n, serta sebuah integer positif lain, 
yaitu x, dan menghasilkan banyaknya bilangan kelipatan x di antara 
m dan n (m dan n termasuk) dengan menggunakan ekspresi rekursif.-}

-- REALISASI
nbKelipatanX m n x
    | n < m = 0 --Basis
    | mod n x == 0 = nbKelipatanX m (n-1) x + 1 --Rekurens
    | otherwise = nbKelipatanX m (n-1) x