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
#>  [1]  1  2  4  6  8 10 12 14 16 18
#> 
#> $selected.terms
#> [1] 1 2 6 8
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
#> [1] 10.35036
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  0    1   0    0    0    0  0    0  0  0
#> [11,]  0   -1   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   1    0    0    0  0    0  0  0
#> [15,]  0    0  -1    0    0    0  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> [18,]  0    0   0    1    0    0  0    0  0  0
#> [19,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7]  [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.00    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.00    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#> [10,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [11,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [12,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [13,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [14,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> [15,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> [16,]    0    0    0  0.0 2.93    0    0  0.00    0 0.000
#> [17,]    0    0    0  0.0 2.93    0    0  0.00    0 0.000
#> [18,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [19,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.31176742
#>  [2,]  0.68103271
#>  [3,]  0.02799369
#>  [4,]  0.89383769
#>  [5,] -1.38554123
#>  [6,]  1.49046418
#>  [7,]  0.97611603
#>  [8,] -1.54525101
#>  [9,] -1.46830274
#> [10,]  3.96573348
#> [11,]  3.27148023
#> [12,]  0.73466905
#> [13,]  2.93759404
#> [14,] -2.52766075
#> [15,] -1.65701935
#> [16,]  0.54859730
#> [17,] -1.86700331
#> [18,]  0.73341685
#> [19,]  2.77262555
#> [20,] -1.73026720
#> [21,] -4.54074779
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 23.31177
#>  [2,] 20.71897
#>  [3,] 14.27201
#>  [4,] 18.30616
#>  [5,] 19.18554
#>  [6,] 14.90954
#>  [7,] 16.32388
#>  [8,] 16.74525
#>  [9,] 11.86830
#> [10,] 10.73427
#> [11,] 29.12852
#> [12,] 29.66533
#> [13,] 30.96241
#> [14,] 24.02766
#> [15,] 16.85702
#> [16,] 12.75140
#> [17,] 29.16700
#> [18,] 25.26658
#> [19,] 27.62737
#> [20,] 21.43027
#> [21,] 25.94075
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 20.425177
#> [2,] -3.297711
#> [3,]  5.018407
#> [4,]  1.465632
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.362    1 1.61
#>  [2,]    1 1.702    0 4.03
#>  [3,]    1 2.057    0 0.43
#>  [4,]    1 1.927    0 2.89
#>  [5,]    1 1.927    0 3.49
#>  [6,]    1 2.557    0 1.99
#>  [7,]    1 2.217    0 2.19
#>  [8,]    1 2.267    0 2.59
#>  [9,]    1 3.737    0 2.57
#> [10,]    1 3.832    0 2.01
#> [11,]    1 0.687    1 4.06
#> [12,]    1 0.102    1 3.11
#> [13,]    1 0.322    1 4.49
#> [14,]    1 0.952    0 4.60
#> [15,]    1 1.922    0 1.89
#> [16,]    1 2.327    0 0.00
#> [17,]    1 0.422    1 3.49
#> [18,]    1 0.627    1 1.29
#> [19,]    1 0.000    1 1.49
#> [20,]    1 1.257    1 0.09
#> [21,]    1 1.267    1 3.19
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 9.738786 
```
