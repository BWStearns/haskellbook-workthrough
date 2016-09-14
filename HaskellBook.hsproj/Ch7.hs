module Ch7 where
    

addOne :: Integer -> Integer
addOne x = x + 1

bindExp :: Integer -> String
bindExp x = let y = 5 
                z = y + x in
                "the integer was: " ++ show x
                ++ " and y was: " ++ show y
                ++ " and z + y is: " ++ show (z + y)
                
triple :: Int -> Int
triple x = x * 3


addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f n = n + 1
    


aOIO = \n -> if odd n then n + 1 else n

addFive x y = (if x > y then y else x) + 5

aF = \x -> \y -> 5 + min x y



isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False



-- registeredUser.hs


newtype Username = Username String

newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber


mkUser :: String -> Integer -> User
mkUser name acct = RegisteredUser (Username name) (AccountNumber acct)


printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "Unregistered User"
printUser (RegisteredUser (Username name)
                          (AccountNumber acctNum))
          = putStrLn $ name ++ " " ++ show acctNum


data WherePenguinsLive = Galapagos
                       | Antarctica
                       | Australia
                       | SouthAfrica
                       | SouthAmerica
                       deriving (Eq, Show)
                       
data Penguin = Peng WherePenguinsLive deriving (Eq, Show)

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng habitat) = habitat

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False


funcZ x =
    case x + 1 == 1 of
        True -> "AWESOME!"
        False -> "Wut? o_0"
        
pal :: (Eq a) => [a] -> Bool
pal xs
    | xs == reverse xs = True
    | otherwise = False
        

functionC x y =
    case x > y of
        True -> x
        False -> y
        
ifEvenAdd2 n =
    case (mod n 2) == 0 of
        True -> n + 2
        False -> n
        
nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0
        
flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x


data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)
              
reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' = 
    putStrLn $ show e ++ " is the boss of " ++ show e'
    
employeeRank :: (Employee -> Employee -> Ordering) 
                -> Employee
                -> Employee
                -> IO ()
employeeRank f e e' =
    case f e e' of
        GT -> reportBoss e e'
        EQ -> putStrLn "They're peers"
        LT -> flip' reportBoss e e'
        

dodgy :: (Num x) => x -> x -> x
dodgy x y = x + y * 10

oneIsOne :: (Num x) => x -> x
oneIsOne = dodgy 1

oneIsTwo :: (Num x) => x -> x
oneIsTwo = (flip dodgy) 2


myAbs :: Integer -> Integer
myAbs x | x < 0 = (-x)
        | otherwise = x


data NaLevel = TooHigh
             | JustRight
             | TooLow
             deriving (Show, Eq, Ord)


bloodNa :: Integer -> NaLevel
bloodNa x
    | x < 135   = TooLow
    | x > 145   = TooHigh
    | otherwise = JustRight

isRightTri :: (Num a, Eq a) => a -> a -> a -> Bool
isRightTri a b c
    | a^2 + b^2 == c^2 = True
    | otherwise        = False


add :: Int -> Int -> Int
add x y = x + y

addPF :: Int -> Int-> Int
addPF = (+)

addOnePF = (+1)


--tensDigit :: Integral a => a -> a
--tensDigit x = 




















