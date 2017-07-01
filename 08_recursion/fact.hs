factorial :: (Num a, Eq a, Ord a) => a -> a
factorial n
  | n < 0 = 0
  | n == 0 = 1
  | otherwise = n * factorial (n - 1)

inc :: Integer -> Integer
inc = (+1)

incThree :: Integer -> Integer
incThree x = inc . inc . inc $ x

incN :: Integer -> Integer -> Integer
incN 0 n = n
incN times n = 1 + (incN (times - 1) n)

applyN :: Integer -> (a -> a) -> a -> a
applyN times f x
  | times == 0 = x
  | otherwise = applyN (times - 1) f (f x)
