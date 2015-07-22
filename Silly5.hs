{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ImpredicativeTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Silly5 where

import GHC.Base

{-
data ST s a = ST a

runST :: (forall s. ST s a) -> a
runST (ST x) = x

coso :: ST s Int
coso = ST 5

f = runST coso

g = runST (ST 3)

h = runST $ ST 4

-- i = (id runST) (ST 3)

i = let x {-:: forall s. ST s Int-} = ST 3 in let f = runST in f x

go1 :: Int -> (forall s. ST s a) -> Int
go1 x y = x

go2 :: forall s. ST s (forall a. a -> a)
go2 = ST id

go3 = go1 4 go2
-}

hu1 :: (forall a. Eq a => a -> a) -> Int
hu1 f = f (0 :: Int)

hu2 = (id hu1) id
