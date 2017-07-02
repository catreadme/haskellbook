data Tree a = Empty | Node a (Tree a) (Tree a)
  deriving (Eq, Ord, Show)

newTree :: a -> Tree a
newTree x = Node x Empty Empty

insertValue :: (Ord a) => a -> Tree a -> Tree a
insertValue x Empty = newTree x
insertValue x (Node y left right)
  | x == y = Node y left right
  | x < y = Node y (insertValue x left) right
  | x > y = Node x left (insertValue y right)

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree _ Empty = Empty
mapTree f (Node x left right) = Node (f x) (mapTree f left) (mapTree f right)

treeToList :: Tree a -> [a]
treeToList Empty = []
treeToList (Node x left right) = (treeToList left) ++ [x] ++ (treeToList right)

myTree :: Tree Integer
myTree =  Node 5
              (Node 3
                  (Node 1 Empty Empty)
                  (Node 4 Empty Empty))
              (Node 7
                  (Node 6 Empty Empty)
                  (Node 8 Empty Empty))

foldrTree :: (a -> b -> b -> b) -> b -> Tree a -> b
foldrTree _ current Empty = current
foldrTree f current (Node x left right) =
  f x (foldrTree f current left) (foldrTree f current right)
