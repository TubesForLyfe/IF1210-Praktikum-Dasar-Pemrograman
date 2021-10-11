module IsDateValid where

isDateValid :: Int -> Int -> Int -> Bool

isKabisat :: Int -> Bool
isKabisat y = ((mod (y + 1900) 4 == 0) && (mod (y + 1900) 100 /= 0)) ||
                (mod (y + 1900) 400 == 0)
isDateValid d m y
    | ((m == 1) || (m == 3) || (m == 5) || (m == 7) || (m == 8) || (m == 10) || (m == 12))
        = (d >= 1) && (d <= 31) && (y >= 0) && (y <= 99)
    | ((m == 4) || (m == 6) || (m == 9) || (m == 11))
        = (d >= 1) && (d <= 30) && (y >= 0) && (y <= 99)
    | (m == 2)
        = (d >= 1) && (if (isKabisat y) then (d <= 29) else (d <= 28)) && (y >= 0) && (y <= 99)
    | otherwise = False