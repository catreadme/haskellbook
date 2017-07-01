module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"

sentences = firstSen ++ secondSen
            ++ thirdSen ++ fourthSen

breakAt :: Char -> String -> [String]
breakAt c s =
  let x = takeWhile (/= c) s
      y = dropWhile (== c) $ dropWhile (/= c) s
  in if y == []
      then [x]
      else x : myLines y

myLines :: String -> [String]
myLines = breakAt '\n'

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = do
  print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)
