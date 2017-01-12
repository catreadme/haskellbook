module Instances where

-- TisAnInteger
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

-- TwoIntegers
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two x y) = a == x && b == y

-- StringOrInt
data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAnInt y) = x == y
  (==) (TisAString x) (TisAString y) = x == y
  (==) _ _ = False

-- Pair
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair x y) = a == x && b == y

-- Tuple
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple x y) = a == x && b == y

-- Which
data Which a =
  ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne y) = x == y
  (==) (ThatOne x) (ThatOne y) = x == y
  (==) _ _ = False

-- EitherOne
data EitherOr a b =
  Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello y) = x == y
  (==) (Goodbye x) (Goodbye y) = x == y
  (==) _ _ = False
