contar :: Int -> Int -> Int
contar n m 
        | n == 0 && m == 0 = 1
        | n == 0 = 1
        | m == 0 = 1
        |otherwise = contar (n-1) m + contar n (m-1)



