describeDay :: String -> String
describeDay "sunny" = "Wear sunglasses"
describeDay "rainy" = "Take an umbrella"
describeDay _       = "Look outside to check the weather"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn (describeDay "sunny")
    print (factorial 5)
