
# mlr3extralearners

[Package website](https://mlr3extralearners.mlr-org.com/)

Extra Learners for **[mlr3](https://github.com/mlr-org/mlr3/)**.

<!-- badges: start -->

[![R CMD
Check](https://github.com/mlr-org/mlr3extralearners/workflows/R%20CMD%20Check/badge.svg)](https://mlr3extralearners.mlr-org.com/articles/learners/learner_status.html)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
<!-- badges: end -->

## What is mlr3extralearners?

`mlr3extralearners` contains all learners from mlr3 that are not in
`mlr3learners` or the core packages. `mlr3extralearners` contains helper
functions to find where all the learners, across the mlr3verse, live and
to install required packages to run these learners. See the interactive
[learner
list](https://mlr3extralearners.mlr-org.com/articles/learners/list_learners.html)
for the full list of learners in the mlr3verse and the [learner status
page](https://mlr3extralearners.mlr-org.com/articles/learners/test_overview.html)
for a live build status.

``` r
list_mlr3learners(select = c("id", "required_packages"))
#>                      id                                       required_packages
#>                  <char>                                                  <list>
#>   1: classif.AdaBoostM1                            mlr3,mlr3extralearners,RWeka
#>   2:       classif.bart                           mlr3,mlr3extralearners,dbarts
#>   3:        classif.C50                              mlr3,mlr3extralearners,C50
#>   4:   classif.catboost                         mlr3,mlr3extralearners,catboost
#>   5:    classif.cforest           mlr3,mlr3extralearners,partykit,sandwich,coin
#>  ---                                                                           
#> 131:        surv.ranger                 mlr3,mlr3proba,mlr3extralearners,ranger
#> 132:         surv.rfsrc mlr3,mlr3proba,mlr3extralearners,randomForestSRC,pracma
#> 133:         surv.rpart                    mlr3,mlr3proba,rpart,distr6,survival
#> 134:           surv.svm            mlr3,mlr3proba,mlr3extralearners,survivalsvm
#> 135:       surv.xgboost                mlr3,mlr3proba,mlr3extralearners,xgboost
```

mlr3extralearners lives on GitHub and will not be on CRAN. You can
download the latest release from
[here](https://github.com/mlr-org/mlr3extralearners/releases) and
install it locally with

``` r
devtools::install_local("path/to/mlr3extralearners")
```

If you want to download the development version, run

``` r
devtools::install_github("mlr-org/mlr3extralearners")
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
```

``` r
install_learners("regr.gbm")
```

``` r
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
