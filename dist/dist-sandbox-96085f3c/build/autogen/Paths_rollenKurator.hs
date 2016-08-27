{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_rollenKurator (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/mnt/legacy/development/haskell/rollenKurator/.cabal-sandbox/bin"
libdir     = "/mnt/legacy/development/haskell/rollenKurator/.cabal-sandbox/lib/x86_64-linux-ghc-7.10.3/rollenKurator-0.1.0.0-CjBiD4FGcJJDcGAOkpmTum"
datadir    = "/mnt/legacy/development/haskell/rollenKurator/.cabal-sandbox/share/x86_64-linux-ghc-7.10.3/rollenKurator-0.1.0.0"
libexecdir = "/mnt/legacy/development/haskell/rollenKurator/.cabal-sandbox/libexec"
sysconfdir = "/mnt/legacy/development/haskell/rollenKurator/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "rollenKurator_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "rollenKurator_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "rollenKurator_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "rollenKurator_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "rollenKurator_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
