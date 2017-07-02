{-
foldr :: (a -> b -> b) -> b -> [a] -> b
map :: (a -> b) -> [a] -> [b]
-}

myFoldR :: (a -> b -> b) -> b -> [a] -> b
myFoldR _ current [] = current
myFoldR f current (x:xs) = f x (myFoldR f current xs)

myFoldL :: (b -> a -> b) -> b -> [a] -> b
myFoldL _ current [] = current
myFoldL f current (x:xs) = myFoldL f (f current x) xs
