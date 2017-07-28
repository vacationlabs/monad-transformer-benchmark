# Overview

This branch was a quick attempt to see how HTML DSLs like Blaze (or Lucid) fare against regular text-interploated templates. I was expecting DSLs to be slower than string interploation, but the benchmarks are surprisingly painting a different picture.

I've benchmarked three scenarios:

* Blaze template which inserts "dynamic" values into the template, passed-in a arguments to the template.
* Blaze template which has nothing dynamic about it. Every time you execute it, it results in the exact same markup, i.e. constant markup.
* String interpolated template with constant markup. I'm using the [Perl6 quasi-quoting library](http://hackage.haskell.org/package/interpolatedstring-perl6-0.9.0/docs/Text-InterpolatedString-Perl6.html) to deal with multi-line strings in Haskell.

I was exepcting the following results in order of execution speed:

```
static text (fastest) > static blaze > dynamic blaze (slowest)
```

**Suprisingly,** the benchmarks are the **exact opposite**, i.e.:

```
dynamic blaze ~ constant blaze (no significant difference) >> static text (very slow)
```

If you're interested, the generated splice for the string quasi-quoting is available at [ConstantStringMarkup.dump-splices](https://raw.githubusercontent.com/vacationlabs/monad-transformer-benchmark/d32511c9348afd648028c3302c5debd0d2d255ed/ConstantStringMarkup.dump-splices) (warning - it's very large!)

### Warning

The files with the markup are very large. Make sure your editor can handle large files (I'm looking at you emacs!). 

# Benchmark results

```
benchmarking dynamic markup via blaze
time                 153.1 ms   (114.1 ms .. 209.5 ms)
                     0.893 R²   (0.796 R² .. 0.997 R²)
mean                 110.7 ms   (92.84 ms .. 142.2 ms)
std dev              30.93 ms   (14.24 ms .. 49.21 ms)
variance introduced by outliers: 74% (severely inflated)

benchmarking constant markup via blaze
time                 136.7 ms   (128.6 ms .. 145.8 ms)
                     0.994 R²   (0.982 R² .. 0.999 R²)
mean                 113.7 ms   (93.85 ms .. 121.5 ms)
std dev              17.56 ms   (4.724 ms .. 25.88 ms)
variance introduced by outliers: 48% (moderately inflated)

benchmarking constant markup via text interpolation
time                 254.6 ms   (174.9 ms .. 313.1 ms)
                     0.960 R²   (0.883 R² .. 1.000 R²)
mean                 314.3 ms   (303.8 ms .. 320.9 ms)
std dev              9.910 ms   (332.9 μs .. 12.31 ms)
variance introduced by outliers: 16% (moderately inflated)
```