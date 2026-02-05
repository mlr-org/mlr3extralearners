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
#> [1] 8.463662
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    1   0    0    0    0  0    0  0  0
#>  [7,]  0   -1   0    0    0    0  0    0  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  1  0
#> [11,]  0    0   0    0    0    0  0    0 -1  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  0    0   0    1    0    0  0    0  0  0
#> [17,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0    0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0    0    0 1.513
#>  [3,]    0    0    0  0.0    0    0    0    0    0 1.513
#>  [4,]    0    0    4  0.0    0    0    0    0    0 0.000
#>  [5,]    0    0    4  0.0    0    0    0    0    0 0.000
#>  [6,]    0    1    0  0.0    0    0    0    0    0 0.000
#>  [7,]    0    1    0  0.0    0    0    0    0    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0    0    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0    0    0 0.000
#> [10,]    0    0    0  0.0    0    0    0    0    0 0.000
#> [11,]    0    0    0  0.0    0    0    0    0    0 0.000
#> [12,]    0    0    0  0.0    0    3    0    0    0 0.000
#> [13,]    0    0    0  0.0    0    3    0    0    0 0.000
#> [14,]    0    0    0  0.0    0    0   52    0    0 0.000
#> [15,]    0    0    0  0.0    0    0   52    0    0 0.000
#> [16,]    0    0    0 75.7    0    0    0    0    0 0.000
#> [17,]    0    0    0 75.7    0    0    0    0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.1719071
#>  [2,] -0.4554840
#>  [3,] -1.3225111
#>  [4,] -0.6681152
#>  [5,] -2.0681152
#>  [6,]  1.7415115
#>  [7,] -0.2732442
#>  [8,] -0.9432758
#>  [9,] -0.4544224
#> [10,]  3.6236270
#> [11,]  5.6084617
#> [12,]  1.9649028
#> [13,] -0.7037148
#> [14,] -1.2425225
#> [15,]  3.9093734
#> [16,] -0.9601084
#> [17,]  1.6783336
#> [18,] -1.3870407
#> [19,] -2.0504818
#> [20,] -1.0632397
#> [21,] -3.7620269
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.17191
#>  [2,] 21.45548
#>  [3,] 24.12251
#>  [4,] 19.86812
#>  [5,] 19.86812
#>  [6,] 14.65849
#>  [7,] 15.47324
#>  [8,] 11.34328
#>  [9,] 10.85442
#> [10,] 11.07637
#> [11,] 26.79154
#> [12,] 28.43510
#> [13,] 16.20371
#> [14,] 16.44252
#> [15,] 15.29063
#> [16,] 26.96011
#> [17,] 28.72167
#> [18,] 17.18704
#> [19,] 21.75048
#> [20,] 16.06324
#> [21,] 25.16203
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 28.721666
#> [2,] -2.809502
#> [3,] -1.719820
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107    2
#>  [2,]    1 1.362    2
#>  [3,]    1 1.637    0
#>  [4,]    1 1.927    2
#>  [5,]    1 1.927    2
#>  [6,]    1 2.557    4
#>  [7,]    1 2.267    4
#>  [8,]    1 3.737    4
#>  [9,]    1 3.911    4
#> [10,]    1 3.832    4
#> [11,]    1 0.687    0
#> [12,]    1 0.102    0
#> [13,]    1 2.007    4
#> [14,]    1 1.922    4
#> [15,]    1 2.332    4
#> [16,]    1 0.627    0
#> [17,]    1 0.000    0
#> [18,]    1 1.657    4
#> [19,]    1 1.257    2
#> [20,]    1 2.057    4
#> [21,]    1 1.267    0
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.191989 
```
