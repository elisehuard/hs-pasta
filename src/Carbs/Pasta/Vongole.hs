module Carbs.Pasta.Vongole where

import Carbs.Pasta

type IngredientCaloryCount = Int

calories :: [IngredientCaloryCount] -> Int
calories ingredients = foldr (+) 100 ingredients

{-
calories :: [IngredientCaloryCount] -> Integer
calories ingredients = foldr (+) 100 positiveIngredients
                where positiveIngredients = filter (> 0) ingredients
-}
