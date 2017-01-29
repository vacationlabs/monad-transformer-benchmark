# Overview

Minimal code to demonstrate the severe performance drop incurred when the monad transformers of Scotty & Lucid are combined, i.e. `ScottyT` and `HtmlT`. Take a look at the benchmark numbers below of `tranScottyBareLucid` and `transScottyTransLucid` - almost a 100ms drop in this synthetic benchmark. In the real-life application code where I first noticed it, it was a 200ms performance penalty.

# Discussion

Discuss on Reddit - https://www.reddit.com/r/haskell/comments/5qpi15/expected_performance_drop_while_using_monad/ or send me a PR if you feel the benchmarking method is not correct.

# Benchmark results

Take note of the `renderTextT Reader` vs `renderTextT IO` and `transScottytransLucid` vs `transScottyTransLucid`

```
Saurabhs-MacBook-Pro:monad-transformer-benchmark saurabhnanda$ stack exec monad-transformer-benchmark-exe
Setting phasers to stun... (port 3001) (ctrl-c to quit)
Setting phasers to stun... (port 3002) (ctrl-c to quit)
Setting phasers to stun... (port 3003) (ctrl-c to quit)
Setting phasers to stun... (port 3000) (ctrl-c to quit)
benchmarking renderText
time                 32.04 ms   (31.14 ms .. 32.54 ms)
                     0.997 R²   (0.994 R² .. 1.000 R²)
mean                 31.73 ms   (31.25 ms .. 32.21 ms)
std dev              1.049 ms   (785.1 μs .. 1.321 ms)
variance introduced by outliers: 11% (moderately inflated)

benchmarking renderTextT Identity
time                 31.37 ms   (30.17 ms .. 32.47 ms)
                     0.995 R²   (0.989 R² .. 0.998 R²)
mean                 32.90 ms   (32.23 ms .. 33.53 ms)
std dev              1.359 ms   (1.064 ms .. 1.839 ms)
variance introduced by outliers: 11% (moderately inflated)

benchmarking renderTextT Reader
time                 33.45 ms   (32.94 ms .. 33.94 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 34.38 ms   (33.95 ms .. 35.18 ms)
std dev              1.177 ms   (647.7 μs .. 1.982 ms)
variance introduced by outliers: 11% (moderately inflated)

benchmarking renderTextT IO
time                 74.52 ms   (73.08 ms .. 75.69 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 75.17 ms   (74.51 ms .. 76.00 ms)
std dev              1.247 ms   (880.2 μs .. 1.742 ms)

benchmarking bareScotty
time                 153.7 ms   (149.9 ms .. 158.1 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 160.2 ms   (157.5 ms .. 165.9 ms)
std dev              5.399 ms   (1.659 ms .. 7.798 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking bareScottyBareLucid
time                 161.5 ms   (152.9 ms .. 167.9 ms)
                     0.998 R²   (0.995 R² .. 1.000 R²)
mean                 160.5 ms   (158.2 ms .. 162.6 ms)
std dev              2.831 ms   (1.913 ms .. 4.143 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking transScottyBareLucid
time                 167.5 ms   (154.7 ms .. 201.6 ms)
                     0.976 R²   (0.918 R² .. 1.000 R²)
mean                 160.8 ms   (155.9 ms .. 174.4 ms)
std dev              11.26 ms   (515.2 μs .. 15.52 ms)
variance introduced by outliers: 13% (moderately inflated)

benchmarking transScottyTransLucid
time                 250.6 ms   (204.2 ms .. 298.2 ms)
                     0.991 R²   (0.978 R² .. 1.000 R²)
mean                 264.2 ms   (252.5 ms .. 274.6 ms)
std dev              13.13 ms   (3.154 ms .. 16.99 ms)
variance introduced by outliers: 16% (moderately inflated)
```

# How to replicate

1. Clone the repo
2. Run the following commands from within the repo

```
$ stack build
$ stack exec monad-transformer-benchmark-exe
```
