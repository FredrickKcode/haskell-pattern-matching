

-- Define a generic container type
data Box a = Box a deriving (Show)

-- Function to retrieve value from the Box
unbox :: Box a -> a
unbox (Box x) = x

-- Example: Using Box with different types
main :: IO ()
main = do
    let intBox = Box 42           -- Box containing an Int
    let strBox = Box "Haskell"    -- Box containing a String
    let listBox = Box [1,2,3]     -- Box containing a list

    putStrLn $ "Int in box: " ++ show (unbox intBox)
    putStrLn $ "String in box: " ++ unbox strBox
    putStrLn $ "List in box: " ++ show (unbox listBox)
