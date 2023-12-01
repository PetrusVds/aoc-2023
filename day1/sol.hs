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
  let ex = ["1abc2", "pqr3stu8vwx", "a1b2c3d4e5f", "treb7uchet"]
  let res = trebuchet ex
  putStrLn $ "Sum of calibration values: " ++ show res