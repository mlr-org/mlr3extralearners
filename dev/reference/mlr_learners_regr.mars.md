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
#> [1] 1 4 8
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
#> [1] 10.58851
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   1    0    0    0  0    0  0  0
#>  [7,]  0    0  -1    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  1    0  0  0
#>  [9,]  0    0   0    0    0    0 -1    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  1    0   0    0    0    0  0    0  0  0
#> [15,] -1    0   0    0    0    0  0    0  0  0
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#>  [3,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [5,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [6,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [7,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [11,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [13,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [14,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.38117176
#>  [2,] -0.09699892
#>  [3,] -0.82120215
#>  [4,]  0.97905044
#>  [5,]  0.50798224
#>  [6,] -1.03644256
#>  [7,]  0.23033786
#>  [8,] -1.70023328
#>  [9,] -0.56108913
#> [10,]  0.41169753
#> [11,]  5.01876124
#> [12,]  6.00248046
#> [13,] -3.03655837
#> [14,] -3.43078601
#> [15,] -4.01881508
#> [16,]  2.32843714
#> [17,] -0.22034439
#> [18,]  0.13224948
#> [19,]  3.25059478
#> [20,]  0.05139794
#> [21,] -1.60934747
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 25.181172
#>  [2,] 21.496999
#>  [3,] 15.121202
#>  [4,] 23.420950
#>  [5,] 22.292018
#>  [6,] 20.236443
#>  [7,] 17.069662
#>  [8,] 16.900233
#>  [9,] 10.961089
#> [10,]  9.988302
#> [11,]  9.681239
#> [12,] 27.897520
#> [13,] 24.536558
#> [14,] 18.930786
#> [15,] 19.218815
#> [16,] 16.871563
#> [17,] 27.520344
#> [18,] 25.867751
#> [19,] 27.149405
#> [20,] 15.748602
#> [21,] 23.009347
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.10359369
#> [2,] -3.38857730
#> [3,] -0.03831742
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.807   31
#>  [2,]    1 1.702   48
#>  [3,]    1 2.057  183
#>  [4,]    1 1.677    0
#>  [5,]    1 1.637   33
#>  [6,]    1 1.927   61
#>  [7,]    1 2.217  118
#>  [8,]    1 2.267  118
#>  [9,]    1 3.737  143
#> [10,]    1 3.911  153
#> [11,]    1 3.832  168
#> [12,]    1 0.322    3
#> [13,]    1 0.952   35
#> [14,]    1 2.007   88
#> [15,]    1 1.922   88
#> [16,]    1 2.332  113
#> [17,]    1 0.422    4
#> [18,]    1 0.627   29
#> [19,]    1 0.000   51
#> [20,]    1 1.657  202
#> [21,]    1 1.267   47
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 6.514048 
```
