# Regression Gradient Boosting Machine Learner

Gradient Boosting Regression Algorithm. Calls
[`gbm::gbm()`](https://rdrr.io/pkg/gbm/man/gbm.html) from
[gbm](https://CRAN.R-project.org/package=gbm).

Weights are ignored for quantile prediction.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.gbm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “quantiles”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [gbm](https://CRAN.R-project.org/package=gbm)

## Parameters

|                   |           |          |                                   |                       |
|-------------------|-----------|----------|-----------------------------------|-----------------------|
| Id                | Type      | Default  | Levels                            | Range                 |
| distribution      | character | gaussian | gaussian, laplace, poisson, tdist | \-                    |
| n.trees           | integer   | 100      |                                   | \\\[1, \infty)\\      |
| interaction.depth | integer   | 1        |                                   | \\\[1, \infty)\\      |
| n.minobsinnode    | integer   | 10       |                                   | \\\[1, \infty)\\      |
| shrinkage         | numeric   | 0.001    |                                   | \\\[0, \infty)\\      |
| bag.fraction      | numeric   | 0.5      |                                   | \\\[0, 1\]\\          |
| train.fraction    | numeric   | 1        |                                   | \\\[0, 1\]\\          |
| cv.folds          | integer   | 0        |                                   | \\(-\infty, \infty)\\ |
| keep.data         | logical   | FALSE    | TRUE, FALSE                       | \-                    |
| verbose           | logical   | FALSE    | TRUE, FALSE                       | \-                    |
| n.cores           | integer   | 1        |                                   | \\(-\infty, \infty)\\ |
| var.monotone      | untyped   | \-       |                                   | \-                    |

## Parameter changes

- `keep.data`:

  - Actual default: TRUE

  - Adjusted default: FALSE

  - Reason for change: `keep.data = FALSE` saves memory during model
    fitting.

- `n.cores`:

  - Actual default: NULL

  - Adjusted default: 1

  - Reason for change: Suppressing the automatic internal
    parallelization if `cv.folds` \> 0.

## References

Friedman, H J (2002). “Stochastic gradient boosting.” *Computational
statistics & data analysis*, **38**(4), 367–378.

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

be-marc

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGBM`

## Methods

### Public methods

- [`LearnerRegrGBM$new()`](#method-LearnerRegrGBM-new)

- [`LearnerRegrGBM$importance()`](#method-LearnerRegrGBM-importance)

- [`LearnerRegrGBM$clone()`](#method-LearnerRegrGBM-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrGBM$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted by
[`gbm::relative.influence()`](https://rdrr.io/pkg/gbm/man/relative.influence.html)
from the model.

#### Usage

    LearnerRegrGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
lrn("regr.gbm")
#> 
#> ── <LearnerRegrGBM> (regr.gbm): Gradient Boosting ──────────────────────────────
#> • Model: -
#> • Parameters: keep.data=FALSE, n.cores=1
#> • Packages: mlr3, mlr3extralearners, and gbm
#> • Predict Types: [response] and quantiles
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, and weights
#> • Other settings: use_weights = 'use'
```
