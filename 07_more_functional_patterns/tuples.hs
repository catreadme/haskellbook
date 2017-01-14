module Tuples where

addEmUp2 :: Num a => (a,a) -> a
addEmUp2 (x,y) = x + y

fst3 :: (a,b,c) -> a
fst3 (a,_,_) = a

third3 :: (a, b, c) -> c
third3 (_, _, c) = c

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) = ((a, d), (c, f))
