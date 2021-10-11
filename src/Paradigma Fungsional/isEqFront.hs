module IsEqFront where

--DEFINISI DAN SPESIFIKASI
isOneElmt :: [Char] -> Bool
-- isOneElmt(l) true jika list of char l hanya
-- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

--DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
{- isEqFront menerima masukan 2 buah list of character yang tidak kosong, 
misalnya T1 dan T2 dan menghasilkan true jika potongan awal list T2 
mengandung T1 (dengan panjang dan urutan karakter yang sama). 
Asumsi: Banyaknya elemen T2 selalu lebih dari atau sama dengan T1. -}

--REALISASI
isEqFront t1 t2
    | isOneElmt t1 = (head t1) == (head t2)
    | not (isOneElmt t1) && (head t1) == (head t2)
    = isEqFront (tail t1) (tail t2)
    | otherwise = False