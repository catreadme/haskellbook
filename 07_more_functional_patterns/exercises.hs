module Exercises where

-- A polymorphic function
--d) may resolve to values of different types, depending on inputs

{-
Two functions named f and g have types Char -> String and
String -> [String] respectively. The composed function g . f
has the type

b) Char -> [String]
-}

{-
A function f has the type Ord a => a -> a -> Bool and we apply
it to one numeric value. What is the type now?

a) Ord a => a -> Bool
-}

-- A function with the type (a -> b) -> c
-- b) is a higher-order function
-- d) has its parameters in alphabetical order

{-
Given the following definition of f, what is the type of f True?

f :: a -> a
f x = x

a) f True :: Bool
-}

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10 -- "remove" one's digit
        d = xLast `mod` 10 -- get last digit

tensDigit' x =
  let (a,_) = x `divMod` 10
  in a `mod` 10

hundredsDigit x =
  let (a,_) = x `divMod` 100
  in a `mod` 10

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y z =
  case z of
    True -> x
    False -> y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y z
  | z = x
  | otherwise = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a,c) = (f a,c)
