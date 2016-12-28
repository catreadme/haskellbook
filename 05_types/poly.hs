module Poly where

f :: a -> a -> a
f = \x -> \_ -> x

f' :: a -> a -> a
f' = \_ -> \y -> y

g :: a -> b -> b
g = \_ -> \y -> y
