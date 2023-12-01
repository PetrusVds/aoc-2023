import Data.Char (isDigit)

trebuchet :: [String] -> Int
trebuchet = foldr ((+) . calibration) 0

calibration :: String -> Int
calibration "" = 0
calibration string = read [head digits, last digits]
  where
    digits = filter isDigit string

main :: IO ()
main = do
  content <- readFile "input.txt"
  let input = lines content
  let resInput = trebuchet input
  putStrLn $ "Sum of calibration values: " ++ show resInput