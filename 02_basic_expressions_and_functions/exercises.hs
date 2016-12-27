module Exercises where

{-
Given what we know about the precedence of (*), (+), and (^), how
can we parenthesize the following expressions more explicitly with-
out changing their results?
-}

a  = 2 + 2 * 3 - 1
  == 2 + (2 * 3) - 1
  -- true

b  = ((^) 10 $ 1 + 1)
  == ((^) 10 (1 + 1))
  -- true

c  = 2 ^ 2 * 4 ^ 5 + 1
  == ((2 ^ 2) * (4 ^ 5)) + 1
  -- true

{-
Which of the following pairs of expressions will return the same
result when evaluated?
-}
d = 1 + 1 == 2
  -- true

e = 10 ^ 2 == 10 + 9 * 10
  -- true

f = 400 - 37 == (-) 37 400
  -- false

{-
g = 100 `div` 3 == 100 / 3
  -- false
  -- no comparison possible between Integral and Fractional
-}

h = 2 * 5 + 18 == 2 * (5 + 18)
  -- false
