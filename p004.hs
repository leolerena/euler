numDigits :: Integer -> Integer
numDigits n = toInteger (floor (logBase 10 (fromIntegral n)) + 1)


reverso :: Integer -> Integer
reverso n    |n  < 10 = n
             |otherwise  = d * 10^(k-1) + reverso m
                  where d = n `mod` 10
                        m = n `quot` 10
                        k = numDigits n

esPalíndromo :: Integer -> Bool
esPalíndromo n = n == reverso n


palíndromos :: [Integer]
palíndromos = filter esPalíndromo [a*b | a<-[1..999], b<-[1..999] ]

problema4:: Integer 
problema4 = foldr1 max palíndromos
