divisoresEuclides :: Integer -> Integer -> [Integer]
divisoresEuclides 1 k = [1]
divisoresEuclides n k | k > floor (sqrt (fromIntegral n)) = [n]
                      | n `mod` k == 0 = k : divisoresEuclides (n `quot` k) (k)
                      | otherwise = divisoresEuclides n (k+1) 

-- tuve que recurrir a una version medio berreta del algoritmo de Euclides porque si bien no es lo más lacónico y elegante es más eficiente en tiempo


divisores :: Integer -> [Integer]
divisores n = divisoresEuclides n 2


esPrimo :: Integer -> Bool
esPrimo p = length (divisores p) == 1


primos :: [Integer]
primos = [p | p<-[2..], esPrimo p ]

problema7 :: Integer 
problema7 =  primos !! 10000





