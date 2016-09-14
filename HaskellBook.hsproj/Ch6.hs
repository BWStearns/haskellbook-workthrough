module Ch6 where
    

data Mood = Blah | Woot

instance Show Mood where
    show Blah = ":("
    show Woot = ":)"
    


data Trivial = Trivial

instance Eq Trivial where
    (==) Trivial Trivial = True
    

data DayOfWeek = Mon 
               | Tue 
               | Wed 
               | Thu 
               | Fri 
               | Sat 
               | Sun deriving (Ord, Show, Enum)

data Date = Date DayOfWeek Int

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Wed Wed = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _     = False
    
instance Eq Date where
    (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') =    weekday     ==  weekday' 
                                                               &&   dayOfMonth  ==  dayOfMonth'
    

numToBool :: Int -> Bool
numToBool a = not (a == 0)

numToBool' :: Int -> Bool
numToBool' 0 = False
numToBool' _ = True


data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn i) (TisAn i') = i == i'
    

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two i ii) (Two i' ii') = (i == i') && (ii == ii')
    

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair a' b') = a == a' && b == b'
    

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = (a == a') && (b == b')



type Subject = String
type Obj = String
type Verb = String

data Sentence = Sentence Subject Verb Obj deriving (Eq, Show)


chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (f a) == b


arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = fromInteger i + (f a)

