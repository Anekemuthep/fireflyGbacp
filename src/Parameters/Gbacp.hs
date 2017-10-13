module Parameters.Gbacp where
    
import Text.CSV

main :: IO ()
main = do line <- getLine
  let lineRev = reverse line
  putStrLn $ "you said " ++ lineRev ++ " backwards!"