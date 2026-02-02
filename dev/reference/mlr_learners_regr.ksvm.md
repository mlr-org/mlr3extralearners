# Regression Kernlab Support Vector Machine

Support Vector Regression. Calls
[`kernlab::ksvm()`](https://rdrr.io/pkg/kernlab/man/ksvm.html) from
[kernlab](https://CRAN.R-project.org/package=kernlab).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.ksvm")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “character”, “factor”,
  “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [kernlab](https://CRAN.R-project.org/package=kernlab)

## Parameters

|           |           |         |                                                              |                       |
|-----------|-----------|---------|--------------------------------------------------------------|-----------------------|
| Id        | Type      | Default | Levels                                                       | Range                 |
| scaled    | logical   | TRUE    | TRUE, FALSE                                                  | \-                    |
| type      | character | eps-svr | eps-svr, nu-svr, eps-bsvr                                    | \-                    |
| kernel    | character | rbfdot  | rbfdot, polydot, vanilladot, laplacedot, besseldot, anovadot | \-                    |
| C         | numeric   | 1       |                                                              | \\(-\infty, \infty)\\ |
| nu        | numeric   | 0.2     |                                                              | \\\[0, \infty)\\      |
| epsilon   | numeric   | 0.1     |                                                              | \\(-\infty, \infty)\\ |
| cache     | integer   | 40      |                                                              | \\\[1, \infty)\\      |
| tol       | numeric   | 0.001   |                                                              | \\\[0, \infty)\\      |
| shrinking | logical   | TRUE    | TRUE, FALSE                                                  | \-                    |
| sigma     | numeric   | \-      |                                                              | \\\[0, \infty)\\      |
| degree    | integer   | \-      |                                                              | \\\[1, \infty)\\      |
| scale     | numeric   | \-      |                                                              | \\\[0, \infty)\\      |
| order     | integer   | \-      |                                                              | \\(-\infty, \infty)\\ |
| offset    | numeric   | \-      |                                                              | \\(-\infty, \infty)\\ |
| na.action | untyped   | na.omit |                                                              | \-                    |
| fit       | logical   | TRUE    | TRUE, FALSE                                                  | \-                    |

## References

Karatzoglou, Alexandros, Smola, Alex, Hornik, Kurt, Zeileis, Achim
(2004). “kernlab-an S4 package for kernel methods in R.” *Journal of
statistical software*, **11**(9), 1–20.

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

mboecker

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrKSVM`

## Methods

### Public methods

- [`LearnerRegrKSVM$new()`](#method-LearnerRegrKSVM-new)

- [`LearnerRegrKSVM$clone()`](#method-LearnerRegrKSVM-clone)

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

    LearnerRegrKSVM$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrKSVM$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.ksvm")
print(learner)
#> 
#> ── <LearnerRegrKSVM> (regr.ksvm): Support Vector Machine ───────────────────────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and kernlab
#> • Predict Types: [response]
#> • Feature Types: logical, integer, numeric, character, factor, and ordered
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
#> Support Vector Machine object of class "ksvm" 
#> 
#> SV type: eps-svr  (regression) 
#>  parameter : epsilon = 0.1  cost C = 1 
#> 
#> Gaussian Radial Basis kernel function. 
#>  Hyperparameter : sigma =  0.0579017241692085 
#> 
#> Number of Support Vectors : 18 
#> 
#> Objective Function Value : -5.9021 
#> Training error : 0.119611 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.11328 
```
