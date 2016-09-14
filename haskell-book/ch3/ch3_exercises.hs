-- ch3_exercises.hs

excited :: String -> String
excited s = s ++ "!"

fourthElement :: [a] -> [a]
fourthElement xs = [xs !! 4]

thirdChar :: String -> Char
thirdChar s = s !! 2

-- only works with phrases like "Curry is awesome!"
justTheAwesome :: String -> String
justTheAwesome s = drop 9 s

