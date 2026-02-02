# Regression Cubist Learner

Rule-based model that is an extension of Quinlan's M5 model tree. Each
tree contains linear regression models at the terminal leaves. Calls
[`Cubist::cubist()`](http://topepo.github.io/Cubist/reference/cubist.default.md)
from [Cubist](https://CRAN.R-project.org/package=Cubist).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.cubist")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”, “character”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [Cubist](https://CRAN.R-project.org/package=Cubist)

## Parameters

|               |         |           |             |                       |
|---------------|---------|-----------|-------------|-----------------------|
| Id            | Type    | Default   | Levels      | Range                 |
| committees    | integer | \-        |             | \\\[1, 100\]\\        |
| unbiased      | logical | FALSE     | TRUE, FALSE | \-                    |
| rules         | integer | 100       |             | \\\[1, \infty)\\      |
| extrapolation | numeric | 100       |             | \\\[0, 100\]\\        |
| sample        | integer | 0         |             | \\\[0, \infty)\\      |
| seed          | integer | \-        |             | \\(-\infty, \infty)\\ |
| label         | untyped | "outcome" |             | \-                    |
| neighbors     | integer | \-        |             | \\\[0, 9\]\\          |

## References

Quinlan, R J, others (1992). “Learning with continuous classes.” In *5th
Australian joint conference on artificial intelligence*, volume 92,
343–348. World Scientific.

Quinlan, Ross J (1993). “Combining instance-based and model-based
learning.” In *Proceedings of the tenth international conference on
machine learning*, 236–243.

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

sumny

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrCubist`

## Methods

### Public methods

- [`LearnerRegrCubist$new()`](#method-LearnerRegrCubist-new)

- [`LearnerRegrCubist$clone()`](#method-LearnerRegrCubist-clone)

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

    LearnerRegrCubist$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrCubist$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.cubist")
print(learner)
#> 
#> ── <LearnerRegrCubist> (regr.cubist): Rule-based model ─────────────────────────
#> • Model: -
#> • Parameters: committees=1, neighbors=0
#> • Packages: mlr3, mlr3extralearners, and Cubist
#> • Predict Types: [response]
#> • Feature Types: integer, numeric, character, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#> Call:
#> cubist.default(x = x, y = y, committees =
#>  self$param_set$values$committees, control = control, weights
#>  = private$.get_weights(task))
#> 
#> Number of samples: 21 
#> Number of predictors: 10 
#> 
#> Number of committees: 1 
#> Number of rules: 1 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 14.70425 
```
