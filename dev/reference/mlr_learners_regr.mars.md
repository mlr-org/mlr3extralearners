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
#> [1] 8.720419
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    1   0    0    0    0  0    0  0  0
#>  [7,]  0   -1   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    1    0  0    0  0  0
#>  [9,]  0    0   0    0   -1    0  0    0  0  0
#> [10,]  0    0   1    0    0    0  0    0  0  0
#> [11,]  0    0  -1    0    0    0  0    0  0  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [6,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [10,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.85199097
#>  [2,] -2.73156231
#>  [3,] -0.32020218
#>  [4,] -2.92026557
#>  [5,]  0.88278257
#>  [6,]  0.31333699
#>  [7,] -1.25163073
#>  [8,] -2.65163073
#>  [9,]  0.23314751
#> [10,] -0.08501752
#> [11,] -0.64980939
#> [12,]  4.87985415
#> [13,]  0.88409468
#> [14,]  5.63475194
#> [15,] -1.37874115
#> [16,]  2.04915011
#> [17,] -0.57139248
#> [18,] -0.24761672
#> [19,]  2.68852230
#> [20,] -0.60337944
#> [21,] -1.30240107
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 23.851991
#>  [2,] 25.531562
#>  [3,] 21.720202
#>  [4,] 21.020266
#>  [5,] 23.517217
#>  [6,] 22.486663
#>  [7,] 20.451631
#>  [8,] 20.451631
#>  [9,] 16.166852
#> [10,] 17.385018
#> [11,] 11.049809
#> [12,]  9.820146
#> [13,] 29.515905
#> [14,] 28.265248
#> [15,] 14.678741
#> [16,] 17.150850
#> [17,] 27.871392
#> [18,] 26.247617
#> [19,] 27.711478
#> [20,] 16.403379
#> [21,] 21.002401
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.88135483
#> [2,] -3.58283830
#> [3,] -0.03557176
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107   58
#>  [2,]    1 0.807   41
#>  [3,]    1 1.702   58
#>  [4,]    1 1.947   53
#>  [5,]    1 1.677   10
#>  [6,]    1 1.637   43
#>  [7,]    1 1.927   71
#>  [8,]    1 1.927   71
#>  [9,]    1 2.557  128
#> [10,]    1 2.217  128
#> [11,]    1 3.737  153
#> [12,]    1 3.832  178
#> [13,]    1 0.102    0
#> [14,]    1 0.322   13
#> [15,]    1 2.327  193
#> [16,]    1 2.332  123
#> [17,]    1 0.422   14
#> [18,]    1 0.627   39
#> [19,]    1 0.000   61
#> [20,]    1 1.657  212
#> [21,]    1 1.257  123
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.505631 
```
