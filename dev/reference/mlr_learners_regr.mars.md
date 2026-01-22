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
#> [1] 1 4 6
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
#> [1] 8.876924
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  0    0   0    0    1    0  0    0  0  0
#>  [9,]  0    0   0    0   -1    0  0    0  0  0
#> [10,]  0    1   0    0    0    0  0    0  0  0
#> [11,]  0   -1   0    0    0    0  0    0  0  0
#> [12,]  1    0   0    0    0    0  0    0  0  0
#> [13,] -1    0   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    1  0  0
#> [15,]  0    0   0    0    0    0  0   -1  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [5,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [6,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [8,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [10,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [11,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [15,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [16,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -2.0378063
#>  [2,] -1.2918792
#>  [3,]  0.1767741
#>  [4,] -2.6433972
#>  [5,] -1.5642740
#>  [6,]  1.4670399
#>  [7,]  0.8242644
#>  [8,] -1.0159562
#>  [9,] -0.2121542
#> [10,] -1.0175205
#> [11,]  3.5396760
#> [12,]  6.7012977
#> [13,] -2.4143955
#> [14,] -3.6030222
#> [15,]  1.8614818
#> [16,]  0.8261186
#> [17,]  0.9395981
#> [18,] -0.6158581
#> [19,] -0.7831128
#> [20,]  2.0654515
#> [21,] -1.2023261
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 23.03781
#>  [2,] 22.29188
#>  [3,] 18.52323
#>  [4,] 20.74340
#>  [5,] 15.86427
#>  [6,] 22.93296
#>  [7,] 21.97574
#>  [8,] 20.21596
#>  [9,] 17.51215
#> [10,] 11.41752
#> [11,] 11.16032
#> [12,] 25.69870
#> [13,] 23.91440
#> [14,] 19.10302
#> [15,] 17.33852
#> [16,] 26.47388
#> [17,] 25.06040
#> [18,] 16.41586
#> [19,] 20.48311
#> [20,] 12.93455
#> [21,] 22.60233
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 26.60409143
#> [2,] -2.92520426
#> [3,] -0.03255251
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.685   48
#>  [2,]    1 0.940   48
#>  [3,]    1 1.505  113
#>  [4,]    1 1.525   43
#>  [5,]    1 1.635  183
#>  [6,]    1 1.255    0
#>  [7,]    1 1.215   33
#>  [8,]    1 1.505   61
#>  [9,]    1 1.795  118
#> [10,]    1 3.489  153
#> [11,]    1 3.410  168
#> [12,]    1 0.265    4
#> [13,]    1 0.530   35
#> [14,]    1 1.585   88
#> [15,]    1 1.910  113
#> [16,]    1 0.000    4
#> [17,]    1 0.205   29
#> [18,]    1 1.235  202
#> [19,]    1 0.835  113
#> [20,]    1 1.635  273
#> [21,]    1 0.845   47
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 12.36316 
```
