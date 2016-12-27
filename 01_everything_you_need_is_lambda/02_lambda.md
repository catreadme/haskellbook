# Lambda
Lambda calculus consists of three basic components:
* expressions
* variables
* abstractions

A `lambda term` has a head, a body and is applied to an argument.

The head is a lambda `λ` followed by a variable name. The body is an expression.
A simple function looks as follows:
```
λx.x
```
The dot separates the parameters of the lambda from the function body.

## Alpha equivalence
The x in `λx.x` has no semantic meaning. It is equivalent to `λd.d` or `λz.z`.
This equivalence is referred to as *alpha equivalence*.

## Beta reduction
The process of applying a function to an argument, say
```
(λx.x) 2
2
```
is called `beta reduction`.

By applying the argument, the head is eliminated.
```
(λx.x + 1) 2
2 + 1
3
```

## Free variables
A variable not bound by the head is called a `free variable`.
```
λx.xy
```
In this case, only `x` is bound by the head, `y` remains unbound, or *free*.

When applying an argument to this function, `y` remains irreducible:
```
(λx.xy) z
(λ[x := z].xy)
zy
```
Note that `alpha equivalence` does not apply to free variables. `λx.xy` is *not*
the same as `λx.xz`, since  `y` and `z` could both refer to anything.

## Multiple arguments
Each lambda can only bind one parameter and only accept one argument. To allow
for multiple arguments, functions have multiple nested heads:
```
λxy.xy
```
can be written as
```
λx.(λy.xy)
```

## Combinators
A combinator is a lambda term with no free variables. The purpose of a
combinator is simply to combine its given arguments.

Those are all combinators:
```
λx.x
λxy.x
λxyz.xz(yz)
```

Those are not combinators:
```
λx.y
λx.xy
```

## Divergence
Divergent lambda terms are terms whose reduction never terminates. The following
lambda term is called `omega`, and its reduction never ends.
```
(λx.xx)(λx.xx)
```
This term does not produce an answer.
