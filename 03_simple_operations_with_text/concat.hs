module Concat where

greet :: String
greet = "hello" ++ " world"

hello :: [Char]
hello = "hello"

world :: String
world = "world"

main :: IO ()
main = do
  putStrLn greet
  putStrLn geetAgain
  where geetAgain = concat [hello, " ", world]
