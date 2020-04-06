{-
Funcao ordena
  Essa funcao vai ordenar uma lista de inteiros crescentemente.
  Havera 2 lista uma de entrada e outra qu sera o retorno e sera a lista ordenada
-}

lista :: [Int]
lista = [5,1,10,3,9]

get_menor :: [Int] -> Int
get_menor [x] = x
get_menor (x:xs) | (x < get_menor xs) = x
                 | otherwise = get_menor xs


remove_menor:: [Int] -> [Int]
remove_menor [] = []
remove_menor (x:xs) | (x == (get_menor (x:xs))) = xs
                    | otherwise = (x:remove_menor xs)


aux_ordena :: [Int] -> [Int] -> [Int]
aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada lista = aux_ordena (lista_ordenada++[get_menor lista]) (remove_menor lista)



ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = aux_ordena [] lista
