module AlternateSort where

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

isOneElmt :: [Int] -> Bool
isOneElmt l = length l == 1

delElement :: Int -> [Int] -> [Int]
delElement x l
    | isEmpty l = []
    | x == head l = tail l
    | otherwise = konso (head l) (delElement x (tail l))

getSmallest :: [Int] -> Int
getSmallest l
    | isOneElmt l = head l
    | head l < head (tail l) = getSmallest (konso (head l) (tail (tail l)))
    | otherwise = getSmallest (tail l) 

maxList :: [Int] -> Int
maxList l
    | isOneElmt l = head l
    | head l > head (tail l) = maxList (konso (head l) (tail (tail l)))
    | otherwise = maxList (tail l)

alternateSortMax :: [Int] -> [Int]
alternateSortMax l
    | isEmpty l = []
    | otherwise = konso (maxList l) (alternateSort (delElement (maxList l) l))

alternateSort :: [Int] -> [Int]
alternateSort l
    | isEmpty l = []
    | otherwise = konso (getSmallest l) (alternateSortMax (delElement (getSmallest l) l))