import System.Environment

null' :: [a] -> Bool
null' [] = True
null'  _ = False

--head' :: [a] -> a
--head' [a]  = a 
--head' (x : _) = x

--tail' (_ : xs) = xs

--fst' (x,_) = x

--snd' =(_,y) = y


main = do
  print $ null' "aze"
  print $ null' []
  print $ null' [1,2,3]
  
  print $ head' "aze"
  print $ head' [1,2,3]
