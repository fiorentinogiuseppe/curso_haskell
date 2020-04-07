-- aula 13
{-
	Funcao que recebe uma lista e retorna o inverso dessa lista 
	input: [1,2,3]
	saida: [3,2,1]
-}

-- Forma trabalhosa 
inv_aux :: [t] -> [t] -> [t]
inv_aux [] l_inv = l_inv
inv_aux (x:xs) l_inv = inv_aux xs l_inv++[x]

inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista l = inv_aux l []


-- Forma simples
inv_lista_s :: [t] -> [t]
inv_lista_s [] = []
inv_lista_s (x:xs) = inv_lista_s xs ++ [x]


