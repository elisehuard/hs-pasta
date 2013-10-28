module Carbs.Pasta.Linguine.Test where

import Test.Framework (testGroup, Test)
import Test.Framework.Providers.HUnit
import Test.HUnit hiding (Test)

import Carbs.Pasta.Linguine

linguineSuite :: Test
linguineSuite = testGroup "Linguine"
   [testCase "cooking linguine takes 10 minutes" (testCook Linguine { eggs = True, cooking_time = 10 } 10)]

testCook :: Linguine -> Int -> Assertion
testCook pasta expected = expected @=? cook pasta
