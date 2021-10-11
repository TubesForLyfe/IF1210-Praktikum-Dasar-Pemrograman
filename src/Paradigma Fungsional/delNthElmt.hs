module DelNthElmt where

--DEFINISI DAN SPESIFIKASI
konso :: Char -> [Char] -> [Char]
-- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- char) dan l (list of char),
-- dengan e sebagai elemen pertama: e o l -> l'
-- REALISASI
konso e l = [e] ++ l

delNthElmt :: Int -> [Char] -> [Char]
delNthElmt n l
    | n == 1 = tail l
    | otherwise = konso (head l) (delNthElmt (n-1) (tail l))