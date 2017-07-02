data Expr = Lit Integer | Add Expr Expr
  deriving (Show)

eval :: Expr -> Integer
eval (Lit x) = x
eval (Add x y) = eval x + eval y

someExp :: Expr
someExp = Add (Add (Lit 5) (Lit 2)) (Lit 10)

res = eval someExp -- 17

printExpr :: Expr -> String
printExpr (Lit x) = show x
printExpr (Add x y) = printExpr x ++ " + " ++ printExpr y
