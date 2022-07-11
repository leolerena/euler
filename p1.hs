multiplos :: Integer -> Integer
multiplos n = sum ([k | k <- [1..n],   k `mod` 5 == 0 || k `mod` 3 == 0 ] )