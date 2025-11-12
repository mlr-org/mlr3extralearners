
# mlr3extralearners

Package website: [release](https://mlr3extralearners.mlr-org.com/) \|
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

You can install the package as follows:

``` r
# latest GitHub release
pak::pak("mlr-org/mlr3extralearners@*release")

# development version
pak::pak("mlr-org/mlr3extralearners")
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

## Quick Start

The package includes functionality for detecting if you have the
required packages installed to use a learner, and ships with the
function `install_learner` which can install all required learner
dependencies.

``` r
library(mlr3extralearners)
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

learner <-lrn("regr.gbm")
learner
#> <LearnerRegrGBM:regr.gbm>: Gradient Boosting
#> * Model: -
#> * Parameters: keep.data=FALSE, n.cores=1
#> * Packages: mlr3, mlr3extralearners, gbm
#> * Predict Types:  [response]
#> * Feature Types: integer, numeric, factor, ordered
#> * Properties: importance, missings, weights
```

You can now use the learner to fit a model and make predictions.

``` r
task <- tsk("california_housing")
task
#> 
#> ── <TaskRegr> (20640x10): California House Value ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> • Target: median_house_value
#> • Properties: -
#> • Features (9):
#>   • dbl (8): households, housing_median_age, latitude, longitude, median_income, population, total_bedrooms, total_rooms
#>   • fct (1): ocean_proximity
split <- partition(task)
learner$train(task, split$train)
#> Distribution not specified, assuming gaussian ...
learner$predict(task, split$test)
#> 
#> ── <PredictionRegr> for 6811 observations: ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#>  row_ids  truth  response
#>        1 452600 428999.97
#>        7 299200 265771.26
#>       17 152500 221807.64
#>      ---    ---       ---
#>    20634  98300  98009.59
#>    20635 116800 144098.72
#>    20640  89400  93868.47
```

You can learn more about using learners by [reading our
book](https://mlr3book.mlr-org.com/chapters/chapter1/introduction_and_overview.html#mlr3-by-example).

## Extending mlr3extralearners

An in-depth tutorial on how to add learners can be found in the [package
website](https://mlr3extralearners.mlr-org.com/articles/extending.html).

## Acknowledgements

This R package is developed as part of the [Mathematical Research Data
Initiative](https://www.mardi4nfdi.de/about/mission).
