data Person = MkPerson String Int
  deriving (Eq, Show)

jm = MkPerson "julie" 108
ca = MkPerson "chris" 16

namae :: Person -> String
namae (MkPerson s _) = s

data PPerson = PPerson
  { name :: String
  , age :: Int
  } deriving (Eq, Show)
