module LuasBS where

-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int
{-  luasBS merupakan fungsi untuk menghitung luas bujur sangkar 
dengan panjang sisi s (sebuah integer > 0).-}

-- REALISASI
luasBS s
    | s == 1    = 1 -- Basis
    | otherwise = luasBS (s-1) + 2*s - 1 -- Rekurens