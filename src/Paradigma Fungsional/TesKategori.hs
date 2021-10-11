module TesKategori where

tesKategori :: Int -> Int -> Int -> Bool

tesBerat :: Int -> Bool

tesBerat b = b > 30
tesKategori t b k
    | (t > 100 && b <= 150) = (k == 2 || k == 3 || k == 4)
    | (t <= 100 && b <= 150) 
    = (if tesBerat b then (k == 1 || k == 2) else k == 1)
    | (t <= 100 && b > 150) = (k == 2)
    | (t > 100 && t <= 200 && b > 150) = (k == 2 || k == 3)
    | otherwise = (k == 0)