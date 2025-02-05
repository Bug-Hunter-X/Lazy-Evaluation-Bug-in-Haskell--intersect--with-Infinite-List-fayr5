The solution avoids the infinite list traversal by using `takeWhile` to limit the search within a reasonable range, or by using a more suitable data structure:

```haskell
import Data.List (intersect)
import Data.Maybe (listToMaybe)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe $ xs `intersect` ys

--Solution 1: Using takeWhile to limit the search space
findCommon' :: [Int] -> [Int] -> Maybe Int
findCommon' xs ys = listToMaybe $ takeWhile (<2001) xs `intersect` ys

--Solution 2:  Using a finite list from the start if possible (if the input allows).
findCommon'' :: [Int] -> [Int] -> Maybe Int
findCommon'' xs ys = listToMaybe $ take 1000 xs `intersect` ys -- Or any finite prefix

main :: IO ()
main = do
  let xs = [1..]
      ys = [1000..2000]
  print (findCommon' xs ys)  --Prints Just 1000
  print (findCommon'' xs ys) -- Prints Just 1000
```
This revised code ensures that the intersection operation completes successfully by limiting the traversal of the infinite list to a finite portion, or by modifying the inputs to use finite lists.