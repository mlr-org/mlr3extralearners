
# mlr3extralearners

Package website: [release](https://mlr3extralearners.mlr-org.com/) \|
[dev](https://mlr3extralearners.mlr-org.com/dev/)

Extra Learners for **[mlr3](https://github.com/mlr-org/mlr3/)**.

<!-- badges: start -->

[![RCMD
Check](https://github.com/mlr-org/mlr3extralearners/actions/workflows/rcmdcheck.yml/badge.svg)](https://github.com/mlr-org/mlr3extralearners/actions/workflows/rcmdcheck.yml)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![Mattermost](https://img.shields.io/badge/chat-mattermost-orange.svg)](https://lmmisld-lmu-stats-slds.srv.mwn.de/mlr_invite/)
[![DOI](https://joss.theoj.org/papers/10.21105/joss.08331/status.svg)](https://doi.org/10.21105/joss.08331)
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

learner = lrn("regr.gbm")
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
task = tsk("california_housing")
task
#> 
#> ── <TaskRegr> (20640x10): California House Value ───────────────────────────────
#> • Target: median_house_value
#> • Properties: -
#> • Features (9):
#>   • dbl (8): households, housing_median_age, latitude, longitude,
#>   median_income, population, total_bedrooms, total_rooms
#>   • fct (1): ocean_proximity
split = partition(task)
learner$train(task, split$train)
#> Distribution not specified, assuming gaussian ...
learner$predict(task, split$test)
#> 
#> ── <PredictionRegr> for 6811 observations: ─────────────────────────────────────
#>  row_ids  truth  response
#>        1 452600 434737.08
#>        2 358500 441760.73
#>        3 352100 409282.31
#>      ---    ---       ---
#>    20631 112000 139033.41
#>    20632 107200 135412.43
#>    20637  77100  97422.34
```

You can learn more about using learners by [reading our
book](https://mlr3book.mlr-org.com/chapters/chapter1/introduction_and_overview.html#mlr3-by-example).

## Extending mlr3extralearners

An in-depth tutorial on how to add learners can be found in the [package
website](https://mlr3extralearners.mlr-org.com/articles/extending.html).

## Acknowledgements

This R package is developed as part of the [Mathematical Research Data
Initiative](https://www.mardi4nfdi.de/about/mission).

## Citing mlr3extralearners

If you use `mlr3extralearners`, please cite our [JOSS
paper](https://doi.org/10.21105/joss.08331):

``` bibtex
@article{Fischer2025,
  title = {mlr3extralearners: Expanding the mlr3 Ecosystem with Community-Driven Learner Integration},
  journal = {Journal of Open Source Software},
  author = {Fischer, Sebastian and Zobolas, John and Sonabend, Raphael and Becker, Marc and Lang, Michel and Binder, Martin and Schneider, Lennart and Burk, Lukas and Schratz, Patrick and Jaeger, Byron C. and Lauer, Stephen A. and Kapsner, Lorenz A. and Mücke, Maximilian and Wang, Zezhi and Pulatov, Damir and Ganz, Keenan and Funk, Henri and Harutyunyan, Liana and Camilleri, Pierre and Kopper, Philipp and Bender, Andreas and Bischl, Bernd and Zhou, Baisu and German, Niko and Koers, Lona and Nazarova, Anna},
  doi = {10.21105/joss.08331},
  url = {https://doi.org/10.21105/joss.08331},
  year = {2025},
  publisher = {The Open Journal},
  volume = {10},
  number = {115},
  pages = {8331}
}
```
