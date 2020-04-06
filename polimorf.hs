{-
Nao permite mistura de tipos em uma lista pois a lista deve ter elemento do mesmo tipo.
Polimorfismo generaliza as funcoes tornando-as genericas
:t retorna o cabecalho da funcao
Polimorfismo adhoc funcao aceita argumentos e rejeita outros
-}


my_length :: [a] -> Int
my_length [] = 0
my_length (x:xs) = 1 + my_length xs

