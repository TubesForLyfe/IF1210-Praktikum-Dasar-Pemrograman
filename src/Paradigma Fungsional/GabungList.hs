module GabungList where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

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

well :: Int -> [Int] -> [Int]
well x l
    | isEmpty l = [x]
    | x <= head l = konso x l
    | otherwise = konso (head l) (well x (tail l))

cek :: [Int] -> [Int]
cek l
    | isEmpty l = []
    | otherwise = well (head l) (cek (tail l))

--DEFINISI DAN SPESIFIKASI
gabungList :: [Int] -> [Int] -> [Int]
-- gabungList menerima masukan dua buah list of integer l1 dan l2 dan mengembalikan
-- sebuah list of integer l3. l1 adalah list dengan bilangan sembarang dan l2 adalah
-- list yang sudah terurut serta l3 adalah gabungan dari kedua list dengan isi dari
-- list tersebut sudah terurut tidak mengecil (membesar atau sama).

--REALISASI
gabungList l1 l2
    | isEmpty l1 && isEmpty l2  = []
    | isEmpty l1 = l2
    | isEmpty l2 = cek l1
    | (head (cek l1) < head l2) = konso (head (cek l1)) (gabungList (tail (cek l1)) l2)
    | otherwise = konso (head l2) (gabungList (cek l1) (tail l2))