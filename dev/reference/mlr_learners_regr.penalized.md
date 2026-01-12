# Regression L1 and L2 Penalized Learner

Penalized (L1 and L2) Logistic Regression. Calls
[`penalized::penalized()`](https://rdrr.io/pkg/penalized/man/penalized.html)
from: [penalized](https://CRAN.R-project.org/package=penalized).

## Details

The `penalized` and `unpenalized` arguments in the learner are
implemented slightly differently than in
[`penalized::penalized()`](https://rdrr.io/pkg/penalized/man/penalized.html).
Here, there is no parameter for `penalized` but instead it is assumed
that every variable is penalized unless stated in the `unpenalized`
parameter.

## Initial parameter values

- `trace` is set to `"FALSE"` to disable printing output during model
  training.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.penalized")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [penalized](https://CRAN.R-project.org/package=penalized)

## Parameters

|             |           |         |                 |                  |
|-------------|-----------|---------|-----------------|------------------|
| Id          | Type      | Default | Levels          | Range            |
| epsilon     | numeric   | 1e-10   |                 | \\\[0, \infty)\\ |
| fusedl      | logical   | FALSE   | TRUE, FALSE     | \-               |
| lambda1     | numeric   | 0       |                 | \\\[0, \infty)\\ |
| lambda2     | numeric   | 0       |                 | \\\[0, \infty)\\ |
| maxiter     | integer   | \-      |                 | \\\[1, \infty)\\ |
| model       | character | linear  | linear, poisson | \-               |
| positive    | untyped   | FALSE   |                 | \-               |
| standardize | logical   | FALSE   | TRUE, FALSE     | \-               |
| startbeta   | untyped   | \-      |                 | \-               |
| startgamma  | untyped   | \-      |                 | \-               |
| steps       | untyped   | 1L      |                 | \-               |
| trace       | logical   | TRUE    | TRUE, FALSE     | \-               |
| unpenalized | untyped   | \-      |                 | \-               |

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

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrPenalized`

## Methods

### Public methods

- [`LearnerRegrPenalized$new()`](#method-LearnerRegrPenalized-new)

- [`LearnerRegrPenalized$clone()`](#method-LearnerRegrPenalized-clone)

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

    LearnerRegrPenalized$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrPenalized$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.penalized")
print(learner)
#> 
#> ── <LearnerRegrPenalized> (regr.penalized): Penalized  Regression ──────────────
#> • Model: -
#> • Parameters: trace=FALSE
#> • Packages: mlr3 and penalized
#> • Predict Types: [response]
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties:
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Penalized linear regression object
#> 11 regression coefficients
#> 
#> Loglikelihood =   -45.28631 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 5.795997 
```
