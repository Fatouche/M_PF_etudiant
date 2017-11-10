import Data.List

main = do
  
  print l1
  print taille
  print l1a
  print l1b
  print (l1a,l1b)

  where
    l1 = [37..42]
    taille = length l1
    t2 = taille`div`2
    l1a = take t2 l1
    l1b = drop t2 l1
