import System.Environment

-- | Mainly main
main :: IO ()
main = getArgs >>= print . haqify . head
haqify s = "Hello World" ++ s

