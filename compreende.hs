{-
 [valor talque x recebe [1..10] se mod x 2 == 0]
 [x | x <- [1..10], mod x 2 == 0]
-}
par :: Int -> Bool
par x = mod x 2 == 0


lista = [x | x <- [1..10] , par x, x > 5]
