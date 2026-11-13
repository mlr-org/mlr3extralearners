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
#> [1] 10.05888
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  0    1  0  0
#>  [5,]  0    0   0    0    0    0  0   -1  0  0
#>  [6,]  0    0   0    0    1    0  0    0  0  0
#>  [7,]  0    0   0    0   -1    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    0  1  0
#>  [9,]  0    0   0    0    0    0  0    0 -1  0
#> [10,]  0    0   0    0    0    0  1    0  0  0
#> [11,]  0    0   0    0    0    0 -1    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7]  [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.00    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.00    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [6,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#>  [7,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> [10,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#> [11,]    0    0    0  0.0 0.00    0   52  0.00    0 0.000
#> [12,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [13,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [14,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [15,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [16,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> [17,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#> [18,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [19,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.3292397
#>  [2,] -1.4462238
#>  [3,]  0.1724103
#>  [4,] -4.5636993
#>  [5,] -1.0217029
#>  [6,]  0.4934341
#>  [7,] -0.5572198
#>  [8,] -0.4229775
#>  [9,]  0.6515957
#> [10,]  5.0892709
#> [11,]  4.4810179
#> [12,]  0.8375441
#> [13,]  3.6019863
#> [14,] -2.4323671
#> [15,] -3.7229704
#> [16,] -1.1132440
#> [17,]  2.6409668
#> [18,] -1.1786206
#> [19,]  1.4496643
#> [20,] -0.1381409
#> [21,] -2.4914845
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.329240
#>  [2,] 22.846224
#>  [3,] 18.527590
#>  [4,] 22.663699
#>  [5,] 20.221703
#>  [6,] 15.906566
#>  [7,] 17.857220
#>  [8,] 10.822977
#>  [9,]  9.748404
#> [10,]  9.610729
#> [11,] 27.918982
#> [12,] 29.562456
#> [13,] 30.298014
#> [14,] 17.932367
#> [15,] 18.922970
#> [16,] 14.413244
#> [17,] 16.559033
#> [18,] 28.478621
#> [19,] 24.550336
#> [20,] 19.838141
#> [21,] 23.891485
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 25.446290
#> [2,] -4.958672
#> [3,]  1.323526
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.260 1.61
#>  [2,]    1 1.600 4.03
#>  [3,]    1 1.825 1.61
#>  [4,]    1 1.845 4.81
#>  [5,]    1 1.825 2.89
#>  [6,]    1 2.455 1.99
#>  [7,]    1 2.115 2.19
#>  [8,]    1 3.635 2.57
#>  [9,]    1 3.809 2.41
#> [10,]    1 3.730 2.01
#> [11,]    1 0.585 4.06
#> [12,]    1 0.000 3.11
#> [13,]    1 0.220 4.49
#> [14,]    1 1.905 1.46
#> [15,]    1 1.820 1.89
#> [16,]    1 2.225 0.00
#> [17,]    1 2.230 1.64
#> [18,]    1 0.320 3.49
#> [19,]    1 0.525 1.29
#> [20,]    1 1.155 0.09
#> [21,]    1 1.165 3.19
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 9.752661 
```
