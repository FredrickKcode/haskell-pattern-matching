

import System.IO (hFlush, stdout)

-- Function to prompt for password recursively
checkPassword :: IO ()
checkPassword = do
    putStr "Enter password: "
    hFlush stdout
    input <- getLine
    if input == "1234"
        then putStrLn "Access granted!"
        else do
            putStrLn "Incorrect password. Try again."
            checkPassword  -- Recursive call for retry

main :: IO ()
main = do
    putStrLn "Password Verification Program"
    checkPassword
