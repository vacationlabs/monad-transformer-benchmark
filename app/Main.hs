{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib
import Data.Text.Lazy as LT
import Control.Monad
import Data.Text as T
import Control.Monad.Reader
import Network.Wreq as W
import Control.DeepSeq
import Control.Lens
import Criterion.Main
import Control.Concurrent
import Text.Blaze.Html5 hiding (main)
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A
import qualified DynamicMarkup
import qualified ConstantMarkup
import Text.Blaze.Html.Renderer.String
import Data.Time
import qualified ConstantStringMarkup
import qualified DynamicStringMarkup

main :: IO ()
main = do
  tm <- getCurrentTime
  defaultMain
    [
      bench "dynamic markup via blaze"  $ nfIO  $ writeHtml (DynamicMarkup.foliage tm)
    , bench "constant markup via blaze"  $ nfIO $ writeHtml ConstantMarkup.foliage
    , bench "constant markup via text interpolation"  $ nfIO $ writeString ConstantStringMarkup.foliage
    , bench "dynamic markup via text interpolation"  $ nfIO $ writeString (DynamicStringMarkup.foliage tm)
    ]
  return ()


writeHtml :: Html -> IO ()
writeHtml h = void $ forM [1..10] $ const $ writeFile "/dev/null" (renderHtml h) 


writeString :: String -> IO ()
writeString h = void $ forM [1..10] $ const $ writeFile "/dev/null" h 
