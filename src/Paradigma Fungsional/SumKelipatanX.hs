module SumKelipatanX where

-- DEFINISI DAN SPESIFIKASI
sumKelipatanX :: Int -> Int -> Int -> Int
{- sumKelipatanX yang menerima masukan dua buah integer positif 
(integer > 0), misalnya m dan n, serta sebuah integer positif lain, 
yaitu x, dan menghasilkan banyaknya bilangan kelipatan x di antara 
m dan n (m dan n termasuk) dengan menggunakan ekspresi rekursif.-}

-- REALISASI
sumKelipatanX m n x
    | n < m = 0 --Basis
    | mod n x == 0 = sumKelipatanX m (n-1) x + n --Rekurens
    | otherwise = sumKelipatanX m (n-1) x