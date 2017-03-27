import Test.Hspec
import Fib

main :: IO ()
main = hspec $ do
    describe "fib" $ do
        parallel $ it "gives fibonacci numbers" $ 
            fib 10 `shouldBe` 89
