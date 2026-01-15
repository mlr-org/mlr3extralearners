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
#> [1] 7.65951
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  0    1  0  0
#>  [7,]  0    0   0    0    0    0  0   -1  0  0
#>  [8,]  0    0   0    0    0    0  0    0  1  0
#>  [9,]  0    0   0    0    0    0  0    0 -1  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [3,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [5,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [6,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [11,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [12,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#> [13,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -3.24451106
#>  [2,] -1.75271360
#>  [3,]  0.05522174
#>  [4,] -2.05407459
#>  [5,]  0.32768335
#>  [6,] -1.28587365
#>  [7,]  0.08456681
#>  [8,] -0.85518830
#>  [9,] -0.33859653
#> [10,]  4.17611450
#> [11,]  4.57070864
#> [12,] -2.56382867
#> [13,] -1.20304436
#> [14,]  2.36087695
#> [15,] -0.91914106
#> [16,]  1.88105695
#> [17,]  3.13116039
#> [18,] -0.45265898
#> [19,]  0.18300413
#> [20,]  0.42948656
#> [21,] -2.53024922
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 26.04451
#>  [2,] 23.15271
#>  [3,] 18.64478
#>  [4,] 16.35407
#>  [5,] 24.07232
#>  [6,] 20.48587
#>  [7,] 16.31543
#>  [8,] 18.15519
#>  [9,] 10.73860
#> [10,] 10.52389
#> [11,] 27.82929
#> [12,] 18.06383
#> [13,] 14.50304
#> [14,] 16.83912
#> [15,] 28.21914
#> [16,] 24.11894
#> [17,] 27.26884
#> [18,] 16.25266
#> [19,] 19.51700
#> [20,] 14.57051
#> [21,] 23.93025
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 23.816786
#> [2,] -4.564953
#> [3,]  1.438356
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.807 4.11
#>  [2,]    1 1.702 4.94
#>  [3,]    1 1.927 2.52
#>  [4,]    1 2.057 1.34
#>  [5,]    1 1.677 5.50
#>  [6,]    1 1.927 3.80
#>  [7,]    1 2.557 2.90
#>  [8,]    1 2.217 3.10
#>  [9,]    1 3.911 3.32
#> [10,]    1 3.832 2.92
#> [11,]    1 0.687 4.97
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
#> 13.51364 
```
