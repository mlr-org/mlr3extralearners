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
#> [1]  1  8 10 12
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
#> [1] 9.919808
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    1    0  0    0  0  0
#> [11,]  0    0   0    0   -1    0  0    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    1  0  0
#> [15,]  0    0   0    0    0    0  0   -1  0  0
#> [16,]  0    0   0    0    0    0  1    0  0  0
#> [17,]  0    0   0    0    0    0 -1    0  0  0
#> [18,]  0    0   0    0    0    0  0    0  1  0
#> [19,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [11,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    0    0 15.5    0 0.000
#> [15,]    0    0    0    0 0.00    0    0 15.5    0 0.000
#> [16,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [18,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.84730801
#>  [2,]  0.84730801
#>  [3,]  1.25419536
#>  [4,] -0.52154711
#>  [5,] -2.99450292
#>  [6,] -1.03495014
#>  [7,] -2.43495014
#>  [8,]  2.06300435
#>  [9,]  0.86300435
#> [10,] -0.58141222
#> [11,] -0.86931574
#> [12,]  2.48471554
#> [13,]  3.16765550
#> [14,]  0.45146054
#> [15,]  4.09184845
#> [16,] -0.98768014
#> [17,] -0.34177073
#> [18,] -2.24580464
#> [19,]  0.04067367
#> [20,]  1.07671535
#> [21,] -5.17595534
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.15269
#>  [2,] 20.15269
#>  [3,] 17.44580
#>  [4,] 18.62155
#>  [5,] 25.79450
#>  [6,] 20.23495
#>  [7,] 20.23495
#>  [8,] 14.33700
#>  [9,] 14.33700
#> [10,] 10.98141
#> [11,] 11.26932
#> [12,] 12.21528
#> [13,] 29.23234
#> [14,] 29.94854
#> [15,] 29.80815
#> [16,] 22.48768
#> [17,] 15.84177
#> [18,] 17.44580
#> [19,] 30.35933
#> [20,] 18.62328
#> [21,] 26.57596
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 18.621547
#> [2,] -2.779776
#> [3,]  4.112907
#> [4,]  5.181760
#> 
#> $x
#>       [,1] [,2] [,3] [,4]
#>  [1,]    1    3 1.14    1
#>  [2,]    1    3 1.14    1
#>  [3,]    1    1 0.39    0
#>  [4,]    1    0 0.00    0
#>  [5,]    1    1 1.16    1
#>  [6,]    1    3 1.16    1
#>  [7,]    1    3 1.16    1
#>  [8,]    1    2 0.31    0
#>  [9,]    1    2 0.31    0
#> [10,]    1    3 0.17    0
#> [11,]    1    3 0.24    0
#> [12,]    1    3 0.47    0
#> [13,]    1    0 1.32    1
#> [14,]    1    1 2.17    1
#> [15,]    1    0 1.46    1
#> [16,]    1    0 0.94    0
#> [17,]    1    1 0.00    0
#> [18,]    1    1 0.39    0
#> [19,]    1    1 1.01    2
#> [20,]    1    5 0.86    2
#> [21,]    1    1 1.35    1
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 20.69722 
```
