module Exercises where

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

{-
length is a function that takes a list and returns a result that tells
how many items are in the list.

Given the definition of length above, what would the type signa-
ture be? How many arguments, of what type does it take? What
is the type of the result it evaluates to?
-}
-- length :: Num b => [a] -> b

{-
What are the results of the following expressions?
-}
a = length [1, 2, 3, 4, 5]
-- 5

b = length [(1, 2), (2, 3), (3, 4)]
-- 3

c = length allAwesome
-- 2

d = length (concat allAwesome)
-- 5

{-
How can you fix the broken code?
  6 / length [1, 2, 3]6 / length [1, 2, 3]
-}
e = 6 `div` length [1, 2, 3]

{-
What is the type of the expression 2 + 3 == 5?
-}
g :: Bool
g = 2 + 3 == 5 -- true

{-
Write a function that tells you whether or not a given String (or
list) is a palindrome. Here you’ll want to use a function called
’reverse,’ a predefined function that does just what it sounds like.
-}
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome s = s == reverse s

{-
Write a function to return the absolute value of a number using
if-then-else
-}
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else (-1) * x

{-
Fill in the definition of the following function, using fst and
snd:

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f = undefined
-}
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a,b) (c,d) = ((b, d), (a, c))
