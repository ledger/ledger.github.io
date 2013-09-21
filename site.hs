#!/usr/bin/env runhaskell
{-# LANGUAGE OverloadedStrings #-}
{-
hakyll site script, builds static website in _site/.
Requires ghc and hakyll (http://www.haskell.org/ghc/download , http://jaspervdj.be/hakyll)
Help: ghc --make site && ./site
-}

import Control.Arrow ((>>>))
import Hakyll
import System.Cmd (system)

main:: IO ()
main = do
 hakyll $ do
  match "*.tmpl"      template
  match "*.md"        page
  match "3.0/doc/*.html" file
  match "3.0/doc/*.pdf" file
  match "2.6/*.html" file
  match "2.6/*.pdf" file
  match "*.css"       css
  match "*.js"        file
  match "*.gif"       file
  match "*.png"       file
 system "[ -d _site ] && ln -sf ../../ledger _site/3.0"
 system "[ -d _site ] && ln -sf ../../ledger2.6 _site/2.6"
 return ()

template = compile templateCompiler
css  = route idRoute >> compile compressCssCompiler
file = route idRoute >> compile copyFileCompiler
page = do
  route $ setExtension "html"
  compile $ pandocCompiler
   >>= loadAndApplyTemplate "site.tmpl" defaultContext
   >>= relativizeUrls
