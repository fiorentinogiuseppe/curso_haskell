pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x:xs) n | (x == n) = True
                  | otherwise = pertence xs n


maior :: [Int] -> Int 
maior [x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs

menor :: [Int] -> Int 
menor [x] = x
menor (x:xs) | (x < menor xs) = x
             | otherwise = menor xs


todos_pares :: [Int] -> Bool
todos_pares [] = True
todos_pares (x:xs) | (mod x 2 /= 0) = False
                   | otherwise = todos_pares xs
