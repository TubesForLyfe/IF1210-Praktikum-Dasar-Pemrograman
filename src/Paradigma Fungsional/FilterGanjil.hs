module FilterGanjil where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}
   
--DEFINISI DAN SPESIFIKASI
isEmpty :: [Int] -> Bool
-- isEmpty(lc) true jika list of integer l kosong
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
filterGanjil :: [Int] -> [Int]
{- filterGanjil melakukan filtering terhadap sebuah list of 
integer li sehingga menghasilkan list dengan elemen yang hanya 
terdiri atas bilangan ganjil yang muncul di li. Asumsi: semua 
elemen li adalah bilangan integer positif atau 0. li mungkin kosong-}

--REALISASI
filterGanjil li
    | isEmpty li ==  True = []
    | mod (head li) 2 /= 0 = konso (head li) (filterGanjil (tail li))
    | otherwise = filterGanjil (tail li)