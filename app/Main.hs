{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lucid
import qualified Web.Scotty.Trans as ST
import qualified Web.Scotty as S
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

bareScotty :: IO ()
bareScotty = do
  S.scotty 3000 app
  where
    app = S.get "/" $ do
      S.html "hello world!"

bareScottyBareLucid :: IO ()
bareScottyBareLucid = S.scotty 3001 app
  where
    app = S.get "/" $ do
      S.html $ renderText generateHtml

    generateHtml = body_ $ do
      forM [1..10000] (\_ -> div_ "hello world!")

transScottyBareLucid :: IO ()
transScottyBareLucid = ST.scottyT 3002 insideReader app
  where
    app :: (MonadIO m) => ST.ScottyT LT.Text m ()
    app = ST.get "/" $ do
      ST.html $ renderText generateHtml

    generateHtml = body_ $ do
      replicateM_ 10000 (div_ "hello world!")

    insideReader action = runReaderT action ()

transScottyTransLucid :: IO ()
transScottyTransLucid = ST.scottyT 3003 insideReader app
  where
    app :: (MonadIO m) => ST.ScottyT LT.Text m ()
    app = ST.get "/" $ do
      renderTextT generateHtml >>= ST.html

    generateHtml :: Monad m => HtmlT m ()
    generateHtml = body_ $ do
      replicateM_ 10000 (div_ "hello world!")

    insideReader action = runReaderT action ()

fetchEndpoint port = do
  res <- W.get ("http://localhost:" ++ (show port) ++ "/")
  return $ force $ res ^. responseBody

lotsOfDivs :: Monad m => Int -> HtmlT m ()
lotsOfDivs n = body_
  $ replicateM_ n
  $ div_ "hello world!"


main :: IO ()
main = do
  s1 <- forkIO $ bareScotty
  s2 <- forkIO $ bareScottyBareLucid
  s3 <- forkIO $ transScottyBareLucid
  s4 <- forkIO $ transScottyTransLucid
  threadDelay (2*1000000) -- wait for 2 seconds to allow scotty threads to become functional
  defaultMain
    [ bench "renderText"     $ nf   (renderText  . lotsOfDivs) 10000
    , bench "renderTextT Identity" $ nf (runIdentity . renderTextT . lotsOfDivs) 10000
    , bench "renderTextT Reader" $ nf (flip runReader () . renderTextT . lotsOfDivs) 10000
    , bench "renderTextT IO" $ nfIO (renderTextT  (lotsOfDivs  10000) :: IO LT.Text)
    , bench "bareScotty" $ nfIO $ fetchEndpoint 3001
    , bench "bareScottyBareLucid" $ nfIO $ fetchEndpoint 3001
    , bench "transScottyBareLucid" $ nfIO $ fetchEndpoint 3002
    , bench "transScottyTransLucid" $ nfIO $ fetchEndpoint 3003
    ]
  killThread s1
  killThread s2
  killThread s3
  killThread s4
  return ()
