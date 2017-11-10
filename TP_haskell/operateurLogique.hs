ou :: Bool -> Bool -> Bool
ou False False = False
ou _ _ = True

main = do
  print $ ou False False
