{-# LANGUAGE NoImplicitPrelude, TypeFamilies #-}
module SillyC where

data Bool = False | True

type family F a
type instance F [a] = Bool

undefined :: a
undefined = undefined

f :: a -> F a
f x = undefined

g :: Bool
g = f []
