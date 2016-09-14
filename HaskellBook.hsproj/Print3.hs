-- print3.hs
module Print3 where

myGreeting :: String
myGreeting = "Hello " ++ "world!"

hello :: String
hello = "Hello"

world :: String
world = "World"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn sndGreeting
  where
    sndGreeting = concat [hello, " ", world]