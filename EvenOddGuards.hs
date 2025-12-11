

-- Function to check if a number is even or odd using guards
evenOrOdd :: Int -> String
evenOrOdd n
    | n `mod` 2 == 0 = "Even"
    | otherwise      = "Odd"

-- Main function to test
main :: IO ()
main = do
    let numbers = [1..10]
    putStrLn "Number classification (Even/Odd):"
    mapM_ (\x -> putStrLn $ show x ++ " is " ++ evenOrOdd x) numbers
