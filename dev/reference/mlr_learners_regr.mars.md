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
#> [1] 1 2
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
#> [1] 12.89696
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
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> [18,]  0    0   0    0    0    0  1    0  0  0
#> [19,]  0    0   0    0    0    0 -1    0  0  0
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
#> [12,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [15,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [17,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [18,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [19,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.35666114
#>  [2,] -1.07545717
#>  [3,] -4.27728206
#>  [4,] -0.08421628
#>  [5,]  0.54169570
#>  [6,] -0.40720918
#>  [7,] -2.23531140
#>  [8,]  0.95848320
#>  [9,]  1.90468746
#> [10,]  5.77508898
#> [11,]  6.37271889
#> [12,]  1.19151491
#> [13,]  5.88786513
#> [14,] -3.08622290
#> [15,] -3.34917983
#> [16,] -4.11140605
#> [17,]  2.11815571
#> [18,] -0.35355844
#> [19,]  0.63684345
#> [20,] -3.57728206
#> [21,] -1.47326691
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.356661
#>  [2,] 19.175457
#>  [3,] 18.577282
#>  [4,] 19.284216
#>  [5,] 15.858304
#>  [6,] 17.707209
#>  [7,] 17.435311
#>  [8,]  9.441517
#>  [9,]  8.495313
#> [10,]  8.924911
#> [11,] 26.027281
#> [12,] 29.208485
#> [13,] 28.012135
#> [14,] 24.586223
#> [15,] 18.849180
#> [16,] 19.311406
#> [17,] 17.081844
#> [18,] 26.353558
#> [19,] 29.763157
#> [20,] 18.577282
#> [21,] 22.873267
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 29.763157
#> [2,] -5.437956
#> 
#> $x
#>       [,1]  [,2]
#>  [1,]    1 1.362
#>  [2,]    1 1.947
#>  [3,]    1 2.057
#>  [4,]    1 1.927
#>  [5,]    1 2.557
#>  [6,]    1 2.217
#>  [7,]    1 2.267
#>  [8,]    1 3.737
#>  [9,]    1 3.911
#> [10,]    1 3.832
#> [11,]    1 0.687
#> [12,]    1 0.102
#> [13,]    1 0.322
#> [14,]    1 0.952
#> [15,]    1 2.007
#> [16,]    1 1.922
#> [17,]    1 2.332
#> [18,]    1 0.627
#> [19,]    1 0.000
#> [20,]    1 2.057
#> [21,]    1 1.267
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.713248 
```
