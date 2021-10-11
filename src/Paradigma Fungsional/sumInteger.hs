module SumInteger where

--DEFINISI DAN SPESIFIKASI
fungsi1 :: Int -> Bool
--fungsi1 x menghasilkan true jika integer x habis dibagi 100
fungsi2 :: Int -> Bool
{-fungsi2 x menghasilkan true jika integer x adalah bilangan genap dan
habis dibagi 10 atau jika integer x adalah bilangan ganjil dan habis dibagi 5-}
fungsi3 :: Int -> Bool
--fungsi3 x menghasilkan true jika integer x lebih kecil dari 10

--REALISASI
fungsi1 x = mod x 100 == 0
fungsi2 x = (mod x 2 == 0 && mod x 10 == 0) || (mod x 2 /= 0 && mod x 5 == 0)
fungsi3 x = x < 10

--DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int 
{- sumInteger menerima 2 (dua) buah integer positif (>0), misalnya m dan n, 
dan sebuah fungsi f kemudian menghasilkan penjumlahan dari semua integer 
antara m dan n (termasuk m dan n) yang memenuhi f dan menghasilkan 0 jika 
dalam selang m dan n tidak ada yang memenuhi f.-}

--REALISASI
sumInteger m n f
    | n < m = 0
    | f n = n + sumInteger m (n-1) f
    | otherwise = sumInteger m (n-1) f

--APLIKASI
--sumInteger 1 100 fungsi1 (hasil: 100)
--sumInteger 1 100 fungsi2 (hasil: 1050)
--sumInteger 25 25 fungsi3 (hasil: 0)
--sumInteger 1 100 (\x -> mod x 100 == 0) (hasil: 100)
{-sumInteger 1 100 
(\x -> (mod x 2 == 0 && mod x 10 == 0) || (mod x 2 /= 0 && mod x 5 == 0)) 
(hasil: 1050)-}
--sumInteger 25 25 (\x -> x < 10) (hasil: 0)