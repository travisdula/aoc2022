import Data.List.Split

-- show . solve . map read .
main = interact $ show . solve . map (map read . words) . splitOn "\n\n"

solve :: [[Int]] -> Int
solve = maximum . map sum
