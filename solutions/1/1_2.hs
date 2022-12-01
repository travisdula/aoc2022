import Data.List.Split
import Data.List

-- show . solve . map read .
main = interact $ show . solve . map (map read . words) . splitOn "\n\n"

solve :: [[Int]] -> Int
solve = sum . take 3 . reverse . sort . map sum
