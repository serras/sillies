{-# LANGUAGE NoImplicitPrelude #-}
module SillyI where

import GHC.Base
import GHC.Num

data Recordo = R1 { f1 :: Bool, f2 :: Int }
             | R2 { f1 :: Bool}

zoso :: Recordo
zoso = R1 { f1 = True }

zoso2 :: Recordo
zoso2 = R1 { f1 = False, f2 = 3 }
