{-
Write a function that takes inputs from stops and vowels
and makes 3-tuples of all possible stop-vowel-stop com-
binations. These will not all correspond to real words in
English, although the stop-vowel-stop pattern is common
enough that many of them will.
-}
stops = "pbtdkg"
vowels = "aeiou"

tuples :: [a] -> [b] -> [(a,b,a)]
tuples stops vowels = [(stop1,vowel,stop2) | stop1 <- stops, vowel <- vowels, stop2 <- stops]

tuplesP :: [(Char,Char,Char)]
tuplesP = filter (\(a,_,_) -> a == 'p') (tuples stops vowels)

myAnd :: [Bool] -> Bool
myAnd xs = foldr
  (\s c ->
    case c of
      True -> s
      False -> False) True xs

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\s c -> if f s then True else c) False

myElem :: Eq a => a -> [a] -> Bool
myElem x = foldr (\s c -> if s == x then True else c) False

myElem' :: Eq a => a -> [a] -> Bool
myElem' x = any (== x)

myReverse :: [a] -> [a]
myReverse = foldr (\s c -> c ++ [s]) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\s c -> f s : c) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\s c -> if f s then s : c else c) []

squish :: [[a]] -> [a]
squish = foldr (\s c -> s ++ c) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\s c -> f s ++ c) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "empty list"
myMaximumBy f (x:xs) = foldl (\c s -> if f c s == GT then c else s) x xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "empty list"
myMinimumBy f (x:xs) = foldl (\c s -> if f c s == LT then c else s) x xs
