# Classification Boosting Learner

Classification using ada. Calls
[`ada::ada()`](https://rdrr.io/pkg/ada/man/ada.html) from
[ada](https://CRAN.R-project.org/package=ada).

## Initial parameter values

- `xval` is set to `0` by default for speed.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.ada")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [ada](https://CRAN.R-project.org/package=ada),
  [rpart](https://CRAN.R-project.org/package=rpart)

## Parameters

|                |           |             |                        |                  |
|----------------|-----------|-------------|------------------------|------------------|
| Id             | Type      | Default     | Levels                 | Range            |
| bag.frac       | numeric   | 0.5         |                        | \\\[0, 1\]\\     |
| bag.shift      | logical   | FALSE       | TRUE, FALSE            | \-               |
| cp             | numeric   | 0.01        |                        | \\\[0, 1\]\\     |
| delta          | numeric   | 1e-10       |                        | \\\[0, \infty)\\ |
| iter           | integer   | 50          |                        | \\\[1, \infty)\\ |
| loss           | character | exponential | exponential, logistic  | \-               |
| max.iter       | integer   | 20          |                        | \\\[1, \infty)\\ |
| maxcompete     | integer   | 4           |                        | \\\[0, \infty)\\ |
| maxdepth       | integer   | 30          |                        | \\\[1, 30\]\\    |
| maxsurrogate   | integer   | 5           |                        | \\\[0, \infty)\\ |
| minbucket      | integer   | \-          |                        | \\\[1, \infty)\\ |
| minsplit       | integer   | 20          |                        | \\\[1, \infty)\\ |
| model.coef     | logical   | TRUE        | TRUE, FALSE            | \-               |
| n.iter         | integer   | 50          |                        | \\\[1, \infty)\\ |
| nu             | numeric   | 0.1         |                        | \\\[0, \infty)\\ |
| surrogatestyle | integer   | 0           |                        | \\\[0, 1\]\\     |
| type           | character | discrete    | discrete, real, gentle | \-               |
| usesurrogate   | integer   | 2           |                        | \\\[0, 2\]\\     |
| verbose        | logical   | FALSE       | TRUE, FALSE            | \-               |
| xval           | integer   | 0           |                        | \\\[0, \infty)\\ |

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifAdaBoosting`

## Methods

### Public methods

- [`LearnerClassifAdaBoosting$new()`](#method-LearnerClassifAdaBoosting-new)

- [`LearnerClassifAdaBoosting$oob_error()`](#method-LearnerClassifAdaBoosting-oob_error)

- [`LearnerClassifAdaBoosting$clone()`](#method-LearnerClassifAdaBoosting-clone)

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
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifAdaBoosting$new()

------------------------------------------------------------------------

### Method `oob_error()`

The oob error is extracted extracted from the model slot `$model$errs`.

#### Usage

    LearnerClassifAdaBoosting$oob_error()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifAdaBoosting$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.ada")
print(learner)
#> 
#> ── <LearnerClassifAdaBoosting> (classif.ada): ada Boosting ─────────────────────
#> • Model: -
#> • Parameters: xval=0
#> • Packages: mlr3, mlr3extralearners, ada, and rpart
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: missings, oob_error, and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Call:
#> ada(task$formula(), data = task$data(), control = list(xval = 0L))
#> 
#> Loss: exponential Method: discrete   Iteration: 50 
#> 
#> Final Confusion Matrix for Data:
#>           Final Prediction
#> True value  M  R
#>          M 78  0
#>          R  0 61
#> 
#> Train Error: 0 
#> 
#> Out-Of-Bag Error:  0.022  iteration= 40 
#> 
#> Additional Estimates of number of iterations:
#> 
#> train.err1 train.kap1 
#>         50         50 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>   0.173913 
```
