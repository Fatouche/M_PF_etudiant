mappingDoubler :: Num a => [a] -> [a]
mappingDoubler = map (*2)

mappingDoubler' :: Num a => [a] -> [a]
mappingDoubler' [] = []
mappingDoubler' (x:xs) = (x*2):(mappingDoubler' xs)

filtragePairs :: [Int] -> [Int]
filtragePairs = filter even

filtragePairs' :: [Int] -> [Int]
filtragePairs' [] = []
filtragePairs' (x:xs) = if even x
                        then x:(filtragePairs' xs)
                        else (filtragePairs' xs)
                             
reductionSomme :: [Int] -> Int
reductionSomme = foldr (+) 0

reductionSomme' :: [Int] -> Int
reductionSomme' [] = 0
reductionSomme' (x:xs) = x +  (reductionSomme' xs)

factorielleReduction n = foldr (*) 1 [1..n]

--fiboReduction n = fst .( foldr(\(x,y)_->(y,x*y))(0,1)

absList = map (abs)

maxList (x:xs) = foldr max x xs

first3 :: [String] -> [String]
first3 = map (take 3)

short :: [String] -> [String]
short = filter ((<3).length)

main = do
  print $ mappingDoubler [1..5]
  print $ mappingDoubler' [1..5]
  print $ filtragePairs [1..15]
  print $ filtragePairs' [1..15]
  print $ reductionSomme [1..5]
  print $ reductionSomme' [1..5]
  print $ factorielleReduction 5
-- print $ fiboReduction 5
  print $ absList [-10..5]
  print $ maxList [10,15,20,1,4]
  print $ first3 ["bjrlololo","jesds","suis"]
  print $ short ["bjrlololo","lk","jesds","n","suis","nj"]
