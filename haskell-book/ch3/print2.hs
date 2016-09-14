-- Print2.hs
module Print2 where

main :: IO ()
main = do
    putStrLn "Counting to four: "
    putStr "One, Two"
    putStr ", Three, and"
    putStrLn " Four!"
