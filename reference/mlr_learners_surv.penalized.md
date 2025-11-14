# Survival L1 and L2 Penalized Cox Learner

Penalized (L1 and L2) Cox Proportional Hazards model. Calls
[`penalized::penalized()`](https://rdrr.io/pkg/penalized/man/penalized.html)
from [penalized](https://CRAN.R-project.org/package=penalized).

## Details

The `penalized` and `unpenalized` arguments in the learner are
implemented slightly differently than in
[`penalized::penalized()`](https://rdrr.io/pkg/penalized/man/penalized.html).
Here, there is no parameter for `penalized` but instead it is assumed
that every variable is penalized unless stated in the `unpenalized`
parameter.

## Prediction types

This learner returns two prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using the
    internal
    [`penalized::predict()`](https://rdrr.io/r/stats/predict.html)
    function. By default the Breslow estimator
    [`penalized::breslow()`](https://rdrr.io/pkg/penalized/man/breslow.html)
    is used for computing the baseline hazard.

2.  `crank`: the expected mortality using
    [`mlr3proba::surv_return()`](https://mlr3proba.mlr-org.com/reference/surv_return.html).

## Initial parameter values

- `trace` is set to `"FALSE"` to disable printing output during model
  training.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.penalized")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”

- Feature Types: “logical”, “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [penalized](https://CRAN.R-project.org/package=penalized)

## Parameters

|             |         |         |             |                       |
|-------------|---------|---------|-------------|-----------------------|
| Id          | Type    | Default | Levels      | Range                 |
| unpenalized | untyped | \-      |             | \-                    |
| lambda1     | untyped | 0       |             | \-                    |
| lambda2     | untyped | 0       |             | \-                    |
| positive    | logical | FALSE   | TRUE, FALSE | \-                    |
| fusedl      | logical | FALSE   | TRUE, FALSE | \-                    |
| startbeta   | numeric | \-      |             | \\(-\infty, \infty)\\ |
| startgamma  | numeric | \-      |             | \\(-\infty, \infty)\\ |
| steps       | integer | 1       |             | \\\[1, \infty)\\      |
| epsilon     | numeric | 1e-10   |             | \\\[0, 1\]\\          |
| maxiter     | integer | \-      |             | \\\[1, \infty)\\      |
| standardize | logical | FALSE   | TRUE, FALSE | \-                    |
| trace       | logical | TRUE    | TRUE, FALSE | \-                    |

## References

Goeman, J J (2010). “L1 penalized estimation in the Cox proportional
hazards model.” *Biometrical journal*, **52**(1), 70–84.

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
-\> `LearnerSurvPenalized`

## Methods

### Public methods

- [`LearnerSurvPenalized$new()`](#method-LearnerSurvPenalized-new)

- [`LearnerSurvPenalized$selected_features()`](#method-LearnerSurvPenalized-selected_features)

- [`LearnerSurvPenalized$clone()`](#method-LearnerSurvPenalized-clone)

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

    LearnerSurvPenalized$new()

------------------------------------------------------------------------

### Method `selected_features()`

Selected features are extracted with the method
[`coef()`](https://rdrr.io/r/stats/coef.html) of the S4 model object,
see
[`penalized::penfit()`](https://rdrr.io/pkg/penalized/man/penfit.html).
By default it returns features with non-zero coefficients.

**Note**: Selected features can be retrieved only for datasets with
`numeric` features, as the presence of factors with multiple levels
makes it difficult to get the original feature names.

#### Usage

    LearnerSurvPenalized$selected_features()

#### Returns

[`character()`](https://rdrr.io/r/base/character.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvPenalized$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.penalized")
print(learner)
#> 
#> ── <LearnerSurvPenalized> (surv.penalized): Penalized Regression ───────────────
#> • Model: -
#> • Parameters: trace=FALSE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and penalized
#> • Predict Types: [crank] and distr
#> • Feature Types: logical, integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $model
#> Penalized cox regression object
#> 6 regression coefficients
#> 
#> Loglikelihood =   -1376.473 
#> 
#> $task_has_factors
#> [1] FALSE
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>    0.817465 
```
