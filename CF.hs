import GHC.IO.Handle (hFlush)
import System.IO (stdout)

main :: IO ()
main = do
    putStrLn "welcome in kalkulator"
    putStr " 1 - szeregowe"
    putStrLn " 2 - rownolegle"
    putStr ">"
    hFlush stdout
    input <- getLine

    if input == "1"
        then szer 0.0
    else if input == "2"
        then row 0.0
    else putStrLn "zla opcja"
szer :: Float -> IO ()
szer suma = do
    putStrLn "wpisz wartosc (0 aby zakonczyc)"
    putStr ">"
    hFlush stdout
    input <- getLine
    let number = read input :: Float
    if number /= 0
        then szer (suma + 1/number)
    else putStrLn $ "Wynik wynosi: " ++ show suma ++ "[F]"
row :: Float -> IO ()
row suma = do
    putStrLn "wpisz wartosc (0 aby zakonczyc)"
    putStr ">"
    hFlush stdout
    input <- getLine
    let number = read input :: Float
    if number /= 0
        then row (suma + number)
    else putStrLn $ "Wynik wynosi: " ++ show suma ++ "[F]"