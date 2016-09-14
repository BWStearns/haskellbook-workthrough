module HaskellBook where

incAll :: [Int] -> [Int]
incAll xs = map (+ 4) xs

exclaim :: [Char] -> [Char]
exclaim s = s ++ "!"

fourth :: [Char] -> Char
fourth s = (!!) s 4

drop9 :: [Char] -> [Char]
drop9 = drop 9






