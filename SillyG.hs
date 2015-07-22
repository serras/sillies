{-# LANGUAGE PolyKinds, TypeOperators, GADTs, NoImplicitPrelude, RankNTypes #-}
module SillyG where

data a :~: b where
  Refl :: a :~: a

gcastWith :: (a :~: b) -> ((a ~ b) => r) -> r
gcastWith Refl x = x
