{-# LANGUAGE NoImplicitPrelude, TypeOperators, GADTs, ScopedTypeVariables #-}
{-# LANGUAGE PolyKinds #-}

module SillyE where

import qualified Data.Type.Equality as Eq
import GHC.Base
import Data.Maybe

data Coercion a b where
  Coercion :: Coercible a b => Coercion a b

newtype Sym a b = Sym { unsym :: Coercion b a }

sym :: forall a b. Coercion a b -> Coercion b a
sym Coercion = unsym (coerce (Sym Coercion :: Sym a a))

{-
repr :: (a Eq.:~: b) -> Coercion a b
repr Eq.Refl = Coercion
-}
