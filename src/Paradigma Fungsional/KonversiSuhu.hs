module KonversiSuhu where

-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{- konversiSuhu digunakan untuk mengkonversi suhu dari satu satuan 
Celcius ke satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin. -}

-- REALISASI
konversiSuhu t k
    | k == 'R'  = t * 4/5
    | k == 'F'  = (t * 9/5) + 32
    | k == 'K'  = t + 273.15