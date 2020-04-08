
{-
  InsertAt 'A' 1 "string"
-}
insertAt :: a -> Int -> [a] -> [a]
insertAt ch 0 xs = ch:xs
insertAt ch i (x:xs) = x : insertAt ch (i - 1) xs

loop_insert :: String -> Char -> Int -> [String]
loop_insert list c 0 = [insertAt c 0 list]
loop_insert list c n  = [insertAt c (n) list] ++ loop_insert list c (n-1)

loop_per_elemen :: [String] -> Char -> [String]
loop_per_elemen [] _  = []
loop_per_elemen (x:xs) c = loop_insert x c (length x) ++ loop_per_elemen xs c
