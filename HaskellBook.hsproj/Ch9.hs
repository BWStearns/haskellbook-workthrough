module Ch9 where
    
notSpace :: Char -> Bool
notSpace c = c /= ' '

myWords :: String -> [String]
myWords "" = []
myWords s = [takeWhile notSpace s] ++ (myWords (drop 1 $ dropWhile notSpace s))

-- List Comprehensions

foo = [1..30]

bar = (1, 2, 3)

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' pred (x:xs)
   | pred x     = x : filter' pred xs
   | otherwise  = filter' pred xs
   
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = if x == True 
              then True 
              else myOr xs


