fibs :: [Integer]
fibs = 0 : 1 : [a+b | (a,b) <- zip fibs(tail fibs)]

-- la idea copada de usar zip para construirnos fibs aprovechando la lazyness de haskell


fibspares :: [Integer]
fibspares =  filter even $ fibs

-- filtro los fibs pares

problema2 :: Integer
problema2 = sum ( takeWhile (< 4000000)  fibspares)


-- el takewhile lo encontré en la interné pero la idea se podría hacer sin eso













