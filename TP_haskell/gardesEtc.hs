analyseTemp :: Int -> String
analyseTemp t
  | t < (-20) = "Frisquet"
  | t < 20 = "Nirvana"
  | otherwise = "Canicule"

analyseTemp' t = if t < (-20)
                 then "Frisquet"
                 else if t > 20
                      then "Canicule"
                      else "Nirvana"
main = do
  print $ analyseTemp (-30)
  print $ analyseTemp' (30)
