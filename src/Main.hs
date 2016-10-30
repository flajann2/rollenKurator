import System.Environment
import System.Posix.Pty
import System.Console.CmdArgs
import Control.Monad (unless)
import System.IO (isEOF)
import System.Random
        
-- | Mainly main
main :: IO ()
main = getArgs >>= print . haqify . head
haqify s = "Hello World " ++ s
