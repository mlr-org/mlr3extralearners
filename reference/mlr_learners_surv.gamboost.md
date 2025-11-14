# Boosted Generalized Additive Survival Learner

Fits a generalized additive survival model using a boosting algorithm.
Calls
[`mboost::gamboost()`](https://rdrr.io/pkg/mboost/man/gamboost.html)
from [mboost](https://CRAN.R-project.org/package=mboost).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.gamboost")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mboost](https://CRAN.R-project.org/package=mboost)

## Parameters

|               |           |                |                                                          |                  |
|---------------|-----------|----------------|----------------------------------------------------------|------------------|
| Id            | Type      | Default        | Levels                                                   | Range            |
| family        | character | coxph          | coxph, weibull, loglog, lognormal, gehan, cindex, custom | \-               |
| custom.family | untyped   | \-             |                                                          | \-               |
| nuirange      | untyped   | c(0, 100)      |                                                          | \-               |
| center        | logical   | TRUE           | TRUE, FALSE                                              | \-               |
| mstop         | integer   | 100            |                                                          | \\\[0, \infty)\\ |
| nu            | numeric   | 0.1            |                                                          | \\\[0, 1\]\\     |
| risk          | character | inbag          | inbag, oobag, none                                       | \-               |
| stopintern    | untyped   | FALSE          |                                                          | \-               |
| trace         | logical   | FALSE          | TRUE, FALSE                                              | \-               |
| oobweights    | untyped   | NULL           |                                                          | \-               |
| baselearner   | character | bbs            | bbs, bols, btree                                         | \-               |
| dfbase        | integer   | 4              |                                                          | \\\[0, \infty)\\ |
| sigma         | numeric   | 0.1            |                                                          | \\\[0, 1\]\\     |
| ipcw          | untyped   | 1              |                                                          | \-               |
| na.action     | untyped   | stats::na.omit |                                                          | \-               |

## Prediction types

This learner returns two to three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`mboost::predict.gamboost()`](https://rdrr.io/pkg/mboost/man/methods.html).
    If the `family` parameter is not `"coxph"`, `-lp` is returned, since
    non-coxph families represent AFT-style distributions where lower
    `lp` values indicate higher risk.

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`mboost::survFit()`](https://rdrr.io/pkg/mboost/man/survFit.html).
    This prediction type is present only when the `family` distribution
    parameter is equal to `"coxph"` (default). By default the Breslow
    estimator is used for computing the baseline hazard.

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated via the `offset` argument in `mboost`'s
training function. No offset is applied during prediction for this
learner.

## References

Bühlmann, Peter, Yu, Bin (2003). “Boosting with the L 2 loss: regression
and classification.” *Journal of the American Statistical Association*,
**98**(462), 324–339.

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
-\> `LearnerSurvGAMBoost`

## Methods

### Public methods

- [`LearnerSurvGAMBoost$new()`](#method-LearnerSurvGAMBoost-new)

- [`LearnerSurvGAMBoost$importance()`](#method-LearnerSurvGAMBoost-importance)

- [`LearnerSurvGAMBoost$selected_features()`](#method-LearnerSurvGAMBoost-selected_features)

- [`LearnerSurvGAMBoost$clone()`](#method-LearnerSurvGAMBoost-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvGAMBoost$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted with the function
[`mboost::varimp()`](https://rdrr.io/pkg/mboost/man/varimp.html) with
the default arguments.

#### Usage

    LearnerSurvGAMBoost$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `selected_features()`

Selected features are extracted with the function
[`mboost::variable.names.mboost()`](https://rdrr.io/pkg/mboost/man/methods.html),
with `used.only = TRUE`.

#### Usage

    LearnerSurvGAMBoost$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvGAMBoost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
lrn("surv.gamboost")
#> 
#> ── <LearnerSurvGAMBoost> (surv.gamboost): Boosted Generalized Additive Model ───
#> • Model: -
#> • Parameters: family=coxph
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and mboost
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: logical, integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, offset, selected_features, and weights
#> • Other settings: use_weights = 'use'
```
