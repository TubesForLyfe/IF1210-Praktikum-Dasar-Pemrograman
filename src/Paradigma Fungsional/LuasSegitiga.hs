module LuasSegitiga where

--DEFINSI DAN SPESIFIKASI
luasSegitiga :: Float -> Float -> Float
{- luasSegitiga yang menerima masukan 2 buah bilangan real (float) a dan t 
dengan a = alas segitiga dan t = tinggi segitiga (asumsikan: a > 0, t > 0) 
dan menghasilkan luas segitiga berdasarkan rumus: luas = ½ * a * t-}

--REALISASI
luasSegitiga a t = 0.5 * a * t