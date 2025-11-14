# Survival Akritas Estimator Learner

Survival akritas estimator. Calls
[`survivalmodels::akritas()`](https://rdrr.io/pkg/survivalmodels/man/akritas.html)
from package 'survivalmodels'.

## Prediction types

This learner returns two prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using the
    internal
    [`survivalmodels::predict.akritas()`](https://rdrr.io/pkg/survivalmodels/man/predict.akritas.html)
    function. The survival matrix uses the unique time points from the
    training set. We advise to set the parameter `ntime` which allows to
    adjust the granularity of these time points to a reasonable number
    (e.g. `150`). This avoids large execution times during prediction.

2.  `crank`: the expected mortality using
    [`survivalmodels::surv_to_risk()`](https://rdrr.io/pkg/survivalmodels/man/surv_to_risk.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.akritas")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [survivalmodels](https://CRAN.R-project.org/package=survivalmodels)

## Parameters

|            |         |         |             |                  |
|------------|---------|---------|-------------|------------------|
| Id         | Type    | Default | Levels      | Range            |
| lambda     | numeric | 0.5     |             | \\\[0, 1\]\\     |
| reverse    | logical | FALSE   | TRUE, FALSE | \-               |
| ntime      | integer | NULL    |             | \\\[1, \infty)\\ |
| round_time | integer | 2       |             | \\\[0, \infty)\\ |

## Installation

Package 'survivalmodels' is not on CRAN and has to be install from
GitHub via `remotes::install_github("RaphaelS1/survivalmodels")`.

## References

Akritas, G M (1994). “Nearest neighbor estimation of a bivariate
distribution under random censoring.” *The Annals of Statistics*,
1299–1327.

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/basics.html#learners>

- [mlr3learners](https://CRAN.R-project.org/package=mlr3learners) for a
  selection of recommended learners.

- [mlr3cluster](https://CRAN.R-project.org/package=mlr3cluster) for
  unsupervised clustering learners.

- [mlr3pipelines](https://CRAN.R-project.org/package=mlr3pipelines) to
  combine learners with pre- and postprocessing steps.

- [mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning) for tuning
  of hyperparameters,
  [mlr3tuningspaces](https://CRAN.R-project.org/package=mlr3tuningspaces)
  for established default tuning spaces.

## Author

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvAkritas`

## Methods

### Public methods

- [`LearnerSurvAkritas$new()`](#method-LearnerSurvAkritas-new)

- [`LearnerSurvAkritas$clone()`](#method-LearnerSurvAkritas-clone)

Inherited methods

- [`mlr3::Learner$base_learner()`](https://mlr3.mlr-org.com/reference/Learner.html#method-base_learner)
- [`mlr3::Learner$configure()`](https://mlr3.mlr-org.com/reference/Learner.html#method-configure)
- [`mlr3::Learner$encapsulate()`](https://mlr3.mlr-org.com/reference/Learner.html#method-encapsulate)
- [`mlr3::Learner$format()`](https://mlr3.mlr-org.com/reference/Learner.html#method-format)
- [`mlr3::Learner$help()`](https://mlr3.mlr-org.com/reference/Learner.html#method-help)
- [`mlr3::Learner$predict()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict)
- [`mlr3::Learner$predict_newdata()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict_newdata)
- [`mlr3::Learner$print()`](https://mlr3.mlr-org.com/reference/Learner.html#method-print)
- [`mlr3::Learner$reset()`](https://mlr3.mlr-org.com/reference/Learner.html#method-reset)
- [`mlr3::Learner$selected_features()`](https://mlr3.mlr-org.com/reference/Learner.html#method-selected_features)
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvAkritas$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvAkritas$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
