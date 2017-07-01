safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail [_] = Nothing
safeTail (_:xs) = Just xs

myWords :: String -> [String]
myWords s =
  let x = takeWhile (/= ' ') s
      y = dropWhile (== ' ') $ dropWhile (/= ' ') s
  in if y == []
      then [x]
      else x : myWords y

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

mySqrCube = [(x,y) | x <- mySqr, y <- myCube, x < 50 && y < 50]
mySqrCubeNum =  sum [1 | _ <- mySqrCube]

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys

myZip :: [a] -> [b] -> [(a,b)]
myZip = myZipWith (,)
