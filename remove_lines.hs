main = interact deleteLines

deleteLines :: String -> String
deleteLines = unlines . deletels . lines

deletels :: [String] -> [String]
deletels = reverse . deletehls . reverse . deletehls

deletehls :: [String] -> [String]
deletehls = dropWhile null
