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
#> [1]  1  6  8 10
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
#> [1] 7.601968
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    1    0  0    0  0  0
#>  [7,]  0    0   0    0   -1    0  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  1    0   0    0    0    0  0    0  0  0
#> [13,] -1    0   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  0    0   0    1    0    0  0    0  0  0
#> [17,]  0    0   0   -1    0    0  0    0  0  0
#> [18,]  0    0   0    0    0    0  0    1  0  0
#> [19,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [8,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [16,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#> [19,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.04786157
#>  [2,]  1.29664384
#>  [3,]  0.89292133
#>  [4,] -0.62833847
#>  [5,] -0.84390830
#>  [6,] -3.43220227
#>  [7,] -1.83807704
#>  [8,]  1.53373837
#>  [9,]  2.43373837
#> [10,]  0.33373837
#> [11,] -1.26762878
#> [12,] -1.56841390
#> [13,]  1.74329213
#> [14,]  2.88322627
#> [15,] -0.17210186
#> [16,]  3.78165603
#> [17,] -1.26745294
#> [18,] -2.60707867
#> [19,] -2.21677373
#> [20,]  0.02864000
#> [21,]  0.86651965
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.95214
#>  [2,] 20.10336
#>  [3,] 17.80708
#>  [4,] 18.72834
#>  [5,] 25.24391
#>  [6,] 26.23220
#>  [7,] 21.03808
#>  [8,] 14.86626
#>  [9,] 14.86626
#> [10,] 14.86626
#> [11,] 11.66763
#> [12,] 11.96841
#> [13,] 12.95671
#> [14,] 29.51677
#> [15,] 30.57210
#> [16,] 30.11834
#> [17,] 22.76745
#> [18,] 17.80708
#> [19,] 29.51677
#> [20,] 19.67136
#> [21,] 14.13348
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 18.728338
#> [2,]  4.296930
#> [3,] -2.597063
#> [4,]  5.116487
#> 
#> $x
#>       [,1] [,2] [,3] [,4]
#>  [1,]    1 1.14    3    1
#>  [2,]    1 0.32    0    0
#>  [3,]    1 0.39    1    0
#>  [4,]    1 0.00    0    0
#>  [5,]    1 0.93    1    1
#>  [6,]    1 1.16    1    1
#>  [7,]    1 1.16    3    1
#>  [8,]    1 0.31    2    0
#>  [9,]    1 0.31    2    0
#> [10,]    1 0.31    2    0
#> [11,]    1 0.17    3    0
#> [12,]    1 0.24    3    0
#> [13,]    1 0.47    3    0
#> [14,]    1 1.32    0    1
#> [15,]    1 2.17    1    1
#> [16,]    1 1.46    0    1
#> [17,]    1 0.94    0    0
#> [18,]    1 0.39    1    0
#> [19,]    1 1.32    0    1
#> [20,]    1 0.86    5    2
#> [21,]    1 0.78    7    2
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 25.11807 
```
