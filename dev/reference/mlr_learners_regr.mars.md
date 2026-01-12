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
#> [1]  1  8 10
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
#> [1] 9.277979
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    1   0    0    0    0  0    0  0  0
#>  [5,]  0   -1   0    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    1    0  0    0  0  0
#>  [7,]  0    0   0    0   -1    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    0  0  1
#>  [9,]  0    0   0    0    0    0  0    0  0 -1
#> [10,]  0    0   1    0    0    0  0    0  0  0
#> [11,]  0    0  -1    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  1    0  0  0
#> [13,]  0    0   0    0    0    0 -1    0  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#>  [2,]    0    0    0 75.7 0.00    0    0    0    0 0.000
#>  [3,]    0    0    0 75.7 0.00    0    0    0    0 0.000
#>  [4,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#>  [5,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#>  [6,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#>  [7,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#>  [9,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#> [10,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#> [11,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0   52    0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0   52    0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [16,]    0    0    0  0.0 0.00    3    0    0    0 0.000
#> [17,]    0    0    0  0.0 0.00    3    0    0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.16142305
#>  [2,] -0.45665231
#>  [3,] -3.48447887
#>  [4,]  0.88304200
#>  [5,] -1.73982534
#>  [6,] -1.94189281
#>  [7,]  0.52003305
#>  [8,] -1.19051922
#>  [9,]  1.50031628
#> [10,] -1.19869739
#> [11,]  3.36386426
#> [12,]  5.78386432
#> [13,]  2.16703734
#> [14,] -1.41500673
#> [15,]  3.71815406
#> [16,] -0.04854448
#> [17,] -0.78196409
#> [18,]  1.88512905
#> [19,] -1.54741553
#> [20,] -1.24189281
#> [21,] -3.61312774
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.16142
#>  [2,] 21.45665
#>  [3,] 26.28448
#>  [4,] 20.51696
#>  [5,] 19.83983
#>  [6,] 16.24189
#>  [7,] 23.87997
#>  [8,] 23.99052
#>  [9,] 15.79968
#> [10,] 11.59870
#> [11,] 11.33614
#> [12,] 26.61614
#> [13,] 28.23296
#> [14,] 16.61501
#> [15,] 15.48185
#> [16,] 27.34854
#> [17,] 26.78196
#> [18,] 28.51487
#> [19,] 17.34742
#> [20,] 16.24189
#> [21,] 25.01313
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 28.514871
#> [2,] -2.763807
#> [3,] -1.646957
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107    2
#>  [2,]    1 1.362    2
#>  [3,]    1 0.807    0
#>  [4,]    1 1.702    2
#>  [5,]    1 1.947    2
#>  [6,]    1 2.057    4
#>  [7,]    1 1.677    0
#>  [8,]    1 1.637    0
#>  [9,]    1 2.217    4
#> [10,]    1 3.737    4
#> [11,]    1 3.832    4
#> [12,]    1 0.687    0
#> [13,]    1 0.102    0
#> [14,]    1 1.922    4
#> [15,]    1 2.332    4
#> [16,]    1 0.422    0
#> [17,]    1 0.627    0
#> [18,]    1 0.000    0
#> [19,]    1 1.657    4
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
#> 7.341472 
```
