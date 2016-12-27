module Exercises where

{-
Now write expressions to perform the following transforma-
tions, just with the functions you’ve seen in this chapter. You
do not need to do anything clever here.

  a) -- Given
    "Curry is awesome"
    -- Return
    "Curry is awesome!"

  b) -- Given
    "Curry is awesome!"
    -- Return
    "y"

  c) -- Given
    "Curry is awesome!"
    -- Return
    "awesome!"
-}

a :: String -> String
a s = s ++ "!"

aTest = a "Curry is awesome" == "Curry is awesome!"
-- true

b :: String -> String
b s = [s !! 4]

bTest = b "Curry is awesome!" == "y"
-- true

c :: String -> String
c s = drop 9 s

cTest = c "Curry is awesome!" == "awesome!"
-- true

{-
Write a function of type String -> Char which returns the third
character in a String.
-}

thirdLetter :: String -> Char
thirdLetter s = s !! 2

thirdLetterTest = thirdLetter "Curry is awesome" == 'r'
-- true

{-
Now change that function so the string operated on is always
the same and the variable represents the number of the letter
you want to return.
-}
letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

letterIndexTest = letterIndex 0 == 'C'
-- true

{-
Using the take and drop functions we looked at above, see if you
can write a function called rvrs. rvrs should take the string
“Curry is awesome” and return the result “awesome is Curry.”

This doesn’t need to, and shouldn’t,
work for reversing the words of any sentence. You’re expected
only to slice and dice this particular string with take and drop.
-}

rvrs :: String -> String
rvrs x = let awesome  = drop 9 x
             is       = take 2 $ drop 6 x
             curry'   = take 5 x
         in  concat [awesome, " ", is, " ", curry']

rvrsTest = rvrs "Curry is awesome" == "awesome is Curry"
-- true
