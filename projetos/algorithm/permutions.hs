
-- Insere Char em uma posicao determinada na string
insertAt :: a -> Int -> [a] -> [a]
insertAt ch 0 xs = ch:xs
insertAt ch i (x:xs) = x : insertAt ch (i - 1) xs

-- Move-se pela string colocando o novo Char em cada uma das posicoes existentes
loop_insert :: String -> Char -> Int -> [String]
loop_insert list c 0 = [insertAt c 0 list]
loop_insert list c n  = [insertAt c (n) list] ++ loop_insert list c (n-1)

-- Vai montando a lista de todas as possibilidades
loop_per_elemen :: [String] -> Char -> [String]
loop_per_elemen [] _  = []
loop_per_elemen (x:xs) c = loop_insert x c (length x) ++ loop_per_elemen xs c

-- Move-se de forma recursiva e vai calculando cada um dos resultados
f :: String -> [String]
f [] = []
f [a] = [[a]]
f (x:xs) = loop_per_elemen (f xs) x

-- Inverto a lista e chamo a funcao principal para resolver o problema
list_all_permutations :: String -> [String]
list_all_permutations list = f (reverse list)
