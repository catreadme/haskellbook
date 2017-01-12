module Exercises where

-- The Eq class
-- c) makes equality tests possible

-- The typeclass Ord
-- a) allows any two values to be compared
-- b) is a subclass of Eq

-- Suppose the typeclass Ord has an operator >. What is the type of >?
-- a) Ord a => a -> a -> Bool

-- In x = divMod 16 12
-- In x = divMod 16 12

-- The typeclass Integral includes
-- a) Int and Integer numbers

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f x y = f y + fromIntegral x
