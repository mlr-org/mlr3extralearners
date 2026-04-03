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
#> [1]  1  8 10 18
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
#> [1] 5.996805
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
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    1   0    0    0    0  0    0  0  0
#> [11,]  0   -1   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> [18,]  0    0   0    1    0    0  0    0  0  0
#> [19,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#>  [4,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0   52    0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0   52    0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [10,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#> [11,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [14,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#> [15,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#> [16,]    0    0    0  0.0 0.00    3    0    0    0 0.000
#> [17,]    0    0    0  0.0 0.00    3    0    0    0 0.000
#> [18,]    0    0    0 75.7 0.00    0    0    0    0 0.000
#> [19,]    0    0    0 75.7 0.00    0    0    0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  1.15915062
#>  [2,]  2.54571877
#>  [3,] -2.96363103
#>  [4,]  1.23256845
#>  [5,]  2.92755734
#>  [6,]  1.18045395
#>  [7,] -0.06449793
#>  [8,] -0.31019625
#>  [9,]  0.58980375
#> [10,]  0.12503952
#> [11,] -0.17415381
#> [12,]  1.46362084
#> [13,]  0.93224735
#> [14,] -2.17907939
#> [15,] -1.70145789
#> [16,] -2.35051677
#> [17,] -0.01675933
#> [18,] -2.35575078
#> [19,]  1.41594323
#> [20,] -1.86621181
#> [21,]  0.41015116
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.24085
#>  [2,] 16.15428
#>  [3,] 21.06363
#>  [4,] 13.06743
#>  [5,] 21.47244
#>  [6,] 21.61955
#>  [7,] 17.86450
#>  [8,] 16.71020
#>  [9,] 16.71020
#> [10,] 10.27496
#> [11,] 10.57415
#> [12,] 30.93638
#> [13,] 29.46775
#> [14,] 23.67908
#> [15,] 17.20146
#> [16,] 17.55052
#> [17,] 13.31676
#> [18,] 28.35575
#> [19,] 28.98406
#> [20,] 21.56621
#> [21,] 14.58985
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>             [,1]
#> [1,] 24.78609470
#> [2,]  6.22508279
#> [3,] -1.54342484
#> [4,] -0.02493278
#> 
#> $x
#>       [,1] [,2] [,3]  [,4]
#>  [1,]    1    0    0 182.3
#>  [2,]    1    0    1 284.3
#>  [3,]    1    0    0 149.3
#>  [4,]    1    0    3 284.3
#>  [5,]    1    0    1  71.0
#>  [6,]    1    0    1  65.1
#>  [7,]    1    0    3  91.9
#>  [8,]    1    0    2 200.1
#>  [9,]    1    0    2 200.1
#> [10,]    1    0    3 396.3
#> [11,]    1    0    3 384.3
#> [12,]    1    1    0   3.0
#> [13,]    1    1    1   0.0
#> [14,]    1    0    0  44.4
#> [15,]    1    0    1 242.3
#> [16,]    1    0    1 228.3
#> [17,]    1    0    3 274.3
#> [18,]    1    1    1  44.6
#> [19,]    1    1    1  19.4
#> [20,]    1    1    5  69.3
#> [21,]    1    1    7 225.3
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  17.5807 
```
