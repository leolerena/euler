esTriplePitagórico :: (Integer, Integer, Integer) -> Bool
esTriplePitagórico (a,b,c) = a^2 + b^2 == c^2

sumanMil :: [(Integer, Integer, Integer)]
sumanMil = [(a,b,c) | a<-[1..1000], b<-[1..1000], c<-[1..1000], a+b+c == 1000 && c >= a && c >= b && a<=b && esTriplePitagórico (a,b,c)]

triplesPitágoricos :: [(Integer, Integer, Integer)]
triplesPitágoricos = filter (esTriplePitagórico) sumanMil

-- tripleSuma1000 :: [(Integer, Integer, Integer)]

soluciónP9 :: Integer
soluciónP9 = 200 * 375 * 425



