module ListOfInteger where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
isOneElmt l = length l == 1

--DEFINISI DAN SPESIFIKASI
setUnion :: [Int] -> [Int] -> [Int]
{- setUnion menerima masukan dua buah list of integer (l1 dan l2) dengan 
elemen unik dan terurut membesar dan mengembalikan sebuah list of integer 
yang elemennya adalah semua elemen yang muncul di l1 dan/atau l2. 
List hasil tetap unik dan terurut membesar.-}

--REALISASI
setUnion l1 l2
    | isEmpty l1 && isEmpty l2  = []
    | isEmpty l1 = l2
    | isEmpty l2 = l1
    | not (isEmpty l1) && not (isEmpty l2) && (head l1 < head l2) 
    = konso (head l1) (setUnion (tail l1) l2)
    | not (isEmpty l1) && not (isEmpty l2) && (head l1 == head l2) 
    = konso (head l1) (setUnion (tail l1) (tail l2))
    | otherwise = konso (head l2) (setUnion l1 (tail l2))

maxList :: [Int] -> Int
maxList l
    | isOneElmt l = head l
    | head l > head (tail l) = maxList (konso (head l) (tail (tail l)))
    | otherwise = maxList (tail l)