
# mlr3extralearners

Package website: [release](https://mlr3extralearners.mlr-org.com/) |
[dev](https://mlr3extralearners.mlr-org.com/dev/)

Extra Learners for **[mlr3](https://github.com/mlr-org/mlr3/)**.

<!-- badges: start -->

[![RCMD
Check](https://github.com/mlr-org/mlr3extralearners/actions/workflows/rcmdcheck.yml/badge.svg)](https://github.com/mlr-org/mlr3extralearners/actions/workflows/rcmdcheck.yml)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Mattermost](https://img.shields.io/badge/chat-mattermost-orange.svg)](https://lmmisld-lmu-stats-slds.srv.mwn.de/mlr_invite/)
<!-- badges: end -->

## What is mlr3extralearners?

`mlr3extralearners` contains all learners from mlr3 that are not in
`mlr3learners` or the core packages. An overview of all learners within
the `mlr3verse` can be found [here](https://mlr-org.com/learners.html).

`mlr3extralearners` lives on GitHub and will not be on CRAN.

You can install the latest release using the code below

``` r
remotes::install_github("mlr-org/mlr3extralearners@*release")
```

Alternatively, you can add the following to your .Rprofile, which allows
you to install `mlr3extralearners` via `install.packages()`.

``` r
# .Rprofile
options(repos = c(
  mlrorg = "https://mlr-org.r-universe.dev",
  CRAN = "https://cloud.r-project.org/"
))
```

## Installing and Loading Learners

The package includes functionality for detecting if you have the
required packages installed to use a learner, and ships with the
function `install_learner` which can install all required learner
dependencies.

``` r
lrn("regr.gbm")
#> Warning: Package 'gbm' required but not installed for Learner 'regr.gbm'
#> <LearnerRegrGBM:regr.gbm>: Gradient Boosting
#> * Model: -
#> * Parameters: keep.data=FALSE, n.cores=1
#> * Packages: mlr3, mlr3extralearners, gbm
#> * Predict Types:  [response]
#> * Feature Types: integer, numeric, factor, ordered
#> * Properties: importance, missings, weights

install_learners("regr.gbm")

lrn("regr.gbm")
#> <LearnerRegrGBM:regr.gbm>: Gradient Boosting
#> * Model: -
#> * Parameters: keep.data=FALSE, n.cores=1
#> * Packages: mlr3, mlr3extralearners, gbm
#> * Predict Types:  [response]
#> * Feature Types: integer, numeric, factor, ordered
#> * Properties: importance, missings, weights
```

## Extending mlr3extralearners

New learners - either for personal use or to extend mlr3extralearners -
can be created with the `create_learner` function. An in-depth tutorial
on how to do this can be found in the [mlr3
book](https://mlr3book.mlr-org.com/extending.html#sec-extending-learners).
