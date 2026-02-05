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
#> [1]  1  2 12
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
#> [1] 6.936669
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  0    0   0    0    1    0  0    0  0  0
#>  [9,]  0    0   0    0   -1    0  0    0  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
#> [16,]  0    0   0    1    0    0  0    0  0  0
#> [17,]  0    0   0   -1    0    0  0    0  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [8,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [18,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,]  0.8144020
#>  [2,] -1.0204136
#>  [3,]  0.8591368
#>  [4,]  0.9833359
#>  [5,] -1.9636421
#>  [6,] -1.9509154
#>  [7,] -1.3468588
#>  [8,]  1.1472246
#>  [9,] -0.1376480
#> [10,]  5.0034979
#> [11,]  3.5673480
#> [12,] -2.7518320
#> [13,] -1.7529692
#> [14,] -2.7515208
#> [15,] -1.4439519
#> [16,]  1.5766003
#> [17,]  2.8460403
#> [18,] -1.1794392
#> [19,]  0.2119011
#> [20,] -0.3075955
#> [21,] -0.4027007
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 20.185598
#>  [2,] 23.820414
#>  [3,] 20.540863
#>  [4,] 17.716664
#>  [5,] 20.063642
#>  [6,] 16.250915
#>  [7,] 19.146859
#>  [8,] 15.252775
#>  [9,] 10.537648
#> [10,]  9.696502
#> [11,] 26.832652
#> [12,] 24.251832
#> [13,] 17.252969
#> [14,] 17.951521
#> [15,] 14.743952
#> [16,] 25.723400
#> [17,] 23.153960
#> [18,] 16.979439
#> [19,] 19.488099
#> [20,] 15.307595
#> [21,] 21.802701
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 23.7744698
#> [2,] -4.3697946
#> [3,]  0.7607419
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.260 2.52
#>  [2,]    1 0.705 4.11
#>  [3,]    1 1.600 4.94
#>  [4,]    1 1.825 2.52
#>  [5,]    1 1.845 5.72
#>  [6,]    1 1.955 1.34
#>  [7,]    1 1.825 4.40
#>  [8,]    1 2.455 2.90
#>  [9,]    1 3.635 3.48
#> [10,]    1 3.730 2.92
#> [11,]    1 0.000 4.02
#> [12,]    1 0.850 5.51
#> [13,]    1 1.905 2.37
#> [14,]    1 1.820 2.80
#> [15,]    1 2.225 0.91
#> [16,]    1 0.320 4.40
#> [17,]    1 0.525 2.20
#> [18,]    1 1.555 0.00
#> [19,]    1 1.155 1.00
#> [20,]    1 1.955 0.10
#> [21,]    1 1.165 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 13.87132 
```
