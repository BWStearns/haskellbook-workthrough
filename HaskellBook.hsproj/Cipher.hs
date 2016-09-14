module Cipher where

import Data.Char

-- Increase offset to not need add/sub
encodeChar :: Int -> Char -> Char
encodeChar i c
    | not $ isAlpha c = c
    | isAlpha c = chr $ offset + mod (ord c - offset + i) 26
        where offset = if ord c >= 97 
                       then 97 
                       else 65

decodeChar :: Int -> Char -> Char
decodeChar i c 
    | not $ isAlpha c = c
    | isAlpha c = chr $ offset + mod (ord c - offset - i) 26
        where offset = if ord c >= 97 
                       then 97 
                       else 65

caesarShift :: Int -> String -> String
caesarShift k m = map (encodeChar k) $ m

caesarUnshift :: Int -> String -> String
caesarUnshift k m = map (decodeChar k) $ m

viginereKey :: [Char] -> [Int]
viginereKey key = map (\x -> (ord . toLower) x - 97) $ key



viginereDecode :: [Char] -> [Char] -> [Char]
viginereDecode keyword ciphertext = zipWith encodeChar cipherKey ciphertext
    where cipherKey = cycle $ viginereKey ciphertext