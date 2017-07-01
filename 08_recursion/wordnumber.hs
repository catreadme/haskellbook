module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = error "not a digit"

digits :: Int -> [Int]
digits n =
  let string = show n
  in map (\x -> read [x]) string

wordNumber :: Int -> String
wordNumber n = concat . intersperse "-" . map digitToWord $ (digits n)
