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
#> [1] 7.189767
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    0   1    0    0    0  0    0  0  0
#>  [7,]  0    0  -1    0    0    0  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [4,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [5,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [6,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [13,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [14,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.12368646
#>  [2,]  0.87975716
#>  [3,]  0.93232334
#>  [4,]  0.72392493
#>  [5,] -0.99467440
#>  [6,] -0.64502737
#>  [7,]  1.45337552
#>  [8,]  1.34528126
#>  [9,] -0.60646959
#> [10,] -0.09483157
#> [11,]  0.42107549
#> [12,]  4.83547882
#> [13,] -2.03047800
#> [14,] -2.58250157
#> [15,] -1.37545780
#> [16,]  2.63314151
#> [17,] -1.05024171
#> [18,] -0.78930737
#> [19,] -0.86199650
#> [20,]  1.17465954
#> [21,] -3.49171816
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 20.876314
#>  [2,] 20.120243
#>  [3,] 17.767677
#>  [4,] 23.676075
#>  [5,] 23.794674
#>  [6,] 18.445027
#>  [7,] 14.946624
#>  [8,] 15.954719
#>  [9,] 15.806470
#> [10,] 10.494832
#> [11,]  9.978925
#> [12,] 27.564521
#> [13,] 17.530478
#> [14,] 17.782502
#> [15,] 14.675458
#> [16,] 16.566858
#> [17,] 28.350242
#> [18,] 26.789307
#> [19,] 16.661996
#> [20,] 18.525340
#> [21,] 24.891718
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>            [,1]
#> [1,] 28.3502417
#> [2,] -2.9649831
#> [3,] -1.2917882
#> [4,] -0.9531128
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 0.685    2    3
#>  [2,]    1 0.940    2    3
#>  [3,]    1 1.505    4    1
#>  [4,]    1 1.255    0    1
#>  [5,]    1 1.215    0    1
#>  [6,]    1 1.505    2    3
#>  [7,]    1 2.135    4    2
#>  [8,]    1 1.795    4    2
#>  [9,]    1 1.845    4    2
#> [10,]    1 3.315    4    3
#> [11,]    1 3.489    4    3
#> [12,]    1 0.265    0    0
#> [13,]    1 1.585    4    1
#> [14,]    1 1.500    4    1
#> [15,]    1 1.905    4    3
#> [16,]    1 1.910    4    1
#> [17,]    1 0.000    0    0
#> [18,]    1 0.205    0    1
#> [19,]    1 1.235    4    3
#> [20,]    1 0.835    2    5
#> [21,]    1 0.845    0    1
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 12.68832 
```
