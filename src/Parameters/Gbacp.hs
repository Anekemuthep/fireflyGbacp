module Parameters.Gbacp (function, numberSet) where
import System.IO
import Lib.Prelude  

function :: Int -> Int
function x = 2*x

numberSet :: [Int]
numberSet = [1,2,3,4,5,6]


--main :: IO ()
--main = do line <- getLine
--  putStrLn $ "you said " ++ line ++ " backwards!"