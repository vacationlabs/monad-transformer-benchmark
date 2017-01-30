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
time                 31.88 ms   (30.60 ms .. 33.34 ms)
                     0.990 R²   (0.980 R² .. 0.997 R²)
mean                 32.29 ms   (31.31 ms .. 33.51 ms)
std dev              2.180 ms   (1.512 ms .. 3.505 ms)
variance introduced by outliers: 22% (moderately inflated)

benchmarking renderTextT Identity
time                 32.10 ms   (31.07 ms .. 33.36 ms)
                     0.994 R²   (0.987 R² .. 0.998 R²)
mean                 31.09 ms   (30.47 ms .. 32.11 ms)
std dev              1.723 ms   (1.246 ms .. 2.233 ms)
variance introduced by outliers: 17% (moderately inflated)

benchmarking renderTextT Reader
time                 41.16 ms   (38.12 ms .. 45.35 ms)
                     0.983 R²   (0.966 R² .. 0.998 R²)
mean                 38.50 ms   (37.55 ms .. 40.23 ms)
std dev              2.440 ms   (1.345 ms .. 4.159 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking renderTextT IO
time                 79.60 ms   (75.12 ms .. 86.66 ms)
                     0.990 R²   (0.975 R² .. 0.999 R²)
mean                 83.10 ms   (80.60 ms .. 85.99 ms)
std dev              4.508 ms   (3.229 ms .. 6.554 ms)
variance introduced by outliers: 18% (moderately inflated)

benchmarking bareScotty
time                 199.4 ms   (178.9 ms .. 229.1 ms)
                     0.988 R²   (0.960 R² .. 1.000 R²)
mean                 183.2 ms   (173.7 ms .. 196.1 ms)
std dev              14.19 ms   (8.899 ms .. 21.20 ms)
variance introduced by outliers: 15% (moderately inflated)

benchmarking bareScottyBareLucid
time                 165.1 ms   (120.8 ms .. 204.4 ms)
                     0.971 R²   (0.945 R² .. 1.000 R²)
mean                 183.2 ms   (169.4 ms .. 191.7 ms)
std dev              14.71 ms   (7.677 ms .. 21.48 ms)
variance introduced by outliers: 16% (moderately inflated)

benchmarking transScottyBareLucid
time                 202.3 ms   (187.8 ms .. 219.8 ms)
                     0.997 R²   (0.995 R² .. 1.000 R²)
mean                 190.0 ms   (184.7 ms .. 196.2 ms)
std dev              7.073 ms   (4.174 ms .. 10.62 ms)
variance introduced by outliers: 14% (moderately inflated)

benchmarking transScottyTransLucid
time                 289.9 ms   (237.1 ms .. 375.0 ms)
                     0.980 R²   (0.962 R² .. 1.000 R²)
mean                 291.6 ms   (272.5 ms .. 305.4 ms)
std dev              22.74 ms   (17.13 ms .. 27.38 ms)
variance introduced by outliers: 18% (moderately inflated)

Saurabhs-MacBook-Pro:monad-transformer-benchmark saurabhnanda$ 
```

# How to replicate

1. Clone the repo
2. Run the following commands from within the repo

```
$ stack build
$ stack exec monad-transformer-benchmark-exe
```
