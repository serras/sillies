{-# LANGUAGE CPP
           , NoImplicitPrelude
           , BangPatterns
           , ExplicitForAll
           , MagicHash
           , UnboxedTuples
           , ExistentialQuantification
           , RankNTypes
  #-}
module Silly8 where

import GHC.CString

build   :: forall a. (forall b. (a -> b -> b) -> b -> b) -> [a]
{-# INLINE [1] build #-}
build g = g (:) []

{-# RULES
"unpack"       [~1] forall a   . unpackCString# a             = build (unpackFoldrCString# a)
  #-}
