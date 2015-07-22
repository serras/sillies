{-# LANGUAGE NoImplicitPrelude #-}
module Silly7 where

class Munoido x where
  solico :: x
  junticos :: x -> x -> x

instance Munoido [a] where
  solico = []
  junticos = appendo

appendo :: [a] -> [a] -> [a]
appendo [] ys = ys
appendo (x:xs) ys = x : appendo xs ys
