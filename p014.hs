import Data.ByteString (elemIndex)
import Data.List

collatz :: Int -> [Int]
collatz n 
    | n == 1 = [1]
    | even n = n: collatz (div n 2)
    | otherwise = n:collatz (3*n+1)


collseq :: [Int]
collseq = [length $ collatz n | n<-[1..1000000]]

maxColl :: Int
maxColl = foldl1 max collseq

ans :: Maybe Int
ans = Data.List.elemIndex maxColl collseq


