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

- [`LearnerRegrMars$new()`](#method-LearnerRegrMars-initialize)

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

### `LearnerRegrMars$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrMars$new()

------------------------------------------------------------------------

### `LearnerRegrMars$clone()`

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
#> [1] 7.435276
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
#>  [8,]  0    0   0    0    0    0  1    0  0  0
#>  [9,]  0    0   0    0    0    0 -1    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  0  1
#> [11,]  0    0   0    0    0    0  0    0  0 -1
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    0    0  0    1  0  0
#> [15,]  0    0   0    0    0    0  0   -1  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> [18,]  0    0   1    0    0    0  0    0  0  0
#> [19,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [4,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#> [11,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.68209436
#>  [2,] -2.24468695
#>  [3,] -0.29024441
#>  [4,] -0.45002709
#>  [5,]  0.53740882
#>  [6,]  0.26406952
#>  [7,] -2.66528111
#>  [8,]  0.26561577
#>  [9,]  0.17376581
#> [10,] -1.19863528
#> [11,] -0.25366301
#> [12,]  4.47194543
#> [13,]  1.50543129
#> [14,]  6.21580856
#> [15,] -2.94674073
#> [16,] -0.66238154
#> [17,] -0.04873302
#> [18,]  0.34274032
#> [19,]  0.71410969
#> [20,] -0.44544095
#> [21,] -1.60296676
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.68209
#>  [2,] 25.04469
#>  [3,] 21.69024
#>  [4,] 14.75003
#>  [5,] 23.86259
#>  [6,] 22.53593
#>  [7,] 20.46528
#>  [8,] 16.13438
#>  [9,] 17.12623
#> [10,] 11.59864
#> [11,] 10.65366
#> [12,] 10.22805
#> [13,] 28.89457
#> [14,] 27.68419
#> [15,] 24.44674
#> [16,] 13.96238
#> [17,] 27.34873
#> [18,] 25.65726
#> [19,] 15.08589
#> [20,] 20.14544
#> [21,] 23.00297
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>             [,1]
#> [1,] 28.89456871
#> [2,] -0.04373785
#> [3,] -2.91720576
#> 
#> $x
#>       [,1] [,2]  [,3]
#>  [1,]    1   58 1.260
#>  [2,]    1   41 0.705
#>  [3,]    1   58 1.600
#>  [4,]    1  193 1.955
#>  [5,]    1   10 1.575
#>  [6,]    1   43 1.535
#>  [7,]    1   71 1.825
#>  [8,]    1  128 2.455
#>  [9,]    1  128 2.115
#> [10,]    1  153 3.635
#> [11,]    1  163 3.809
#> [12,]    1  178 3.730
#> [13,]    1    0 0.000
#> [14,]    1   13 0.220
#> [15,]    1   45 0.850
#> [16,]    1  193 2.225
#> [17,]    1   14 0.320
#> [18,]    1   39 0.525
#> [19,]    1  212 1.555
#> [20,]    1  123 1.155
#> [21,]    1   57 1.165
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 11.23317 
```
