-- This is the Haskell Crash Course
-- YOUTUBE LINK: https://youtu.be/02_H3LjqMr8?si=PKMgOfPYOwRsGpfJ

{-
WE LOVE HASKELL
This file contains a crash course on how to write programs in Haskell. It's meant for people who are completely new to functional programming and!!!!
-}

import Data.List
import System.IO

{- 
Haskell:
  1. uses type inference 
  2. is statically typed. In other words, once you define a type, you won't be able to switch it.

  3. Int & Integer are different. Int is bounded whereas Integer is unbounded and can be as large as your memory can uphold.
-}

addEx = 5 + 4
subtractEx = 5 - 4
multiplyEx = 5 * 4
divideEx = 5 / 4

modEx = mod 5 4 -- prefix operator
modEx2 = 5 `mod` 4 --infix operator

negNumEx = 5 + (-4) -- Addition with a negative number requires parenthesis

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

-- BUILT-IN FUNCTIONS
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.99999
roundVal = round 9.99999
ceilingVal = ceiling 9.99999
floorVal = floor 9.99999

-- Also: sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not True

-- LISTS
primeNumbers :: [Int]
primeNumbers = [3, 5, 7, 11]
morePrimeNumbers = primeNumbers ++ [13, 17, 19, 23, 29]
favNums = 2 : 7 : 21 : 66 : [] -- A way to combine numbers into a list
multList = [[3, 5, 7], [11, 13, 17]]
morePrimeNumbers2 = 101 : morePrimeNumbers
lenPrime = length morePrimeNumbers2
revPrimeNumbers = reverse morePrimeNumbers2
headPrime = case morePrimeNumbers2 of
              (x:_) -> x
              [] -> error "The list is empty"
lastPrime = last morePrimeNumbers2
isListEmpty = null morePrimeNumbers2
secondPrime = morePrimeNumbers2 !! 1 -- Fetch second number in the list. N.B. Lists start from the index [0]
primeInit = init morePrimeNumbers2
first3Primes = take 3 morePrimeNumbers2
remove3Primes = drop 3 morePrimeNumbers2
remove3 = filter (/= 3) morePrimeNumbers2
is7InList = 7 `elem` morePrimeNumbers2
maxPrime = maximum morePrimeNumbers2
minPrime = minimum morePrimeNumbers
newList = [1, 3, 5]
productPrimes = product newList
sumPrimes = sum newList
zeroToTen = [1..10]
evenList = [2, 4..20]
skippedLetterList = ['A', 'C'..'Z']
many2s = take 10 (repeat 2) -- We can create infinite lists in Haskell since it's a lazy language
many3s = replicate 10 3
cycleList = take 10 (cycle [1, 2, 3])
listTimes2 = [x * 2 | x <- [1..10], x `mod` 5 == 0]
divisibleBy9N13 = [x | x <- [1..500], x `mod` 9 == 0, x `mod` 13 == 0]
sortedList = sort [9, 1, 8, 3, 4, 7, 6]
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9] -- If lists are uneven in size, the numbers that do not have a pair are dropped
listBiggerThan5 = filter (>5) morePrimeNumbers2
evensUpTo20 = takeWhile (<=20) [2, 4..]

main :: IO ()
main = do
  putStrLn "Welcome the Haskell Crash Course"
  putStrLn "Let's get started..."
  putStrLn $ "Addition Example: " ++ show addEx
  putStrLn $ "Subtraction Example: " ++ show subtractEx
  putStrLn $ "Multiplication Example: " ++ show multiplyEx
  putStrLn $ "Division Example: " ++ show divideEx 
  putStrLn $ "Modulus Prefix Example: " ++ show modEx 
  putStrLn $ "Modulus Infix Example: " ++ show modEx2 
  -- Testing other variables
  putStrLn $ "Addition with Negative Number Example: " ++ show negNumEx
  putStrLn $ "Square Root of 9: " ++ show sqrtOf9
  putStrLn $ "Value of Pi: " ++ show piVal
  putStrLn $ "e raised to the power of 9: " ++ show ePow9
  putStrLn $ "Logarithm of 9: " ++ show logOf9
  putStrLn $ "Square of 9: " ++ show squared9
  putStrLn $ "Truncate 9.99999: " ++ show truncateVal
  putStrLn $ "Round 9.99999: " ++ show roundVal
  putStrLn $ "Ceiling of 9.99999: " ++ show ceilingVal
  putStrLn $ "Floor of 9.99999: " ++ show floorVal
  putStrLn $ "Boolean AND Example: " ++ show trueAndFalse
  putStrLn $ "Boolean OR Example: " ++ show trueOrFalse
  putStrLn $ "Boolean NOT Example: " ++ show notTrue
  -- Testing list-related variables
  putStrLn $ "Prime Numbers: " ++ show primeNumbers
  putStrLn $ "More Prime Numbers: " ++ show morePrimeNumbers
  putStrLn $ "Favorite Numbers: " ++ show favNums
  putStrLn $ "Multi-level List: " ++ show multList
  putStrLn $ "More Prime Numbers 2: " ++ show morePrimeNumbers2
  putStrLn $ "Length of More Prime Numbers 2: " ++ show lenPrime
  putStrLn $ "Reversed Primes: " ++ show revPrimeNumbers
  putStrLn $ "Head of Primes: " ++ show headPrime
  putStrLn $ "Last of Primes: " ++ show lastPrime
  if isListEmpty then
    putStrLn "The favorite numbers list is empty."
  else 
    putStrLn $ "There are elements in the favorite numbers list: " ++ show morePrimeNumbers2
  putStrLn $ "Second number on the Prime Numbers 2 list: " ++ show secondPrime
  putStrLn $ "Prime Numbers without the last element: " ++ show primeInit
  putStrLn $ "First 3 Prime Numbers: " ++ show first3Primes
  putStrLn $ "More Prime Numbers without the first 3: " ++ show remove3Primes
  putStrLn $ "More Prime Numbers without the element 3: " ++ show remove3
  putStrLn $ "Is 7 on the Prime Numbers 2 list: " ++ show is7InList
  putStrLn $ "Maximum number on the Prime Numbers 2 list: " ++ show maxPrime
  putStrLn $ "Minimum number on the Prime Numbers 2 list: " ++ show minPrime
  -- Create Range
  putStrLn $ "Sum of all numbers on the new list: " ++ show sumPrimes
  putStrLn $ "Product of all numbers on the new list: " ++ show productPrimes
  putStrLn $ "List from 0 to 10: " ++ show zeroToTen
  putStrLn $ "Even numbers between 1 and 20: " ++ show evenList
  putStrLn $ "Skipped letter list: " ++ show skippedLetterList
  -- E.g. infList = [10, 20..]
  putStrLn $ "2 is generated 10 times since we defined it to generate until 10: " ++ show many2s
  putStrLn $ "3 is replicated 10 times: " ++ show many3s
  putStrLn $ "Repeat items in a list indefinitely: " ++ show cycleList
  putStrLn $ "Multiply every item in the list by 2: " ++ show listTimes2
  putStrLn $ "Take only the values divisible by 9 and 13 in the list: " ++ show divisibleBy9N13
  putStrLn $ "Sort a list: " ++ show sortedList
  putStrLn $ "Sum of lists with ZIP: " ++ show sumOfLists
  putStrLn $ "Filtered list of the prime numbers greater than 5: " ++ show morePrimeNumbers2
  putStrLn $ "Even list created upto 20: " ++ show evensUpTo20

