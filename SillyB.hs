{-# LANGUAGE NoImplicitPrelude #-}
module SillyB where

import GHC.Base
import GHC.Num

coso :: Num a => Integer -> a
coso x = r where r = fromInteger x
