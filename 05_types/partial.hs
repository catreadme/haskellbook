module Partial where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen = addStuff 5

subtractStuff :: Integer -> Integer -> Integer
subtractStuff  x y = x - y - 10

anon :: Integer -> Integer -> Bool
anon = \x y -> x == y

anonNested :: Integer -> Integer -> Bool
anonNested = \x -> \y -> x == y
