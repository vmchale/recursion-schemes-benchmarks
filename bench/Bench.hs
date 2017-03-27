module Main where

import Criterion.Main
import Fib

main = 
    defaultMain [ bgroup "fib"
                      [ bench "10" $ whnf fib 10 
                      , bench "15" $ whnf fib 15
                      , bench "20" $ whnf fib 20 ]
                , bgroup "fib'"
                      [ bench "10" $ whnf fib' 10 
                      , bench "15" $ whnf fib' 15
                      , bench "20" $ whnf fib' 20 ]
                , bgroup "fibInt"
                      [ bench "10" $ whnf fibInt 10 
                      , bench "15" $ whnf fibInt 15
                      , bench "20" $ whnf fibInt 20 ]
                , bgroup "fibInt'"
                      [ bench "10" $ whnf fibInt' 10 
                      , bench "15" $ whnf fibInt' 15
                      , bench "20" $ whnf fibInt' 20 ]
                ]
