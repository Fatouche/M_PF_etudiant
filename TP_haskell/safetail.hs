safetail1 :: [Char] -> [Char]
safetail1 xs = if null xs
               then ""
               else tail xs
                       
safetail2 :: String -> String 
safetail2 ss
  | ss == "" = ""
  | otherwise = tail ss

safetail3 :: String -> String
safetail3 "" = ""
safetail3 xs = tail xs


main = do
  print $ safetail1 ['1','2','1','i']
  print $ safetail2 []
  print $ safetail3 ['e','i'] 
