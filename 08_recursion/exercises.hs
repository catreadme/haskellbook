{-
What is the type of [[True, False], [True, True], [False, True]]?

 - d) [[Bool]]
-}

{-
Which of the following has the same type as [[True, False],
[True, True], [False, True]]?

- b) [[3 == 3], [6 > 5], [3 < 4]]
-}

{-
For the following function

func :: [a] -> [a] -> [a]
func x y = x ++ y

which of the following is true?

- a) x and y must be of the same type
- b) x and y must both be lists
- c) if x is a String then y must be a String
- d) all of the above
-}

{-
For the func code above, which is a valid application of func to
both of its arguments?

b) func "Hello" "World"
-}



{-
Given the following definitions, tell us what value results from further
applications.
-}

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types:

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"


{-
Write out the steps for reducing divide 15 2 to its final answer
according to the Haskell code.
-}

divide :: Integer -> Integer -> Integer
divide n d = divideTail n d 0
  where
    divideTail n d count
      | d == 0 = error "division by zero"
      -- keep subtracting as long as the remainder is bigger than zero
      | (n - d) >= 0 = divideTail (n - d) d (count + 1)
      | otherwise = count

{-
divide 15 2

15 - 2 = 13 | count = 0 + 1
13 - 2 = 11 | count = 1 + 1
11 - 2 = 9  | count = 2 + 1
9 - 2 = 7   | count = 3 + 1
7 - 2 = 5   | count = 4 + 1
5 - 2 = 3   | count = 5 + 1
3 - 2 = 1   | count = 6 + 1
1 - 2 = -1  | count = 7
-}

{-
Write a function that recursively sums all numbers from 1 to n,
n being the argument.

So that if n was 5, you’d add 1 + 2 + 3 + 4 + 5 to get 15.
The type should be (Eq a, Num a) => a -> a.
-}

mySum :: (Eq a, Num a) => a -> a
mySum 0 = 0
mySum n = n + (mySum (n - 1))

{-
Write a function that multiplies two integral numbers using
recursive summation. The type should be
(Integral a) => a -> a -> a.
-}

mult :: (Integral a) => a -> a -> a
mult x y
  | x == 0 = 0
  | x == 1 = y
  | otherwise = y + (mult (x - 1) y)

{-
The McCarthy 91 function yields x − 10 when x > 100 and 91
otherwise. The function is recursive.
-}

mc91 :: Integer -> Integer
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91 (mc91 (n + 11))
