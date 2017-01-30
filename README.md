# Overview

Minimal code to demonstrate the severe performance drop incurred when the monad transformers of Scotty & Lucid are combined, i.e. `ScottyT` and `HtmlT`. Take a look at the benchmark numbers below of `tranScottyBareLucid` and `transScottyTransLucid` - almost a 100ms drop in this synthetic benchmark. In the real-life application code where I first noticed it, it was a 200ms performance penalty.

# Discussion

Discuss on Reddit - https://www.reddit.com/r/haskell/comments/5qpi15/expected_performance_drop_while_using_monad/ or send me a PR if you feel the benchmarking method is not correct.

# Benchmark results

Take note of the `renderTextT Reader` vs `renderTextT IO` and `transScottytransLucid` vs `transScottyTransLucid`

```
vacationlabs@e2e-15-165:~/monad-transformer-benchmark$ export LC_ALL=en_US.UTF-8
vacationlabs@e2e-15-165:~/monad-transformer-benchmark$ stack exec monad-transformer-benchmark-exe
Setting phasers to stun... (port 3005) (ctrl-c to quit)
Setting phasers to stun... (port 3002) (ctrl-c to quit)
Setting phasers to stun... (port 3001) (ctrl-c to quit)
Setting phasers to stun... (port 3003) (ctrl-c to quit)
benchmarking renderText
time                 7.873 ms   (7.748 ms .. 8.025 ms) 
                     0.997 R²   (0.995 R² .. 0.999 R²)
mean                 7.926 ms   (7.869 ms .. 8.019 ms) 
std dev              200.2 μs   (132.3 μs .. 272.1 μs)

benchmarking renderTextT Identity
time                 8.353 ms   (8.138 ms .. 8.565 ms) 
                     0.996 R²   (0.994 R² .. 0.998 R²)
mean                 8.095 ms   (8.001 ms .. 8.230 ms) 
std dev              320.7 μs   (218.3 μs .. 531.9 μs)
variance introduced by outliers: 17% (moderately inflated)

benchmarking renderTextT Reader
time                 9.486 ms   (9.360 ms .. 9.640 ms)
                     0.999 R²   (0.996 R² .. 1.000 R²)
mean                 9.333 ms   (9.272 ms .. 9.408 ms)
std dev              192.4 μs   (128.0 μs .. 294.0 μs)

benchmarking renderTextT IO
time                 23.14 ms   (22.81 ms .. 23.78 ms)
                     0.997 R²   (0.992 R² .. 1.000 R²)
mean                 23.21 ms   (22.97 ms .. 23.57 ms)
std dev              639.2 μs   (404.0 μs .. 907.6 μs)

benchmarking bareScotty
time                 20.62 ms   (19.93 ms .. 21.39 ms)
                     0.995 R²   (0.992 R² .. 0.998 R²)
mean                 22.12 ms   (21.69 ms .. 22.49 ms)
std dev              915.7 μs   (725.7 μs .. 1.192 ms)
variance introduced by outliers: 14% (moderately inflated)

benchmarking bareScottyBareLucid
time                 21.06 ms   (20.74 ms .. 21.64 ms)
                     0.997 R²   (0.994 R² .. 1.000 R²)
mean                 21.09 ms   (20.89 ms .. 21.37 ms)
std dev              523.6 μs   (359.6 μs .. 750.2 μs)

benchmarking transScottyBareLucid
time                 20.95 ms   (20.58 ms .. 21.29 ms)
                     0.998 R²   (0.997 R² .. 0.999 R²)
mean                 21.49 ms   (21.13 ms .. 22.33 ms)
std dev              1.178 ms   (580.0 μs .. 2.162 ms)
variance introduced by outliers: 22% (moderately inflated)

benchmarking transScottyTransLucid
time                 49.05 ms   (46.63 ms .. 50.99 ms)
                     0.996 R²   (0.994 R² .. 1.000 R²)
mean                 45.91 ms   (44.90 ms .. 46.94 ms)
std dev              2.004 ms   (1.367 ms .. 2.996 ms)
variance introduced by outliers: 13% (moderately inflated)
```

# How to replicate

1. Clone the repo
2. Run the following commands from within the repo

```
$ stack build
$ LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 stack exec monad-transformer-benchmark-exe
```
