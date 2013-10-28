module Main where

import Test.Framework (defaultMain)

import Carbs.Pasta.Linguine.Test
import Carbs.Pasta.Vongole.Test

main :: IO ()
main = defaultMain [linguineSuite, vongoleSuite]
