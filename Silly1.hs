{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Silly where

import GHC.Types

class Eq a where
  (==) :: a -> a -> Bool

instance Eq Bool where
  x == y = True

instance Eq Char where
  x == y = True

ex1 f = (f True, f False)

ex2 :: (forall a. Eq a => a -> b) -> (b, b)
ex2 f = (f True, f 'a')
