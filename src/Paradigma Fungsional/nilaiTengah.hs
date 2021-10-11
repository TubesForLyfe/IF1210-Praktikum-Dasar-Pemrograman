module NilaiTengah where

nilaiTengah :: Int -> Int -> Int -> Int
nilaiTengah a b c = 
    if (a > b) then
        if (a < c) then a
        else c
    else -- a < b
        if (b < c) then b
        else c