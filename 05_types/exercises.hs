module Exercises where

{-
A value of type [a] is
  c) a list whose elements are all of some type a
-}

{-
A function of type [[a]] -> [a] could
  a) take a list of strings as an argument
-}

{-
A function of type [a] -> Int -> a
  b) returns one element of type a from a list
-}

{-
A function of type (a, b) -> a
  c) takes a tuple argument and returns the first value
-}

{-
Categorize each component of the type signature

f :: zed -> Zed -> Blah
     [0]    [1]    [2]

0 - fully polymorphic
1 - concrete
2 - concrete

f :: Enum b => a -> b -> C
              [0]  [1]  [2]

0 - fully polymorphic
1 - constrained polymorphic
2 - concrete

f :: f -> g -> C
    [0]  [1]  [2]

0 - fully polymorphic
1 - fully polymorphic
2 - concrete
-}

{-
Use the information the type provides to determine what the function
should do
-}

myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (a, x) = (a, yToZ $ xToY x)

i :: a -> a
i x = x

c :: a -> b -> a
c = \x -> \_ -> x

c'' :: b -> a -> b
c'' = \x -> \_ -> x

c' :: a -> b -> b
c' = \_ -> \x -> x

r :: [a] -> [a]
r xs = reverse xs

co :: (b -> c) -> (a -> b) -> a -> c
co f g x = f $ g x

a :: (a -> c) -> a -> a
a = \_ -> \x -> x

a' :: (a -> b) -> a -> b
a' f x = f x

{-
Type-Kwon-Do
-}

-- 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g $ f x

-- 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w $ q x

-- 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y)

-- 4
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f g x = fst $ g $ f x
