module Parameters.Gbacp where

main = do line <- getLine
  let lineRev = reverse line
  putStrLn $ "you said " ++ lineRev ++ " backwards!"