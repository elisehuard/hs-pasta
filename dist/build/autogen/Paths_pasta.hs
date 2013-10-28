module Paths_pasta (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/elise/.cabal/bin"
libdir     = "/Users/elise/.cabal/lib/pasta-0.1.0.0/ghc-7.6.3"
datadir    = "/Users/elise/.cabal/share/pasta-0.1.0.0"
libexecdir = "/Users/elise/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "pasta_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "pasta_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "pasta_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "pasta_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
