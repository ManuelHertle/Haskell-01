module Main where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Data.List
import Lib

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStr "Geben Sie bitte eine Zahl ein(0 = Ende): "
    number <- readLn
    if number == 0
        then putStrLn "Ciao"
        else do
             putStrLn ("square(" ++ show number ++ ") = " ++ show (square number))
             main
