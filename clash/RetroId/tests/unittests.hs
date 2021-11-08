import Prelude

import Test.Tasty

import qualified Tests.RetroId

main :: IO ()
main = defaultMain $ testGroup "."
  [ Tests.RetroId.tests
  ]
