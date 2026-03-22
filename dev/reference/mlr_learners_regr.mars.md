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
#> [1] 1 2 6
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
#> [1] 11.60661
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
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [4,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [10,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [11,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [13,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [14,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.39576424
#>  [2,]  0.14662408
#>  [3,] -2.40864991
#>  [4,]  1.38986895
#>  [5,]  0.78336843
#>  [6,] -2.15992875
#>  [7,]  0.77546410
#>  [8,] -1.51110561
#>  [9,]  0.06286905
#> [10,]  5.58500458
#> [11,]  1.14219528
#> [12,]  5.91690849
#> [13,] -3.01388894
#> [14,] -3.22469989
#> [15,] -3.84317722
#> [16,] -0.93420337
#> [17,]  2.55919782
#> [18,]  0.06051796
#> [19,]  2.87352675
#> [20,] -0.28624947
#> [21,] -1.51787809
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 25.195764
#>  [2,] 21.253376
#>  [3,] 20.508650
#>  [4,] 23.010131
#>  [5,] 22.016632
#>  [6,] 19.959929
#>  [7,] 15.624536
#>  [8,] 16.711106
#>  [9,] 10.337131
#> [10,]  9.114995
#> [11,] 29.257805
#> [12,] 27.983092
#> [13,] 24.513889
#> [14,] 18.724700
#> [15,] 19.043177
#> [16,] 14.234203
#> [17,] 16.640802
#> [18,] 25.939482
#> [19,] 27.526473
#> [20,] 16.086249
#> [21,] 22.917878
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.63997751
#> [2,] -3.74679210
#> [3,] -0.03464761
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.807   41
#>  [2,]    1 1.702   58
#>  [3,]    1 1.947   53
#>  [4,]    1 1.677   10
#>  [5,]    1 1.637   43
#>  [6,]    1 1.927   71
#>  [7,]    1 2.557  128
#>  [8,]    1 2.267  128
#>  [9,]    1 3.737  153
#> [10,]    1 3.832  178
#> [11,]    1 0.102    0
#> [12,]    1 0.322   13
#> [13,]    1 0.952   45
#> [14,]    1 2.007   98
#> [15,]    1 1.922   98
#> [16,]    1 2.327  193
#> [17,]    1 2.332  123
#> [18,]    1 0.627   39
#> [19,]    1 0.000   61
#> [20,]    1 1.657  212
#> [21,]    1 1.267   57
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 4.970553 
```
