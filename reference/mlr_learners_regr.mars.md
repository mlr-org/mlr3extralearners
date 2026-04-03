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
#> [1]  1  2  4  6  8 10 12 14 16
#> 
#> $selected.terms
#> [1]  1  4 10
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
#> [1] 10.2243
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
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [5,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [6,]    0    0    0    0 0.00    0   66  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0   66  0.0    0 0.000
#>  [8,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [11,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [12,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [14,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [15,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.05398354
#>  [2,]  0.70730020
#>  [3,] -1.07754040
#>  [4,]  0.68984974
#>  [5,] -2.16877417
#>  [6,] -0.85095214
#>  [7,]  0.32464717
#>  [8,] -1.53737889
#>  [9,]  0.19707712
#> [10,] -1.99828516
#> [11,] -0.53082453
#> [12,]  4.60444447
#> [13,]  7.34985003
#> [14,] -2.83890142
#> [15,] -1.93394258
#> [16,] -2.92657491
#> [17,] -1.64868657
#> [18,]  3.00970772
#> [19,]  1.56170279
#> [20,] -0.47328890
#> [21,] -0.51341310
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.94602
#>  [2,] 20.29270
#>  [3,] 23.87754
#>  [4,] 20.71015
#>  [5,] 20.26877
#>  [6,] 23.65095
#>  [7,] 18.87535
#>  [8,] 19.33738
#>  [9,] 17.10292
#> [10,] 17.19829
#> [11,] 10.93082
#> [12,] 10.09556
#> [13,] 25.05015
#> [14,] 24.33890
#> [15,] 17.43394
#> [16,] 18.12657
#> [17,] 14.94869
#> [18,] 16.19029
#> [19,] 25.73830
#> [20,] 15.47329
#> [21,] 21.91341
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 22.4271105
#> [2,] -4.2531019
#> [3,]  0.7700434
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.685 1.86
#>  [2,]    1 0.940 2.42
#>  [3,]    1 0.385 4.01
#>  [4,]    1 1.280 4.84
#>  [5,]    1 1.525 5.62
#>  [6,]    1 1.215 8.30
#>  [7,]    1 1.505 3.70
#>  [8,]    1 1.505 4.30
#>  [9,]    1 1.795 3.00
#> [10,]    1 1.845 3.40
#> [11,]    1 3.315 3.38
#> [12,]    1 3.410 2.82
#> [13,]    1 0.265 4.87
#> [14,]    1 0.530 5.41
#> [15,]    1 1.585 2.27
#> [16,]    1 1.500 2.70
#> [17,]    1 1.905 0.81
#> [18,]    1 1.910 2.45
#> [19,]    1 0.000 4.30
#> [20,]    1 1.635 0.00
#> [21,]    1 0.845 4.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 13.05312 
```
