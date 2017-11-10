multiples n = [ x | x <- [1..n], n `mod` x == 0]

triplesPyth n = [(x,y,z) | x <- [1..n], y <- [x..n], z <- [y..n], x*x+y*y==z*z]

map1 :: (a -> b) -> [a] -> [b]
map1 _ [] = []
map1 f (x:xs) = (f x) : map1 f xs

map2 :: (a -> b) -> [a] -> [b]
map2 f l = [f x | x<-l]

filter1 :: (a -> Bool) -> [a] -> [a]
filter1 _ [] = []
filter1 f (x:xs) = if f x then x:(filter1 f xs) else filter1 f xs


filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p l = [x | x<-l, p x]

doubler1 (x:xs) = if x then x*2:(doubler1 xs) else double1 xs

main = do
  print $ [x | x<-[0..42]]
  print $ [x | x<-[0,2..42]]
  print $ multiples 10
  print $ triplesPyth 50
  print $ map1 (2*)[0..5]
  print $ map2 (2*)[0..10]
  print $ filter1 (even) [0..10]
  print $ filter1 (even) [0..20]
  print $ double1 [1,2,3,4,5]
