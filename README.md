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

**Suprisingly,** the benchmarks indicate otherwise

```
dynamic blaze ~ constant blaze (no significant difference, but dynamic blaze is always slightly faster) > static text (slower)
```

If you're interested, the generated splice for the string quasi-quoting is available at [ConstantStringMarkup.dump-splices](https://raw.githubusercontent.com/vacationlabs/monad-transformer-benchmark/d32511c9348afd648028c3302c5debd0d2d255ed/ConstantStringMarkup.dump-splices) (warning - it's very large!)

### Warning

The files with the markup are very large. Make sure your editor can handle large files (I'm looking at you emacs!). 

# Benchmark results

```
benchmarking dynamic markup via blaze
time                 125.4 ms   (92.05 ms .. 148.3 ms)
                     0.925 R²   (0.804 R² .. 0.993 R²)
mean                 105.0 ms   (91.28 ms .. 115.3 ms)
std dev              19.26 ms   (13.25 ms .. 26.51 ms)
variance introduced by outliers: 54% (severely inflated)

benchmarking constant markup via text interpolation
time                 140.3 ms   (94.46 ms .. 195.7 ms)
                     0.872 R²   (0.524 R² .. 0.989 R²)
mean                 124.6 ms   (106.7 ms .. 145.8 ms)
std dev              28.83 ms   (19.63 ms .. 40.59 ms)
variance introduced by outliers: 73% (severely inflated)

benchmarking constant markup via blaze
time                 131.3 ms   (100.3 ms .. 165.7 ms)
                     0.885 R²   (0.673 R² .. 0.984 R²)
mean                 143.7 ms   (123.7 ms .. 158.7 ms)
std dev              24.85 ms   (14.94 ms .. 35.03 ms)
variance introduced by outliers: 48% (moderately inflated)
```