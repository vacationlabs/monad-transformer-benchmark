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
time                 143.1 ms   (127.3 ms .. 171.3 ms)
                     0.956 R²   (0.876 R² .. 0.996 R²)
mean                 125.7 ms   (96.66 ms .. 136.9 ms)
std dev              26.59 ms   (7.777 ms .. 40.51 ms)
variance introduced by outliers: 61% (severely inflated)

benchmarking constant markup via blaze
time                 126.1 ms   (95.79 ms .. 170.1 ms)
                     0.945 R²   (0.868 R² .. 0.996 R²)
mean                 138.7 ms   (124.0 ms .. 163.9 ms)
std dev              23.44 ms   (10.55 ms .. 34.39 ms)
variance introduced by outliers: 55% (severely inflated)

benchmarking constant markup via text interpolation
time                 320.8 ms   (189.9 ms .. 503.6 ms)
                     0.923 R²   (0.763 R² .. 1.000 R²)
mean                 286.7 ms   (231.7 ms .. 315.4 ms)
std dev              52.57 ms   (1.885 ms .. 64.43 ms)
variance introduced by outliers: 39% (moderately inflated)
```