# Regression Mars Learner

Multivariate Adaptive Regression Splines. Calls
[`mda::mars()`](https://rdrr.io/pkg/mda/man/mars.html) from
[mda](https://CRAN.R-project.org/package=mda).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.mars")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mda](https://CRAN.R-project.org/package=mda)

## Parameters

|              |         |         |             |                  |
|--------------|---------|---------|-------------|------------------|
| Id           | Type    | Default | Levels      | Range            |
| degree       | integer | 1       |             | \\\[1, \infty)\\ |
| nk           | integer | \-      |             | \\\[1, \infty)\\ |
| penalty      | numeric | 2       |             | \\\[0, \infty)\\ |
| thresh       | numeric | 0.001   |             | \\\[0, \infty)\\ |
| prune        | logical | TRUE    | TRUE, FALSE | \-               |
| trace.mars   | logical | FALSE   | TRUE, FALSE | \-               |
| forward.step | logical | FALSE   | TRUE, FALSE | \-               |

## References

Friedman, H J (1991). “Multivariate adaptive regression splines.” *The
annals of statistics*, **19**(1), 1–67.

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
-\> `LearnerRegrMars`

## Methods

### Public methods

- [`LearnerRegrMars$new()`](#method-LearnerRegrMars-new)

- [`LearnerRegrMars$clone()`](#method-LearnerRegrMars-clone)

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

    LearnerRegrMars$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrMars$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.mars")
print(learner)
#> 
#> ── <LearnerRegrMars> (regr.mars): Multivariate Adaptive Regression Splines ─────
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and mda
#> • Predict Types: [response]
#> • Feature Types: integer and numeric
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
#> $call
#> mda::mars(x = x, y = y)
#> 
#> $all.terms
#> [1]  1  2  4  6  8 10 12 14 16
#> 
#> $selected.terms
#> [1] 1 2 4
#> 
#> $penalty
#> [1] 2
#> 
#> $degree
#> [1] 1
#> 
#> $nk
#> [1] 21
#> 
#> $thresh
#> [1] 0.001
#> 
#> $gcv
#> [1] 8.063954
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  0    1  0  0
#>  [5,]  0    0   0    0    0    0  0   -1  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   1    0    0    0  0    0  0  0
#>  [9,]  0    0  -1    0    0    0  0    0  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [16,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.16823288
#>  [2,] -3.03094747
#>  [3,]  0.88660680
#>  [4,] -0.92731386
#>  [5,] -0.94582794
#>  [6,]  1.11385057
#>  [7,] -0.77126610
#>  [8,]  3.25698745
#>  [9,]  1.72027072
#> [10,] -0.36857992
#> [11,]  5.07077352
#> [12,] -0.07548253
#> [13,]  3.78081518
#> [14,] -4.49266102
#> [15,] -0.89465795
#> [16,] -2.11107769
#> [17,] -1.34153611
#> [18,]  0.55182913
#> [19,] -1.02037036
#> [20,]  0.77526059
#> [21,] -1.34490591
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.83177
#>  [2,] 25.83095
#>  [3,] 20.51339
#>  [4,] 15.22731
#>  [5,] 23.74583
#>  [6,] 18.08615
#>  [7,] 18.57127
#>  [8,] 13.14301
#>  [9,] 15.57973
#> [10,] 15.56858
#> [11,] 27.32923
#> [12,] 30.47548
#> [13,] 30.11918
#> [14,] 25.99266
#> [15,] 16.39466
#> [16,] 17.31108
#> [17,] 28.64154
#> [18,] 29.84817
#> [19,] 16.82037
#> [20,] 14.22474
#> [21,] 22.74491
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 27.9077042
#> [2,] -6.6912093
#> [3,]  0.8085278
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.362 2.52
#>  [2,]    1 0.807 4.11
#>  [3,]    1 1.702 4.94
#>  [4,]    1 2.057 1.34
#>  [5,]    1 1.637 8.40
#>  [6,]    1 1.927 3.80
#>  [7,]    1 1.927 4.40
#>  [8,]    1 2.557 2.90
#>  [9,]    1 2.217 3.10
#> [10,]    1 2.267 3.50
#> [11,]    1 0.687 4.97
#> [12,]    1 0.102 4.02
#> [13,]    1 0.322 5.40
#> [14,]    1 0.952 5.51
#> [15,]    1 2.007 2.37
#> [16,]    1 1.922 2.80
#> [17,]    1 0.422 4.40
#> [18,]    1 0.000 2.40
#> [19,]    1 1.657 0.00
#> [20,]    1 2.057 0.10
#> [21,]    1 1.267 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 18.15463 
```
