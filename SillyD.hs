{-# LANGUAGE NoImplicitPrelude #-}
module SillyD where

import GHC.Types

data Maybe a = Nothing | Just a

maybe :: b -> (a -> b) -> Maybe a -> b
maybe z _ Nothing  = z
maybe _ f (Just x) = f x

otherwise :: Bool
otherwise = True

chopitos :: a -> (Bool -> a-> Bool) -> Maybe a
chopitos x (<)
  | maybe True (False <) y = Just x
  | otherwise = Just x
  where y = Just x
