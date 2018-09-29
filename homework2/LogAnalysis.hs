{-# OPTIONS_GHC -Wall #-}
module LogAnalysis where
  import Log

  -- Parse individual line
  -- parseMessage "E 2 562 help help"== LogMessage (Error 2) 562 "help help
  parseMessage :: String -> LogMessage

