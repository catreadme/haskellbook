fib :: Integer -> Integer
fib n
  | n <= 0 = 0
  | n == 1 = 1
  | otherwise = fib (n - 1) + fib (n - 2)

type Numerator = Integer
type Denominator = Integer
type Quotient = Integer

divide :: Numerator -> Denominator -> Quotient
divide n d = divideTail n d 0
  where
    divideTail n d count
      | d == 0 = error "division by zero"
      -- keep subtracting as long as the remainder is bigger than zero
      | (n - d) >= 0 = divideTail (n - d) d (count + 1)
      | otherwise = count
