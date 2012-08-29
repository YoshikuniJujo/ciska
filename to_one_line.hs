main = interact toOneLine

toOneLine :: String -> String
toOneLine = unlines . map unwords . separateToNs 80 . words

separateToNs :: Int -> [String] -> [[String]]
separateToNs _ [] = []
separateToNs n ws = t : separateToNs n rest
	where
	(t, rest) = getWordsN n ws

getWordsN :: Int -> [String] -> ([String], [String])
getWordsN _ [] = ([], [])
getWordsN n wa@(w : ws)
	| length w > n = ([], wa)
	| otherwise = (w : t, rest)
	where
	(t, rest) = getWordsN (n - length w - 1) ws
