import Data.Time

data DatabaseItem =
    DbString String
  | DbNumber Integer
  | DbDate UTCTime
    deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs =
  foldr (\s c ->
    case s of
      DbDate s -> s : c
      _ -> c) [] xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber xs =
  foldr (\s c ->
    case s of
      DbNumber s -> s : c
      _ -> c) [] xs

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent xs =
  let dates = filterDbDate xs
  in maximum dates

sumDb :: [DatabaseItem] -> Integer
sumDb xs =
  let numbers = filterDbNumber xs
  in sum numbers

avgDb :: [DatabaseItem] -> Double
avgDb xs =
  let numbers = filterDbNumber xs
  in (fromIntegral $ sum numbers) / (fromIntegral $ length numbers)
