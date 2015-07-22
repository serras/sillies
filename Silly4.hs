{-# LANGUAGE NoImplicitPrelude #-}
module Silly4 where

import GHC.Base

data S a = S a

f :: [Char] -> S a
f x = S (error x)
