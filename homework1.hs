{-
  Homework N° 1
  http://www.seas.upenn.edu/~cis194/hw/01-intro.pdf
-}

-- Exercise 1
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = ((mod n 10) : (toDigitsRev (div n 10)))

toDigits :: Integer -> [Integer]
toDigits n = reverse (toDigitsRev n)

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = zipWith (*) (take (length xs) (cycle [1,2])) xs

-- Exercise 3
sumDigits :: [Integer] -> Integer
sumDigits xs = sum (map arrItem xs)
  where arrItem x = sum (toDigits x )

-- Exercise 4
validate :: Integer -> Bool
validate x = mod processedNumber 10 == 0
  where processedNumber = sumDigits (doubleEveryOther (toDigits x))
