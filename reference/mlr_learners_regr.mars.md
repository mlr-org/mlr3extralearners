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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

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
#> [1] 1 2 8
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
#> [1] 8.793172
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
#> [10,]  0    0   0    0    0    0  0    0  1  0
#> [11,]  0    0   0    0    0    0  0    0 -1  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> [18,]  0    0   1    0    0    0  0    0  0  0
#> [19,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [14,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [18,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.50137104
#>  [2,] -2.43998886
#>  [3,] -0.47850802
#>  [4,]  0.49402873
#>  [5,] -3.45292865
#>  [6,] -2.01878810
#>  [7,] -2.42816069
#>  [8,]  0.77990424
#>  [9,] -0.15136423
#> [10,] -2.44394936
#> [11,] -0.23499955
#> [12,]  5.11892381
#> [13,]  1.90570026
#> [14,]  4.96706607
#> [15,] -1.27285923
#> [16,]  2.88686998
#> [17,] -0.08196540
#> [18,]  1.95886499
#> [19,] -0.97878377
#> [20,]  0.01499641
#> [21,] -1.64268757
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.501371
#>  [2,] 25.239989
#>  [3,] 21.878508
#>  [4,] 18.205971
#>  [5,] 21.552929
#>  [6,] 16.318788
#>  [7,] 20.228161
#>  [8,] 15.620096
#>  [9,] 17.451364
#> [10,] 17.643949
#> [11,] 10.635000
#> [12,]  9.581076
#> [13,] 28.494300
#> [14,] 28.932934
#> [15,] 14.572859
#> [16,] 16.313130
#> [17,] 27.381965
#> [18,] 24.041135
#> [19,] 16.778784
#> [20,] 14.985004
#> [21,] 23.042688
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 24.170256
#> [2,] -4.753359
#> [3,]  1.075633
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005 1.96
#>  [2,]    1 0.705 4.11
#>  [3,]    1 1.600 4.94
#>  [4,]    1 1.825 2.52
#>  [5,]    1 1.845 5.72
#>  [6,]    1 1.955 1.34
#>  [7,]    1 1.825 4.40
#>  [8,]    1 2.455 2.90
#>  [9,]    1 2.115 3.10
#> [10,]    1 2.165 3.50
#> [11,]    1 3.635 3.48
#> [12,]    1 3.730 2.92
#> [13,]    1 0.000 4.02
#> [14,]    1 0.220 5.40
#> [15,]    1 2.225 0.91
#> [16,]    1 2.230 2.55
#> [17,]    1 0.320 4.40
#> [18,]    1 0.525 2.20
#> [19,]    1 1.555 0.00
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
#> 8.690234 
```
