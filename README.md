# Overview

Minimal code to demonstrate the severe performance drop incurred when the monad transformers of Scotty & Lucid are combined, i.e. `ScottyT` and `HtmlT`. Take a look at the benchmark numbers below of `tranScottyBareLucid` and `transScottyTransLucid` - almost a 100ms drop in this synthetic benchmark. In the real-life application code where I first noticed it, it was a 200ms performance penalty.

# Discussion

Discuss on Reddit - https://www.reddit.com/r/haskell/comments/5qpi15/expected_performance_drop_while_using_monad/ or send me a PR if you feel the benchmarking method is not correct.

# Benchmark results

```
Saurabhs-MacBook-Pro:monad-transformer-benchmark saurabhnanda$ stack exec monad-transformer-benchmark-exe
Setting phasers to stun... (port 3001) (ctrl-c to quit)
Setting phasers to stun... (port 3003) (ctrl-c to quit)
Setting phasers to stun... (port 3002) (ctrl-c to quit)
Setting phasers to stun... (port 3000) (ctrl-c to quit)
benchmarking bareScotty
time                 152.7 ms   (146.6 ms .. 158.1 ms)
                     0.999 R²   (0.996 R² .. 1.000 R²)
mean                 159.9 ms   (156.8 ms .. 164.2 ms)
std dev              4.909 ms   (3.219 ms .. 6.527 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking bareScottyBareLucid
time                 158.2 ms   (153.9 ms .. 162.3 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 155.8 ms   (154.4 ms .. 157.5 ms)
std dev              2.117 ms   (1.027 ms .. 2.653 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking transScottyBareLucid
time                 161.5 ms   (155.5 ms .. 167.4 ms)
                     0.998 R²   (0.996 R² .. 1.000 R²)
mean                 157.2 ms   (155.4 ms .. 160.4 ms)
std dev              3.164 ms   (1.510 ms .. 4.661 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking transScottyTransLucid
time                 269.2 ms   (246.5 ms .. 292.8 ms)
                     0.998 R²   (0.994 R² .. 1.000 R²)
mean                 263.4 ms   (256.2 ms .. 267.0 ms)
std dev              6.762 ms   (6.966 μs .. 8.284 ms)
variance introduced by outliers: 16% (moderately inflated)

benchmarking bareScotty
time                 156.8 ms   (152.6 ms .. 159.6 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 156.8 ms   (155.4 ms .. 158.3 ms)
std dev              1.908 ms   (1.119 ms .. 2.718 ms)
variance introduced by outliers: 12% (moderately inflated)
```

# How to replicate

1. Clone the repo
2. Run the following commands from within the repo

```
$ stack build
$ stack exec monad-transformed-benchmark-exe
```
