-- / A Lib module.
module Lib
    ( someFunc
    , square
    , ggT
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- / Calculate square of a number.
square :: Num a => a -> a
square x = x * x

-- / Calculate the ggT
ggT :: Integer -> Integer -> Integer
ggT zahl1 zahl2 = 
    if zahl2 /= 0
    then if zahl1 > zahl2
         then ggT (zahl1-zahl2) zahl2
         else ggT zahl1 (zahl2-zahl1)
    else zahl1
    