-- Trivial
data Trivial = Trivial'

instance Eq Trivial where
  (==) Trivial' Trivial' = True

-- DayOfWeek & Date
data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

data Date =
  Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Weds Weds = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (==) (Date a b) (Date x y) = a == x && b == y

-- Id
data Id a = Id a

instance Eq a => Eq (Id a) where
  (==) (Id x) (Id y) = x == y
