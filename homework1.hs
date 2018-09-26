{-
  Homework N° 1
-}

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n
  | n < 0 = []
  | otherwise = toDigits (n `div` 10) ++ n `mod` 10

toDigitsRev :: Integer -> [Integer]
