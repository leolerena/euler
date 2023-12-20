ntriangular k = k*(k+1) `div` 2

divisores n = 2*length [k | let m = floor (sqrt (fromIntegral n)) , k<-[1..m] ,n `mod` k == 0]

solucion = head $ filter (\n -> divisores n > 500) [n | k<-[2..], let n = ntriangular k]
