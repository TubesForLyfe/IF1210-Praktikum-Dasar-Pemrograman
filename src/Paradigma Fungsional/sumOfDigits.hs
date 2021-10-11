module SumOfDigits where

sumOfDigits :: Int -> Int
sumOfDigits n
    | n <= 9    = n -- Basis
    | otherwise = sumOfDigits (div n 10) + (mod n 10) -- Rekurens

sumOfDigitsPosNeg :: Int -> Int
sumOfDigitsPosNeg n 
    | n < 0     = sumOfDigits ((-1)*n)
    | otherwise = sumOfDigits n