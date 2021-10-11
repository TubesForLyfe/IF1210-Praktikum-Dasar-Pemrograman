module MataUang where

mataUang :: Int -> Int -> Int -> Int -> (Int, Int)
mataUang q d n p =
    let uang = q * 25 + d * 10 + n * 5 + p
    in (div uang 100, mod uang 100)
