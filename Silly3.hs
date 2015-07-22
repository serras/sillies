{-# LANGUAGE MagicHash #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Silly3 where

import GHC.Classes
import GHC.Magic
import GHC.Prim
import GHC.Types

type S s a = State# s -> (# State# s, a #)

{-# INLINE return #-}
return :: a -> S s a
return a = \s -> (# s, a #)

-- stupid hack
-- fail :: [Char] -> S s a
fail s = return (raise# s)
