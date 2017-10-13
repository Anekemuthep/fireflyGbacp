module Parameters.Gbacp where
    
import Text.CSV

main :: IO ()
main = do
  let fileName = "input.csv"
  input <- readFile fileName
  let csv = parseCSV fileName input
  either handleError doWork csv
  
handleError csv = putStrLn "error parsing"
doWork csv = (print.findOldest.tail) csv

findOldest :: [Record] -> Record
findOldest [] = []
findOldest xs = foldl
           (\a x -> if age x > age a then x else a) xs

age [a,b] = toInt a

toInt :: String -> Int
toInt = read