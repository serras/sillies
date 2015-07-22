{-# LANGUAGE NoImplicitPrelude #-}
module Silly9 where

import GHC.Base

{-
scanlFB :: (b -> a -> b) -> (b -> c -> c) -> a -> (b -> c) -> b -> c
scanlFB f c = \b g -> {-oneShot-} (\x -> let b' = f x b in b' `c` g b')
-}

idodo :: (a -> b) -> (a -> b)
idodo f = id (\x -> let y = f x in y)
