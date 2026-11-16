# Assert Python Packages

Assert that the given Python packages are available.

## Usage

``` r
assert_python_packages(packages, python_version = NULL, modules = NULL)
```

## Arguments

- packages:

  ([`character()`](https://rdrr.io/r/base/character.html))  
  Python packages to check.

- python_version:

  (`character(1)`)  
  Python version to use. If `NULL`, the default Python version is used.

- modules:

  ([`character()`](https://rdrr.io/r/base/character.html))  
  Names of the Python modules to check, one per element of `packages`.
  Only needed if a module name differs from the name of its package,
  e.g. `"sklearn"` for `"scikit-learn"`, or if the package is given as a
  direct reference, e.g. `"pkg @ git+https://..."`. If `NULL`, the
  module names are derived from `packages`.

## Value

([`character()`](https://rdrr.io/r/base/character.html))  
