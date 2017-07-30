# Overview

This branch was a quick attempt to see how HTML DSLs like Blaze (or Lucid) fare against regular text-interploated templates. I was expecting DSLs to be slower than string interploation, but the benchmarks are surprisingly painting a different picture.

I've benchmarked four scenarios:

* Blaze template which inserts "dynamic" values into the template, passed-in a arguments to the template.
* Blaze template which has nothing dynamic about it. Every time you execute it, it results in the exact same markup, i.e. constant markup.
* String interpolated template with constant markup. I'm using the [Perl6 quasi-quoting library](http://hackage.haskell.org/package/interpolatedstring-perl6-0.9.0/docs/Text-InterpolatedString-Perl6.html) to deal with multi-line strings in Haskell.
* String interpolated template with dynamic markup. 

I was exepcting the following results in order of execution speed:

```
static markup with string templates (fastest)
  > dynamic markup with string templates
  > static markup generated via blaze
  > dynamic markup generated via blaze (slowest)
```

# Results

After fixing a bunch of mis-steps in the benchmarking code itself, I can confirm that blaze is about **2x slower** than string templates. My benchmarks haven't been able to prove any difference between static markup and dynamic markup mostly because the dynamic markup is replacing just a *single value* in the template. It's not doing too much dynamic work, to begin with. 

If you're interested, the generated splice for the string quasi-quoting is available at [ConstantStringMarkup.dump-splices](https://raw.githubusercontent.com/vacationlabs/monad-transformer-benchmark/d32511c9348afd648028c3302c5debd0d2d255ed/ConstantStringMarkup.dump-splices) (warning - it's very large!) & [DynamicStringMarkup.dump-splices]()

# Warning

The files with the markup are very large. Make sure your editor can handle large files (I'm looking at you emacs!). 

# Benchmark results

```
benchmarking dynamic markup via blaze
time                 47.64 ms   (45.81 ms .. 49.47 ms)
                     0.995 R²   (0.990 R² .. 0.999 R²)
mean                 47.39 ms   (46.16 ms .. 49.63 ms)
std dev              3.332 ms   (1.571 ms .. 5.639 ms)
variance introduced by outliers: 20% (moderately inflated)

benchmarking constant markup via blaze
time                 46.35 ms   (44.44 ms .. 49.26 ms)
                     0.994 R²   (0.987 R² .. 0.999 R²)
mean                 47.63 ms   (46.78 ms .. 48.50 ms)
std dev              1.679 ms   (1.301 ms .. 2.173 ms)

benchmarking constant markup via text interpolation
time                 22.53 ms   (22.18 ms .. 22.84 ms)
                     0.999 R²   (0.998 R² .. 0.999 R²)
mean                 23.10 ms   (22.84 ms .. 23.52 ms)
std dev              745.3 μs   (456.3 μs .. 1.215 ms)

benchmarking dynamic markup via text interpolation
time                 23.15 ms   (22.73 ms .. 23.67 ms)
                     0.998 R²   (0.996 R² .. 1.000 R²)
mean                 23.18 ms   (22.99 ms .. 23.42 ms)
std dev              500.7 μs   (370.9 μs .. 703.4 μs)
```