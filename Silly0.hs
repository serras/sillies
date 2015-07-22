{-# LANGUAGE MagicHash #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Silly0 where

import GHC.Prim
import GHC.Num

{-
class Flanegar x where
  flanegar :: x -> Bool

instance Flanegar [a] where
  flanegar [] = True
  flanegar _  = False

naica :: [a]
naica = []

example :: Bool
example = flanegar naica
-}

example2 :: Integer -> (Integer, Integer)
example2 n = case n `quotRemInteger` 2 of
               (# q', r' #) ->
                  let q= fromInteger q'
                      r = fromInteger r'
                   in (q,r)
