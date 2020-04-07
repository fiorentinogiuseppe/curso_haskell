-- Comentario em haskell
{-
Comentario de multiplas linhas
-}

-- aula 12
comp_listas :: [Int] -> [Int] -> Bool
comp_listas [] [] = True
comp_listas [] _ = False
comp_listas _ [] = False
comp_listas (x:xs) (y:ys)
    | (x == y) = comp_listas xs ys
    | otherwise  = False
