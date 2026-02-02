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
#> [1] 8.102393
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  0    1  0  0
#>  [5,]  0    0   0    0    0    0  0   -1  0  0
#>  [6,]  0    0   1    0    0    0  0    0  0  0
#>  [7,]  0    0  -1    0    0    0  0    0  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  1    0  0  0
#> [11,]  0    0   0    0    0    0 -1    0  0  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [6,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0   65  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0   65  0.0    0 0.000
#> [12,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.4392912
#>  [2,]  0.7434785
#>  [3,] -1.4873375
#>  [4,] -0.8888140
#>  [5,]  0.9168309
#>  [6,] -0.9329118
#>  [7,]  1.4991484
#>  [8,] -0.5631597
#>  [9,]  4.8693292
#> [10,]  3.5831155
#> [11,] -4.6465816
#> [12,] -1.1712499
#> [13,] -0.1167462
#> [14,]  4.5877092
#> [15,] -1.5922728
#> [16,]  0.1406169
#> [17,]  0.1581981
#> [18,] -1.4574085
#> [19,] -1.0071420
#> [20,]  0.3677968
#> [21,] -1.5633084
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.43929
#>  [2,] 20.65652
#>  [3,] 19.58734
#>  [4,] 23.68881
#>  [5,] 18.28317
#>  [6,] 18.73291
#>  [7,] 15.80085
#>  [8,] 15.76316
#>  [9,] 27.53067
#> [10,] 30.31688
#> [11,] 26.14658
#> [12,] 16.67125
#> [13,] 13.41675
#> [14,] 14.61229
#> [15,] 28.89227
#> [16,] 25.85938
#> [17,] 30.24180
#> [18,] 17.25741
#> [19,] 20.70714
#> [20,] 14.63220
#> [21,] 22.96331
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 28.4428313
#> [2,] -6.7504060
#> [3,]  0.7495711
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107 1.96
#>  [2,]    1 1.702 4.94
#>  [3,]    1 1.947 5.72
#>  [4,]    1 1.637 8.40
#>  [5,]    1 1.927 3.80
#>  [6,]    1 1.927 4.40
#>  [7,]    1 2.217 3.10
#>  [8,]    1 2.267 3.50
#>  [9,]    1 0.687 4.97
#> [10,]    1 0.322 5.40
#> [11,]    1 0.952 5.51
#> [12,]    1 2.007 2.37
#> [13,]    1 2.327 0.91
#> [14,]    1 2.332 2.55
#> [15,]    1 0.422 4.40
#> [16,]    1 0.627 2.20
#> [17,]    1 0.000 2.40
#> [18,]    1 1.657 0.00
#> [19,]    1 1.257 1.00
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
#> 17.57284 
```
