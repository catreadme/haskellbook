myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem x (y:ys) = if x == y
                  then True
                  else myElem x ys

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- Note to the authors of the book: quite hard to get this at this stage
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "empty list"
myMaximumBy _ [x] = x
myMaximumBy f (x:xs) = myMaximumByTail f xs x
  where myMaximumByTail _ [] current = current
        myMaximumByTail f (x:xs) current
          | f x current == GT = myMaximumByTail f xs x
          | otherwise = myMaximumByTail f xs current

-- Note to the authors of the book: quite hard to get this at this stage
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "empty list"
myMinimumBy _ [x] = x
myMinimumBy f (x:xs) = myMinimumByTail f xs x
  where myMinimumByTail _ [] current = current
        myMinimumByTail f (x:xs) current
          | f x current == LT = myMinimumByTail f xs x
          | otherwise = myMinimumByTail f xs current

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare
