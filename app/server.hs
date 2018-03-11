module Main where

import Control.Monad
import Happstack.Server (nullConf, simpleHTTP, ok, dir, path)

main :: IO ()
main = simpleHTTP nullConf $ msum [ dir "hello"   $ path $ \s -> ok $ "Hello, " ++ s ]

