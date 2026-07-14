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
#> [1] 6.683404
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  0    1  0  0
#>  [5,]  0    0   0    0    0    0  0   -1  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  1    0  0  0
#>  [9,]  0    0   0    0    0    0 -1    0  0  0
#> [10,]  0    0   1    0    0    0  0    0  0  0
#> [11,]  0    0  -1    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [10,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [14,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> [18,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.73692068
#>  [2,]  0.18312391
#>  [3,] -2.39426552
#>  [4,]  0.39499955
#>  [5,]  2.78488217
#>  [6,] -1.48574411
#>  [7,]  0.38849612
#>  [8,] -1.51882079
#>  [9,]  1.79233592
#> [10,]  0.66517646
#> [11,]  1.75046932
#> [12,]  1.42910276
#> [13,]  4.96454400
#> [14,] -4.08559965
#> [15,] -2.79330003
#> [16,] -0.88198178
#> [17,] -0.24344140
#> [18,]  1.43701774
#> [19,] -0.40548400
#> [20,]  0.02738271
#> [21,] -1.27197271
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.736921
#>  [2,] 20.816876
#>  [3,] 25.194266
#>  [4,] 21.005000
#>  [5,] 21.615118
#>  [6,] 24.285744
#>  [7,] 18.811504
#>  [8,] 19.318821
#>  [9,] 14.607664
#> [10,] 16.634824
#> [11,]  8.649531
#> [12,] 28.970897
#> [13,] 28.935456
#> [14,] 25.585600
#> [15,] 17.993300
#> [16,] 14.181982
#> [17,] 27.543441
#> [18,] 24.562982
#> [19,] 20.105484
#> [20,] 14.972617
#> [21,] 22.671973
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 25.6564268
#> [2,] -5.4648642
#> [3,]  0.8455282
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005 1.86
#>  [2,]    1 1.260 2.42
#>  [3,]    1 0.705 4.01
#>  [4,]    1 1.600 4.84
#>  [5,]    1 1.575 5.40
#>  [6,]    1 1.535 8.30
#>  [7,]    1 1.825 3.70
#>  [8,]    1 1.825 4.30
#>  [9,]    1 2.455 2.80
#> [10,]    1 2.115 3.00
#> [11,]    1 3.635 3.38
#> [12,]    1 0.000 3.92
#> [13,]    1 0.220 5.30
#> [14,]    1 0.850 5.41
#> [15,]    1 1.820 2.70
#> [16,]    1 2.225 0.81
#> [17,]    1 0.320 4.30
#> [18,]    1 0.525 2.10
#> [19,]    1 1.155 0.90
#> [20,]    1 1.955 0.00
#> [21,]    1 1.165 4.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 11.68205 
```
