module WordNumber where
    
import Data.List (intersperse)

data NumWords = Zero | One | Two   | Three | Four 
              | Five | Six | Seven | Eight | Nine
              deriving (Ord, Eq, Show, Enum)

digitToWord :: Int -> String
digitToWord n = concat $ intersperse "-" . map wordNumber $ digits n

digits :: Int -> [Int]
digits 0 = []
digits n = digits q ++ [r]
    where (q, r) = divMod n 10
        

wordNumber :: Int -> String
wordNumber n = show (toEnum n :: NumWords)

              
