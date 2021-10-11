module OffsetList where

konso :: Float -> [Float] -> [Float]
konso e l = [e] ++ l

--DEFINISI DAN SPESIFIKASI
idx :: Float -> Float 
--idx x mengirimkan nilai x

p1 :: Float -> Float 
--p1 x mengirimkan nilai x + 1

p2 :: Float -> Float 
--p2 x mengirimkan nilai x + 2

--REALISASI
idx x = x
p1 x = x + 1
p2 x = x + 2

--DEFINISI DAN SPESIFIKASI
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{- offsetList menerima masukan dua buah fungsi, misalnya f dan g, serta dua 
buah bilangan riil (float), a dan b. Fungsi offsetList akan menghasilkan 
sebuah list of float yang merupakan penerapan fungsi f terhadap bilangan float 
antara a dan b, dimulai dari a dengan increment menggunakan fungsi g. -}

--REALISASI
offsetList f g a b
    | a > b = []
    | otherwise = konso (f a) (offsetList f g (g a) b)