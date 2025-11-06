# Survival Gradient Boosting Machine Learner

Gradient Boosting for Survival Analysis. Calls
[`gbm::gbm()`](https://rdrr.io/pkg/gbm/man/gbm.html) from
[gbm](https://CRAN.R-project.org/package=gbm).

## Prediction types

This learner returns two prediction types, using the internal
`predict.gbm()` function:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation.

2.  `crank`: same as `lp`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.gbm")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “lp”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [gbm](https://CRAN.R-project.org/package=gbm)

## Parameters

|                   |           |         |             |                       |
|-------------------|-----------|---------|-------------|-----------------------|
| Id                | Type      | Default | Levels      | Range                 |
| distribution      | character | coxph   | coxph       | \-                    |
| n.trees           | integer   | 100     |             | \\\[1, \infty)\\      |
| cv.folds          | integer   | 0       |             | \\\[0, \infty)\\      |
| interaction.depth | integer   | 1       |             | \\\[1, \infty)\\      |
| n.minobsinnode    | integer   | 10      |             | \\\[1, \infty)\\      |
| shrinkage         | numeric   | 0.001   |             | \\\[0, \infty)\\      |
| bag.fraction      | numeric   | 0.5     |             | \\\[0, 1\]\\          |
| train.fraction    | numeric   | 1       |             | \\\[0, 1\]\\          |
| keep.data         | logical   | FALSE   | TRUE, FALSE | \-                    |
| verbose           | logical   | FALSE   | TRUE, FALSE | \-                    |
| var.monotone      | untyped   | \-      |             | \-                    |
| n.cores           | integer   | 1       |             | \\(-\infty, \infty)\\ |
| single.tree       | logical   | FALSE   | TRUE, FALSE | \-                    |

## Initial parameter values

- `distribution`:

- Actual default: `"bernoulli"`

- Adjusted default: `"coxph"`

- Reason for change: This is the only distribution available for
  survival.

- `keep.data`:

  - Actual default: TRUE

  - Adjusted default: FALSE

  - Reason for change: `keep.data = FALSE` saves memory during model
    fitting.

- `n.cores`:

  - Actual default: NULL

  - Adjusted default: `1`

  - Reason for change: Suppressing the automatic internal
    parallelization if `cv.folds` \> 0 and avoid threading conflicts
    with [future](https://CRAN.R-project.org/package=future).

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

RaphaelS1

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvGBM`

## Methods

### Public methods

- [`LearnerSurvGBM$new()`](#method-LearnerSurvGBM-new)

- [`LearnerSurvGBM$importance()`](#method-LearnerSurvGBM-importance)

- [`LearnerSurvGBM$clone()`](#method-LearnerSurvGBM-clone)

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

    LearnerSurvGBM$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot
`variable.importance`.

#### Usage

    LearnerSurvGBM$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvGBM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.gbm")
print(learner)
#> 
#> ── <LearnerSurvGBM> (surv.gbm): Gradient Boosting ──────────────────────────────
#> • Model: -
#> • Parameters: distribution=coxph, keep.data=FALSE, n.cores=1
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and gbm
#> • Predict Types: [crank] and lp
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, missings, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> gbm::gbm(formula = f, distribution = "coxph", data = task$data(), 
#>     weights = NULL, keep.data = FALSE, n.cores = 1L)
#> A gradient boosted model with coxph loss function.
#> 100 iterations were performed.
#> There were 6 predictors of which 6 had non-zero influence.
print(learner$importance())
#> revascdays     revasc        age        los      sysbp   stchange 
#>  39.734428  20.928648  17.833708  12.149852   6.778278   2.575086 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> Using 100 trees...

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8447403 
```
