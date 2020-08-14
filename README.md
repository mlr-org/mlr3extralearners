mlr3extralearners
================

# What is mlr3extralearners?

`mlr3extralearners` contains all learners from mlr3 that are not in
`mlr3learners` or the core packages. `mlr3extralearners` contains helper
functions to find where all these learners live and to install required
packages to run these learners.

``` r
list_mlr3learners(select = c("id", "mlr3_package", "required_package"))
```

    ##                       id      mlr3_package      required_package
    ##  1:        classif.debug              mlr3                      
    ##  2:  classif.featureless              mlr3                      
    ##  3:          classif.gbm mlr3extralearners                   gbm
    ##  4: classif.randomForest mlr3extralearners          randomForest
    ##  5:        classif.rpart              mlr3                 rpart
    ##  6:            dens.hist         mlr3proba                distr6
    ##  7:             dens.kde         mlr3proba                distr6
    ##  8:     regr.featureless              mlr3                 stats
    ##  9:             regr.gbm mlr3extralearners                   gbm
    ## 10:    regr.randomForest mlr3extralearners          randomForest
    ## 11:           regr.rpart              mlr3                 rpart
    ## 12:           surv.coxph         mlr3proba       survival,distr6
    ## 13:             surv.gbm mlr3extralearners                   gbm
    ## 14:          surv.kaplan         mlr3proba       survival,distr6
    ## 15:      surv.obliqueRSF mlr3extralearners     obliqueRSF,pracma
    ## 16:           surv.rpart         mlr3proba rpart,distr6,survival

# Installing and Loading Learners

The package includes functionality for detecting if you have the
required packages installed to use a learner, and ships with the
function `install_learner` which can install all required learner
dependencies.

``` r
lrn("regr.gbm")
```

    ## Error: Required packages not installed, please run `install_learners("regr.gbm")`.

``` r
install_learners("regr.gbm")
```

``` r
lrn("regr.gbm")
```

    ## <LearnerRegrGBM:regr.gbm>
    ## * Model: -
    ## * Parameters: keep.data=FALSE, n.cores=1
    ## * Packages: gbm
    ## * Predict Type: response
    ## * Feature types: integer, numeric, factor, ordered
    ## * Properties: importance, missings, weights

# Extending mlr3extralearners

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
               references = FALSE)
```
