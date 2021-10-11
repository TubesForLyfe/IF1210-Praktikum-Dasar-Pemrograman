module ListOfCharacter where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Char: [ ] atau [e o List] atau [List o e]
   Definisi type List of Char
   Basis: List of Char kosong adalah list of Char
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Char di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Char di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Char] -> Bool
-- isEmpty l true jika list of character l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of character l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e lc menghasilkan sebuah list of character dari e (sebuah character)  
   dan lc (list of integer), dengan cc sebagai elemen pertama: e o lc -> lc' -}
-- REALISASI
konso e lc = [e] ++ lc

delElement :: Char -> [Char] -> [Char]
delElement x l
    | isEmpty l = []
    | x == head l = (delElement x (tail l))
    | otherwise = konso (head l) (delElement x (tail l))

makeUnique :: [Char] -> [Char]
makeUnique lc
   | isEmpty lc = []
   | otherwise = konso (head lc) (makeUnique (delElement (head lc) (tail lc)))