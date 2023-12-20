divisoresEuclides :: Integer -> Integer -> Bool
divisoresEuclides 1 k = False
divisoresEuclides n k | k > ceiling (sqrt (fromIntegral n))+1 = False
                      | n `mod` k == 0 = True
                      | otherwise = divisoresEuclides n (k+1) 

primo :: Integer -> Bool    
primo k = not (divisoresEuclides k 2)




primos :: [Integer]
primos = [ x | x <- [1..2000000], primo x]

problema10 :: Integer 
problema10 = sum primos