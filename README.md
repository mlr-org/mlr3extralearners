
# mlr3extralearners

Package website: [release](https://mlr3extralearners.mlr-org.com/) |
[dev](https://mlr3extralearners.mlr-org.com/dev/)

Extra Learners for **[mlr3](https://github.com/mlr-org/mlr3/)**.

<!-- badges: start -->

[![R CMD
Check](https://github.com/mlr-org/mlr3extralearners/workflows/R%20CMD%20Check/badge.svg)](https://mlr3extralearners.mlr-org.com/articles/learners/learner_status.html)
[![codecov](https://codecov.io/gh/mlr-org/mlr3extralearners/branch/main/graph/badge.svg)](https://codecov.io/gh/mlr-org/mlr3extralearners)
[![StackOverflow](https://img.shields.io/badge/stackoverflow-mlr3-orange.svg)](https://stackoverflow.com/questions/tagged/mlr3)
[![CodeFactor](https://www.codefactor.io/repository/github/mlr-org/mlr3extralearners/badge)](https://www.codefactor.io/repository/github/mlr-org/mlr3extralearners)
<!-- badges: end -->

## What is mlr3extralearners?

`mlr3extralearners` contains all learners from mlr3 that are not in
`mlr3learners` or the core packages. `mlr3extralearners` contains helper
functions to find where all the learners, across the mlr3verse, live and
to install required packages to run these learners. See the interactive
[learner
list](https://mlr3extralearners.mlr-org.com/articles/learners/list_learners.html)
for the full list of learners in the mlr3verse and the [learner status
page](https://mlr3extralearners.mlr-org.com/articles/learners/learner_status.html)
for a live build status.

``` r
list_mlr3learners(select = c("id", "mlr3_package", "required_packages"))
#>                      id      mlr3_package
#>                  <char>            <char>
#>   1: classif.AdaBoostM1 mlr3extralearners
#>   2:       classif.bart mlr3extralearners
#>   3:        classif.C50 mlr3extralearners
#>   4:   classif.catboost mlr3extralearners
#>   5:    classif.cforest mlr3extralearners
#>  ---                                     
#> 130:        surv.ranger mlr3extralearners
#> 131:         surv.rfsrc mlr3extralearners
#> 132:         surv.rpart         mlr3proba
#> 133:           surv.svm mlr3extralearners
#> 134:       surv.xgboost mlr3extralearners
#>                                            required_packages
#>                                                       <list>
#>   1:                            mlr3,mlr3extralearners,RWeka
#>   2:                           mlr3,mlr3extralearners,dbarts
#>   3:                              mlr3,mlr3extralearners,C50
#>   4:                         mlr3,mlr3extralearners,catboost
#>   5:           mlr3,mlr3extralearners,partykit,sandwich,coin
#>  ---                                                        
#> 130:                 mlr3,mlr3proba,mlr3extralearners,ranger
#> 131: mlr3,mlr3proba,mlr3extralearners,randomForestSRC,pracma
#> 132:                    mlr3,mlr3proba,rpart,distr6,survival
#> 133:            mlr3,mlr3proba,mlr3extralearners,survivalsvm
#> 134:                mlr3,mlr3proba,mlr3extralearners,xgboost
```

mlr3extralearners lives on GitHub and will not be on CRAN. Install with:

``` r
remotes::install_github("mlr-org/mlr3extralearners")
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

New learners can be created with the `create_learner` function. This
assumes you have a local copy of `mlr3extralearners`. This function will
automatically create the learner, learner tests, parameter tests, YAML
files for CI if required, and update the DESCRIPTION if required. Once
all tests are passing locally, open a [pull
request](https://github.com/mlr-org/mlr3extralearners/pulls) with the
“New Learner” template.

``` r
create_learner(classname = "Locfit",
               algorithm = "localised fit",
               type = "dens",
               key = "locfit",
               package = "locfit",
               caller = "density.lf",
               feature_types = c("integer", "numeric"),
               predict_types = c("pdf", "cdf"),
               properties = NULL,
               importance = FALSE,
               oob_error = FALSE,
               references = FALSE,
               gh_name = "RaphaelS1")
```
