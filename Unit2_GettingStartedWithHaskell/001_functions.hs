main :: IO ()
main = putStrLn (greet "World")

greeting = "Hello"
greet who = greeting ++ ", " ++ who

add :: Int -> Int -> Int
add a b = a + b