# Install Learner Dependencies

Install required dependencies for specified learners. Works for packages
on CRAN, Bioconductor and GitHub, otherwise must be manually installed.

## Usage

``` r
install_learners(.keys, repos = "https://cloud.r-project.org", ...)
```

## Arguments

- .keys:

  ([`character()`](https://rdrr.io/r/base/character.html))  
  Keys passed to
  [mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html)
  specifying learners to install.

- repos:

  (`character(1)`)  
  Passed to
  [utils::install.packages](https://rdrr.io/r/utils/install.packages.html).

- ...:

  (`ANY`)  
  Additional options to pass to
  [`utils::install.packages()`](https://rdrr.io/r/utils/install.packages.html),
  [`BiocManager::install()`](https://bioconductor.github.io/BiocManager/reference/install.html)
  or
  [`remotes::install_github()`](https://remotes.r-lib.org/reference/install_github.html).
