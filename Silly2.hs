{-# LANGUAGE NoImplicitPrelude #-}
module Silly2 where

data Bool = True | False

not :: Bool -> Bool
not True  = False
not False = True

f :: Bool -> Bool
f = not

g = not
