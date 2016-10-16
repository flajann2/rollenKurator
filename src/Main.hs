import System.Environment
import System.Posix.Pty

-- | Mainly main
main :: IO ()
main = getArgs >>= print . haqify . head
haqify s = "Hello World " ++ s

