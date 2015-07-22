{-# LANGUAGE Trustworthy #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE UndecidableInstances #-}  -- for compiling instances of (==)
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE MagicHash #-}

module SillyH where

import GHC.Base(Eq(..), otherwise)
import GHC.Num(Integer)
import GHC.Types( Nat )
import Data.Maybe(Maybe(..))
import Data.Proxy (Proxy(..))
import Data.Type.Equality((:~:)(Refl))
import Unsafe.Coerce(unsafeCoerce)

newtype SNat    (n :: Nat)    = SNat    Integer

class KnownNat (n :: Nat) where
  natSing :: SNat n

natVal :: forall n proxy. KnownNat n => proxy n -> Integer
natVal _ = case natSing :: SNat n of
             SNat x -> x

sameNat :: (KnownNat a, KnownNat b) =>
           Proxy a -> Proxy b -> Maybe (a :~: b)
sameNat x y
  | natVal x == natVal y = Just (unsafeCoerce Refl)
  | otherwise            = Nothing
