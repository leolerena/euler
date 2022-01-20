divisoresEuclides :: Integer -> Integer -> [Integer]
divisoresEuclides 1 k = [1]
divisoresEuclides n k | k > (n-1) = [n]
                      | n `mod` k == 0 = k : divisoresEuclides (n `quot` k) (k)
                      | otherwise = divisoresEuclides n (k+1) 

-- tuve que recurrir a una version medio berreta del algoritmo de Euclides porque si bien no es lo más lacónico y elegante es más eficiente en tiempo


divisores :: Integer -> [Integer]
divisores n = divisoresEuclides n 2


esPrimo :: Integer -> Bool
esPrimo p = length (divisores p) == 1


problema3 :: Integer
problema3 = foldr1 max  (filter (esPrimo)  (divisores 600851475143))

-- me sorprendió lo pequeño del máximo primo pero bueno



