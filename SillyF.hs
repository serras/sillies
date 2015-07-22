{-# LANGUAGE NoImplicitPrelude #-}
module SillyF where

import GHC.Prim

data Bool = True | False

class Monoid a where
  mempty :: a

instance (Monoid a, Monoid b) => Monoid (a, b) where
  mempty = (mempty, mempty)

instance Monoid Bool where
  mempty = True

zusi :: a -> Bool
zusi x = (mempty :: Bool)
