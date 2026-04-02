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
#> [1] 1 2 6
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
#> [1] 8.215953
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    0   0    0    0    0  0    1  0  0
#>  [7,]  0    0   0    0    0    0  0   -1  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7]  [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.00    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.00    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> [10,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [11,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [12,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#> [13,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#> [14,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [15,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [16,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> [17,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.56655480
#>  [2,] -2.21102910
#>  [3,]  0.23067432
#>  [4,]  0.83125630
#>  [5,]  2.60537638
#>  [6,] -1.77506494
#>  [7,]  0.19435275
#>  [8,] -1.73857079
#>  [9,]  1.41688444
#> [10,]  0.39976744
#> [11,] -1.79970966
#> [12,]  1.97104464
#> [13,]  1.86205515
#> [14,]  5.26187419
#> [15,] -4.01268207
#> [16,] -1.82622439
#> [17,] -2.94302188
#> [18,] -1.09229006
#> [19,]  3.37663280
#> [20,]  0.06169063
#> [21,] -0.24646133
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.566555
#>  [2,] 25.011029
#>  [3,] 21.169326
#>  [4,] 17.868744
#>  [5,] 21.794624
#>  [6,] 24.575065
#>  [7,] 19.005647
#>  [8,] 19.538571
#>  [9,] 14.983116
#> [10,] 16.900233
#> [11,] 16.999710
#> [12,]  8.428955
#> [13,] 28.537945
#> [14,] 28.638126
#> [15,] 25.512682
#> [16,] 17.326224
#> [17,] 18.143022
#> [18,] 14.392290
#> [19,] 15.823367
#> [20,] 27.238309
#> [21,] 19.946461
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 25.7756245
#> [2,] -5.1161054
#> [3,]  0.8882059
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005 1.05
#>  [2,]    1 0.705 3.20
#>  [3,]    1 1.600 4.03
#>  [4,]    1 1.825 1.61
#>  [5,]    1 1.575 4.59
#>  [6,]    1 1.535 7.49
#>  [7,]    1 1.825 2.89
#>  [8,]    1 1.825 3.49
#>  [9,]    1 2.455 1.99
#> [10,]    1 2.115 2.19
#> [11,]    1 2.165 2.59
#> [12,]    1 3.809 2.41
#> [13,]    1 0.000 3.11
#> [14,]    1 0.220 4.49
#> [15,]    1 0.850 4.60
#> [16,]    1 1.905 1.46
#> [17,]    1 1.820 1.89
#> [18,]    1 2.225 0.00
#> [19,]    1 2.230 1.64
#> [20,]    1 0.320 3.49
#> [21,]    1 1.155 0.09
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 9.615792 
```
