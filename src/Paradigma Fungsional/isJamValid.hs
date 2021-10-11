module IsJamValid where

isJamValid :: Int -> Int -> Int -> Bool
isJamValid j m d = 
    (j>=0) && (j<=23) && (m>=0) && (m<=59) && (d>=0) && (d<=59)
    