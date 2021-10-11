module Pangkat where

--DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int 
{- pangkat menerima masukan berupa dua buah integer, a dan b, dan 
mengembalikan hasil berupa a^b (a pangkat b). Masukan diasumsikan 
selalu valid, yaitu a > 0 dan b ≥ 0.-}

--REALISASI
pangkat a b
    | b == 0 = 1
    | otherwise = pangkat a (b-1) * a

--APLIKASI
--pangkat 2 3 (hasil: 8)
--pangkat 5 6 (hasil: 15625)