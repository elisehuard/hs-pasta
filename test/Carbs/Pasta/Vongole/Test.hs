module Carbs.Pasta.Vongole.Test where

import Test.Framework (testGroup, Test)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Carbs.Pasta.Vongole

vongoleSuite :: Test
vongoleSuite = testGroup "Vongole"
   [ testProperty "calory count >= 100" prop_minimumCalories ]

prop_minimumCalories :: [Int] -> Bool
prop_minimumCalories list = calories list >= 100

