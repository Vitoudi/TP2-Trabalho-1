--usar comandos
--cabal install --lib containers
--cabal install --lib split

import System.IO ()
import Data.Char ( toLower, isAlpha )
import Data.List (sortBy)
import Data.List.Split (splitOn)
import Data.Ord (comparing, Down (Down))
import qualified Data.Map as M

newtype TFTheOne a = TFTheOne { getValue :: a }

instance Functor TFTheOne where
    fmap :: (a -> b) -> TFTheOne a -> TFTheOne b
    fmap f (TFTheOne a) = TFTheOne (f a)

readFile' :: FilePath -> IO String
readFile' path = do
    readFile path

filterChars :: String -> String
filterChars = map (\c -> if isAlpha c || c == ' ' then c else ' ')

normalize :: String -> String
normalize = map toLower

scan :: String -> [String]
scan = words

removeStopWords :: [String] -> IO [String]
removeStopWords wordList = do
    stopWordsContent <- readFile "stop_words.txt"
    let stopWords = splitOn "," stopWordsContent
    let stopWordsSet = stopWords ++ map (:[]) ['a'..'z']
    return $ filter (`notElem` stopWordsSet) wordList

frequencies :: [String] -> M.Map String Int
frequencies = foldr (\word -> M.insertWith (+) word 1) M.empty

sort :: M.Map String Int -> [(String, Int)]
sort = sortBy (comparing (Data.Ord.Down . snd)) . M.toList

top25Freqs :: [(String, Int)] -> String
top25Freqs = unlines . map (\(word, freq) -> word ++ " - " ++ show freq) . take 25

main :: IO ()
main = do
    let theOne = TFTheOne "pride-and-prejudice.txt"
    contents <- readFile' (getValue theOne)
    let normalized = normalize . filterChars $ contents
    let scanned = scan normalized
    stopWordsRemoved <- removeStopWords scanned
    let freqs = frequencies stopWordsRemoved
    let sorted = sort freqs
    putStrLn $ top25Freqs sorted