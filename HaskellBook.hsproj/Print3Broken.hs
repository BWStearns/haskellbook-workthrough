-- print3Broken.hs
module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting
  where greeting = "Yarrrrr2"
    
main :: IO ()
main = do
  putStrLn greeting
  printSecond
  where greeting = "Yarrrrr"