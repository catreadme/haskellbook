module Case where

pal x =
  case x == reverse x of
    True -> "yes"
    False -> "no"

pal' x =
  case y of
    True -> "yes"
    False -> "no"
  where y = x == reverse x

functionC x y =
  case (x > y) of
    True -> x
    False -> y

ifEvenAdd2 n =
  case even n of
    True -> n + 2
    False -> n

nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0
