module TopOrLocal where

topFunc :: Integer -> Integer
topFunc x = x + woot + topSomething
  where woot :: Integer
        woot = 10

topSomething :: Integer
topSomething = 5
