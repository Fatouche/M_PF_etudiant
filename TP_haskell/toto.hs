import Control.Monad
import System.Exit

nom = do
  putStrLn ("Entrez votre nom : ")
  nom <- getLine
  if nom == "quit"
    then exitSuccess
  else
    putStrLn ("Bonjour à toi " ++ nom ++ " !")

main = forever nom
