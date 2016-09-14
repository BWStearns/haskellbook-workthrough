-- print3.hs
module Print3 where

myGreeting :: String

myGreeting = "hello" ++ " world!"

hello :: String
hello = "Hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]
