
-- Type synonym for better readability
type Name = String
type Age = Int

-- Define a record for a Person
data Person = Person
    { firstName :: Name
    , lastName  :: Name
    , age       :: Age
    } deriving (Show, Eq)

-- Function to concatenate full name
fullName :: Person -> String
fullName person = firstName person ++ " " ++ lastName person

-- Function to increment age
addYears :: Person -> Int -> Person
addYears person n = person { age = age person + n }

main :: IO ()
main = do
    -- Create a person record
    let person1 = Person { firstName = "Kato", lastName = "Fredrick", age = 25 }

    putStrLn $ "Person details: " ++ show person1
    putStrLn $ "Full name: " ++ fullName person1

    -- Add 5 years to age
    let olderPerson = addYears person1 5
    putStrLn $ "After 5 years: " ++ show olderPerson
