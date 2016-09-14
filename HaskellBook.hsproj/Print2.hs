-- print2.hs
module Print2 where

main :: IO ()
main = do
  putStrLn "Count to four for me!"
  putStr "One, Two"
  putStr ", Three and "
  putStrLn "Four!"
  