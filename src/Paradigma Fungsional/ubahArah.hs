module UbahArah where

ubahArah :: Int -> Int -> Int 
ubahArah s r
    | r == 0 = s
    | r >= 1 = if s == 359 then ubahArah 0 (r-1) else ubahArah (s+1) (r-1) 
    | otherwise = if s == 0 then ubahArah 359 (r+1) else ubahArah (s-1) (r+1)

--APLIKASI
--ubahArah 359 0 (hasil: 359)
--ubahArah 0 (-1) (hasil: 359)