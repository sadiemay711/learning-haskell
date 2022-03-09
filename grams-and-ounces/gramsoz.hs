oztog :: Float -> Float
oztog x = x * 28.3495 

gtooz :: Float -> Float 
gtooz x = x / 28.3495


main :: IO ()
main =  do
putStrLn "This converts between ounces and grams."
putStrLn "Input 1 to convert from ounces. Input 2 to convert from grams."
choice <- readLn
if choice == 1
  then do 
        putStrLn "Input how man ounces you have"
        x <- readLn
        let result = oztog(x)
        let final = (show result)
        putStrLn ("You have " ++ final ++ " grams.")
else if  choice == 2
   then do
     putStrLn "Input how many grams you have."
     x <- readLn
     let result = gtooz(x)
     let final = (show result)
     putStrLn ("You have " ++ final ++ " ounces.")
else putStr"Not a valid Choice"
