{- |
Module      :  $Header$ 
Description :  Main for rollenKurator
Copyright   :  (c) 2017 Fred Mitchell
License     :  MIT

Maintainer  :  fred.mitchell@gmx.de
Stability   :  experimental
Portability :  portable

RollenKurator takes multiple lines -- presumably from stdin -- to execute
concurrently, with the ability to filter and display the output streams
in your console / terminal as adjustable panes.
-}

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
