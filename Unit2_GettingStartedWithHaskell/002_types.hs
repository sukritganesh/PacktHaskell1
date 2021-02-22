data Compass = North | South | East | West
    deriving (Eq, Ord, Show, Enum)

-- instance Show Compass where
--     show North = "North"
--     show South = "South"
--     show East = "East"
--     show West = "West"

-- instance Eq Compass where
--     North == North = True
--     South == South = True
--     East == East = True 
--     West == West = True

data Expression = Number Int | Add Expression Expression | Subtract Expression Expression
    deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

-- Demo:
-- calculate (Add (Number 2) (Subtract (Number 1) (Number 10)))

newHead :: [a] -> a
newHead [] = error "empty list!!!!!!"
newHead (x:xs) = x

newTail :: [b] -> [b]
newTail [] = error "empry list!!!!!!"
newTail (x:xs) = xs
