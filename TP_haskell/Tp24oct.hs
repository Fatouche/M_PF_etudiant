mini2 :: Int -> Int -> Int
mini2 a b = if a > b then b else a

mini3 :: Int -> Int -> Int -> Int
mini3 a b c = if (mini2 a b) == (mini2 a c) then a else mini2 b c

getElem2 :: [a] -> a 
getElem2 l = head(tail l)

troisFoisPlusUn :: Num a => a -> a
troisFoisPlusUn = (\x -> x+1).(\x -> x*3)

getElem2'' = (head).(tail)

doubler :: Num a => a -> a
doubler = (2*)

tete = head

fTete = (2*).sqrt.head

main = do
  print $ mini2 10 6
  print $ mini3 15 2 10
  print $ getElem2 ['t','e','s','t']
  print $ troisFoisPlusUn 3
  print $ getElem2'' ['t','e','s','t']
  print $ doubler 4
  print $ tete [1,2,3,4]
  print $ fTete [1,2,3,4]
