{-
  Homework N° 1
-}


toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = ((mod n 10) : (toDigits (div n 10)))

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n = reverse (toDigits n)