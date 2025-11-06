# Ranger Survival Learner

Random survival forest. Calls
[`ranger::ranger()`](http://imbs-hl.github.io/ranger/reference/ranger.md)
from package [ranger](https://CRAN.R-project.org/package=ranger).

## Prediction types

This learner returns two prediction types:

1.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and (unique event) time points in columns.
    Calculated using the internal
    [`ranger::predict.ranger()`](http://imbs-hl.github.io/ranger/reference/predict.ranger.md)
    function.

2.  `crank`: the expected mortality using
    [`mlr3proba::surv_return()`](https://mlr3proba.mlr-org.com/reference/surv_return.html).

## Custom mlr3 parameters

- `mtry`: This hyperparameter can alternatively be set via our
  hyperparameter `mtry.ratio` as
  `mtry = max(ceiling(mtry.ratio * n_features), 1)`. Note that `mtry`
  and `mtry.ratio` are mutually exclusive.

## Initial parameter values

- `num.threads` is initialized to 1 to avoid conflicts with
  parallelization via
  [future](https://CRAN.R-project.org/package=future).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.ranger")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [ranger](https://CRAN.R-project.org/package=ranger)

## Parameters

|                              |           |         |                                                 |                       |
|------------------------------|-----------|---------|-------------------------------------------------|-----------------------|
| Id                           | Type      | Default | Levels                                          | Range                 |
| alpha                        | numeric   | 0.5     |                                                 | \\(-\infty, \infty)\\ |
| always.split.variables       | untyped   | \-      |                                                 | \-                    |
| holdout                      | logical   | FALSE   | TRUE, FALSE                                     | \-                    |
| importance                   | character | \-      | none, impurity, impurity_corrected, permutation | \-                    |
| keep.inbag                   | logical   | FALSE   | TRUE, FALSE                                     | \-                    |
| max.depth                    | integer   | NULL    |                                                 | \\\[0, \infty)\\      |
| min.node.size                | integer   | 5       |                                                 | \\\[1, \infty)\\      |
| minprop                      | numeric   | 0.1     |                                                 | \\(-\infty, \infty)\\ |
| mtry                         | integer   | \-      |                                                 | \\\[1, \infty)\\      |
| mtry.ratio                   | numeric   | \-      |                                                 | \\\[0, 1\]\\          |
| num.random.splits            | integer   | 1       |                                                 | \\\[1, \infty)\\      |
| num.threads                  | integer   | 1       |                                                 | \\\[1, \infty)\\      |
| num.trees                    | integer   | 500     |                                                 | \\\[1, \infty)\\      |
| oob.error                    | logical   | TRUE    | TRUE, FALSE                                     | \-                    |
| regularization.factor        | untyped   | 1       |                                                 | \-                    |
| regularization.usedepth      | logical   | FALSE   | TRUE, FALSE                                     | \-                    |
| replace                      | logical   | TRUE    | TRUE, FALSE                                     | \-                    |
| respect.unordered.factors    | character | ignore  | ignore, order, partition                        | \-                    |
| sample.fraction              | numeric   | \-      |                                                 | \\\[0, 1\]\\          |
| save.memory                  | logical   | FALSE   | TRUE, FALSE                                     | \-                    |
| scale.permutation.importance | logical   | FALSE   | TRUE, FALSE                                     | \-                    |
| seed                         | integer   | NULL    |                                                 | \\(-\infty, \infty)\\ |
| split.select.weights         | numeric   | \-      |                                                 | \\\[0, 1\]\\          |
| splitrule                    | character | logrank | logrank, extratrees, C, maxstat                 | \-                    |
| verbose                      | logical   | TRUE    | TRUE, FALSE                                     | \-                    |
| write.forest                 | logical   | TRUE    | TRUE, FALSE                                     | \-                    |
| min.bucket                   | integer   | 3       |                                                 | \\(-\infty, \infty)\\ |
| time.interest                | integer   | NULL    |                                                 | \\\[1, \infty)\\      |
| node.stats                   | logical   | FALSE   | TRUE, FALSE                                     | \-                    |

## References

Wright, N. M, Ziegler, Andreas (2017). “ranger: A Fast Implementation of
Random Forests for High Dimensional Data in C++ and R.” *Journal of
Statistical Software*, **77**(1), 1–17.
[doi:10.18637/jss.v077.i01](https://doi.org/10.18637/jss.v077.i01) .

Breiman, Leo (2001). “Random Forests.” *Machine Learning*, **45**(1),
5–32. ISSN 1573-0565,
[doi:10.1023/A:1010933404324](https://doi.org/10.1023/A%3A1010933404324)
.

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
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvRanger`

## Methods

### Public methods

- [`LearnerSurvRanger$new()`](#method-LearnerSurvRanger-new)

- [`LearnerSurvRanger$importance()`](#method-LearnerSurvRanger-importance)

- [`LearnerSurvRanger$oob_error()`](#method-LearnerSurvRanger-oob_error)

- [`LearnerSurvRanger$clone()`](#method-LearnerSurvRanger-clone)

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

    LearnerSurvRanger$new()

------------------------------------------------------------------------

### Method `importance()`

The importance scores are extracted from the model slot
`variable.importance`.

#### Usage

    LearnerSurvRanger$importance()

#### Returns

Named [`numeric()`](https://rdrr.io/r/base/numeric.html).

------------------------------------------------------------------------

### Method `oob_error()`

The out-of-bag error is extracted from the model slot
`prediction.error`.

#### Usage

    LearnerSurvRanger$oob_error()

#### Returns

`numeric(1)`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvRanger$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.ranger", importance = "permutation")
print(learner)
#> 
#> ── <LearnerSurvRanger> (surv.ranger): Random Forest ────────────────────────────
#> • Model: -
#> • Parameters: importance=permutation, num.threads=1
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and ranger
#> • Predict Types: [crank] and distr
#> • Feature Types: logical, integer, numeric, character, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: importance, oob_error, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Ranger result
#> 
#> Call:
#>  ranger::ranger(formula = NULL, dependent.variable.name = targets[1L],      status.variable.name = targets[2L], data = task$data(), case.weights = private$.get_weights(task),      importance = "permutation", num.threads = 1L) 
#> 
#> Type:                             Survival 
#> Number of trees:                  500 
#> Sample size:                      670 
#> Number of independent variables:  6 
#> Mtry:                             3 
#> Target node size:                 3 
#> Variable importance mode:         permutation 
#> Splitrule:                        logrank 
#> Number of unique death times:     90 
#> OOB prediction error (1-C):       0.162056 
print(learner$importance())
#>  revascdays      revasc         age         los       sysbp    stchange 
#> 0.149241402 0.081140272 0.028707648 0.022576588 0.008786808 0.003505263 

# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8547831 
```
