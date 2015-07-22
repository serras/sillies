{-# LANGUAGE NoImplicitPrelude #-}
module Silly6 where

data Id a = Id a

class Frugu m where
  bindu :: m a -> (a -> m b) -> m b
  binda :: m a -> m b -> m b

instance Frugu Id where
  binda x f = bindu x (\_ -> f)
  bindu = binduId

binduId :: Id a -> (a -> Id b) -> Id b
binduId (Id x) f = f x
