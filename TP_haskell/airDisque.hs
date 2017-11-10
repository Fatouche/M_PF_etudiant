airDisque :: Double -> Double
airDisque r = pi * r * r

--airTriangle :: (Float, Float, Float, Float, Float, Float) -> Float
--airTriangle (xa,ya,xb,yb,xc,yb)  = 0.5 * sqrt (xn * xn + yn * yn)
--  where
--    xab = xb - xa
--    yab = yb - ya
--    xbc = xc - xb
--    ybc = yc - yb
--   xac = xc - xa
--    yac = yc - ya
--    xn = xab * xbc * xac
--    yn = yab * ybc * yac

-- Prédicat
estPair :: Integral a => a -> Bool
estPair x = (x `mod` 2) == 0

estMemeSigne :: Int -> Int -> Bool
estMemeSigne x y = x*y >= 0

estTripletPyth :: Int -> Int -> Int -> Bool
estTripletPyth x y z = (x*x + y*y) == (z*z)

-- Evalutaion Partielle
mul :: Int -> Int -> Int
mul x y = x * y

mul42 :: Int -> Int
mul42 x = mul x 42
-- autre
mul42T :: Int -> Int
mul42T = (42*)

nuull :: Int -> Bool
nuull = (==) 0

-- Composition de fonctions
doublePlusUn = (+1).(2*)
--plus42Positif = (+42).(>0)

main = do
  print $ airDisque 2
  print $ estPair 5
  print $ estMemeSigne 5 (-3)
  print $ estTripletPyth 1 2 3
  print $ mul 5 42
  print $ mul42 5
  print $ mul42T 4
  print $ nuull 0
  print $ doublePlusUn 2
--  print $ plus42Positif (-20)
  
  
--  print $ aitTriangle 1 2 3 4 5 6
