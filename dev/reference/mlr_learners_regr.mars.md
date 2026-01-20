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
#> [1]  1 14
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
#> [1] 8.775083
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    1    0  0    0  0  0
#>  [7,]  0    0   0    0   -1    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  1    0  0  0
#>  [9,]  0    0   0    0    0    0 -1    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  1  0
#> [11,]  0    0   0    0    0    0  0    0 -1  0
#> [12,]  1    0   0    0    0    0  0    0  0  0
#> [13,] -1    0   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [5,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [6,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [18,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -2.3062635
#>  [2,] -2.9368262
#>  [3,] -2.1680600
#>  [4,]  0.3420549
#>  [5,]  0.4720734
#>  [6,] -1.4037020
#>  [7,] -1.4935872
#>  [8,] -2.6935872
#>  [9,]  1.6771132
#> [10,]  4.4813822
#> [11,]  5.2936451
#> [12,]  3.1534203
#> [13,] -0.4210920
#> [14,] -1.3754743
#> [15,] -1.1253610
#> [16,]  0.2076676
#> [17,]  0.8380953
#> [18,]  4.0602072
#> [19,]  1.4213806
#> [20,] -4.3073874
#> [21,] -1.7156990
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 23.306263
#>  [2,] 25.736826
#>  [3,] 20.268060
#>  [4,] 13.957945
#>  [5,] 23.927927
#>  [6,] 24.203702
#>  [7,] 17.893587
#>  [8,] 17.893587
#>  [9,]  8.722887
#> [10,] 10.218618
#> [11,] 27.106355
#> [12,] 27.246580
#> [13,] 15.921092
#> [14,] 16.575474
#> [15,] 14.425361
#> [16,] 27.092332
#> [17,] 25.161905
#> [18,] 26.339793
#> [19,] 14.378619
#> [20,] 24.007387
#> [21,] 16.715699
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>             [,1]
#> [1,] 27.24657966
#> [2,] -0.04674159
#> 
#> $x
#>       [,1]  [,2]
#>  [1,]    1  84.3
#>  [2,]    1  32.3
#>  [3,]    1 149.3
#>  [4,]    1 284.3
#>  [5,]    1  71.0
#>  [6,]    1  65.1
#>  [7,]    1 200.1
#>  [8,]    1 200.1
#>  [9,]    1 396.3
#> [10,]    1 364.3
#> [11,]    1   3.0
#> [12,]    1   0.0
#> [13,]    1 242.3
#> [14,]    1 228.3
#> [15,]    1 274.3
#> [16,]    1   3.3
#> [17,]    1  44.6
#> [18,]    1  19.4
#> [19,]    1 275.3
#> [20,]    1  69.3
#> [21,]    1 225.3
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 18.12631 
```
