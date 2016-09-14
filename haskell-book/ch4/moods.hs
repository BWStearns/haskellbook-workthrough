-- moods.hs

data Mood = Blah | Woot deriving (Show, Eq, Ord)

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _    = Blah
