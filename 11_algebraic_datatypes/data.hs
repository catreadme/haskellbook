{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

data Price = Price Integer
  deriving (Eq, Show)

data Size = Size Integer
  deriving (Eq, Show)

data Manufacturer = Mini | Mazda | Tata
  deriving (Eq, Show)

data Airline = PapuAir | CatapultsR'Us | TakeYourChancesUnited
  deriving (Eq, Show)

data Vehicle = Car Manufacturer Price | Plane Airline Size
  deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 250)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar (Plane _ _) = False

isPlane :: Vehicle -> Bool
isPlane = not . isCar

areCars :: [Vehicle] -> [Bool]
areCars [] = []
areCars xs = map isCar xs

getManu :: Vehicle -> Manufacturer
getManu (Plane _ _) = error "not a car"
getManu (Car manu _) = manu

newtype Goats = Goats Int
  deriving (Eq, Show, TooMany)

newtype Cows = Cows Int
  deriving (Eq, Show)

tooManyGoats :: Goats -> Bool
tooManyGoats (Goats n) = n > 42

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 42

instance TooMany (Int, String) where
  tooMany (x,_) = tooMany x

instance TooMany (Int, Int) where
  tooMany (x,y) = tooMany $ x + y

instance (Num a, TooMany a) => TooMany (a,a) where
  tooMany (x,y) = tooMany $ x + y
