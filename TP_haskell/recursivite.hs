pgcd :: Int -> Int -> Int
pgcd a b =  if b == 0
            then a
            else pgcd b (a `mod` b)

-- Recursivité terminal 
pgcd' :: Int -> Int -> Int
pgcd' a 0 = a
pgcd' a b = pgcd b ( a `mod`b)

factorielle :: Int -> Int
factorielle 1 = 1
factorielle n = n * factorielle (n-1)

                     
-- Recursivité terminal
factorielle' :: Int -> Int -> Int
factorielle' 1 acc = acc
factorielle' n acc = factorielle'(n-1)(acc *n)


taille :: [a] -> Int
taille [] = 0
taille (x : xs) = 1 + (taille xs)


element :: Eq a => a -> [a] -> Bool
element _ [] = False
element a (x:xs) = if a == x
                   then True
                   else element a xs

mini :: Ord a => [a] -> a
mini [x] = x
mini (x:xs) = min x ( mini xs )


replicate' :: Int -> [a]


main = do
  print $ pgcd 70 120
  print $ pgcd' 70 120
  print $ factorielle 5
  print $ factorielle' 5 1
  print $ taille ['e','d','c','b','a']
  print $ element 5 [1,3,4,2]
  print $ mini [2,3,4,5,6,7,8,9,1]
