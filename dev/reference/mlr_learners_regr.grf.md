# Generalized Random Forest Regression Learner

Generalized random forest for regression. Calls
[`grf::regression_forest()`](https://rdrr.io/pkg/grf/man/regression_forest.html)
from [grf](https://CRAN.R-project.org/package=grf).

## Custom mlr3 parameters

- `sample.weights` is not exposed as a hyperparameter. Observation
  weights are taken from the task instead, see the `weights` property.

- `estimate.variance` is not exposed as a hyperparameter. It is enabled
  automatically when the `predict_type` is `"se"`, which requires
  `ci.group.size` to be at least `2`.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.grf")

## Meta Information

- Task type: “regr”

- Predict Types: “response”, “se”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [grf](https://CRAN.R-project.org/package=grf)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| num.trees | integer | 2000 |  | \\\[1, \infty)\\ |
| clusters | untyped | NULL |  | \- |
| equalize.cluster.weights | logical | FALSE | TRUE, FALSE | \- |
| sample.fraction | numeric | 0.5 |  | \\\[0, 1\]\\ |
| mtry | integer | \- |  | \\\[1, \infty)\\ |
| min.node.size | integer | 5 |  | \\\[1, \infty)\\ |
| honesty | logical | TRUE | TRUE, FALSE | \- |
| honesty.fraction | numeric | 0.5 |  | \\\[0, 1\]\\ |
| honesty.prune.leaves | logical | TRUE | TRUE, FALSE | \- |
| alpha | numeric | 0.05 |  | \\\[0, 0.25\]\\ |
| imbalance.penalty | numeric | 0 |  | \\\[0, \infty)\\ |
| ci.group.size | integer | 2 |  | \\\[1, \infty)\\ |
| tune.parameters | untyped | "none" |  | \- |
| tune.num.trees | integer | 50 |  | \\\[1, \infty)\\ |
| tune.num.reps | integer | 100 |  | \\\[1, \infty)\\ |
| tune.num.draws | integer | 1000 |  | \\\[1, \infty)\\ |
| compute.oob.predictions | logical | TRUE | TRUE, FALSE | \- |
| seed | integer | \- |  | \\(-\infty, \infty)\\ |
| linear.correction.variables | untyped | NULL |  | \- |
| ll.lambda | numeric | NULL |  | \\\[0, \infty)\\ |
| ll.weight.penalty | logical | FALSE | TRUE, FALSE | \- |
| num.threads | integer | \- |  | \\\[1, \infty)\\ |

## References

Athey, Susan, Tibshirani, Julie, Wager, Stefan (2019). “Generalized
random forests.” *The Annals of Statistics*, **47**(2), 1148–1178.
[doi:10.1214/18-AOS1709](https://doi.org/10.1214/18-AOS1709) .

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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

jesuisantoine

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrGRF`

## Methods

### Public methods

- [`LearnerRegrGRF$new()`](#method-LearnerRegrGRF-initialize)

- [`LearnerRegrGRF$clone()`](#method-LearnerRegrGRF-clone)

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

### `LearnerRegrGRF$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrGRF$new()

------------------------------------------------------------------------

### `LearnerRegrGRF$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrGRF$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.grf")
print(learner)
#> 
#> ── <LearnerRegrGRF> (regr.grf): Generalized Random Forest ──────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and grf
#> • Predict Types: [response] and se
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: missings and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> GRF forest object of type regression_forest 
#> Number of trees: 2000 
#> Number of training samples: 21 
#> Variable importance: 
#>  1  2  3  4  5  6  7  8  9 10 
#>  0  0  0  0  0  0  0  0  0  0 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 31.44116 
```
