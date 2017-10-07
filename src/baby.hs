-- Define a function.
doubleMe x = x + x

-- Define a function that has two argments.
doubleUs x y = x * 2 + y * 2

-- Reuse the function.
doubleUs2 x y = doubleMe x + doubleMe y

-- if syntax
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

-- It is habitually used to represent functions that are Non-strict or
-- to name a function that has changed slightly.
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- Define a list.
numbers = [1, 2, 3, 4, 5]

-- Concatenate lists
concatNumbers = [1, 2] ++ [3, 4]

-- Concatenate strings.
-- Strings are expressed as a list of characters.
concatStrings = "Hello" ++ " " ++ "Haskell!"

-- : ... Cons operator
addAnElementToHead = 1 : [2, 3]

-- !! ... Get an element from an index.
getAnElementFromAnIndex = [0, 10, 20] !! 1

-- Lists in a list
listsInAList = [[1, 2], [3, 4], [5, 6]]

-- Compare of lists
compareLists1 = [1, 2] > [3, 4]
compareLists2 = [1, 2] < [3, 4]
compareLists3 = [1, 2] == [1, 2]

-- More List's operation
list'sHead = head [1, 2, 3, 4, 5]
list'sTail = tail [1, 2, 3, 4, 5]
list'sLast = head [1, 2, 3, 4, 5]
list'sInit = tail [1, 2, 3, 4, 5]
list'sLength = length [1, 2, 3, 4, 5]
isEmptyList1 = null []
isEmptyList2 = null [1]
reverseAList = [1, 2, 3]
takeElementsFromList = take 3 [1, 2, 3, 4, 5]
dropElementsFromList = drop 3 [1, 2, 3, 4, 5]
getMaximumElement = maximum [1, 2, 3, 4, 5]
getMinimumElement = minimum [1, 2, 3, 4, 5]
returnTheSumfromAList = sum [1, 2, 3, 4, 5]
returnTheProductFromAList = product [1, 2, 3, 4, 5]
containsInList = 3 `elem` [1, 2, 3, 4, 5]

-- Define a range.
intRange = [1..10]
charRange = ['a'..'z']

-- Specify step
intRange2 = [2,4..10]
intRange3 = [3,6..20]
intRange4 = [20,19..1] -- NG: [20..1]

-- Infinite list
-- Don't fall down infinite loop because Haskell is lazy evaluation.
infinityList = [2,4..]
takeFromInfinityList = take 10 infinityList

-- Various functions that define an infinite list.
cycleOneToThree = cycle [1, 2, 3]
repeatTheHoge = repeat "Hoge"
threeFoos = replicate 3 "Foo"

-- Don't use floating point numbers for ranges!
don'tUseIt = [0.1, 0.2 .. 1]
