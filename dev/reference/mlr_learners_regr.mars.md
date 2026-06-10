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
#> [1] 1 2 6 8
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
#> [1] 10.94114
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
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  0    0   0    0    0    0  0    0  1  0
#> [11,]  0    0   0    0    0    0  0    0 -1  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7]  [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.00    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.00    0 1.513
#>  [4,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.00    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0 15.41    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> [12,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [13,]    0    0    0 71.1 0.00    0    0  0.00    0 0.000
#> [14,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [15,]    0    0    0  0.0 0.00    3    0  0.00    0 0.000
#> [16,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#> [17,]    0    0    0  0.0 2.76    0    0  0.00    0 0.000
#> [18,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [19,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.90971577
#>  [2,] -2.71832536
#>  [3,] -4.61346724
#>  [4,]  2.19042300
#>  [5,] -0.40141876
#>  [6,] -1.53401460
#>  [7,]  1.19634892
#>  [8,] -0.90399831
#>  [9,]  1.07445546
#> [10,] -1.23194999
#> [11,] -0.46856987
#> [12,]  4.03652916
#> [13,]  3.58503217
#> [14,]  0.75527616
#> [15,]  3.37353841
#> [16,] -1.73070587
#> [17,] -0.56937715
#> [18,] -1.65297527
#> [19,] -0.00474673
#> [20,]  0.21946709
#> [21,]  2.30819455
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 23.90972
#>  [2,] 23.71833
#>  [3,] 27.41347
#>  [4,] 16.50958
#>  [5,] 14.70142
#>  [6,] 24.33401
#>  [7,] 18.00365
#>  [8,] 18.70400
#>  [9,] 16.22554
#> [10,] 11.63195
#> [11,] 10.86857
#> [12,] 10.66347
#> [13,] 28.81497
#> [14,] 29.64472
#> [15,] 30.52646
#> [16,] 23.23071
#> [17,] 16.06938
#> [18,] 16.85298
#> [19,] 13.30475
#> [20,] 25.78053
#> [21,] 28.09181
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 21.016222
#> [2,] -3.313913
#> [3,]  5.336388
#> [4,]  1.167245
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.107    1 1.05
#>  [2,]    1 1.362    1 1.61
#>  [3,]    1 0.807    1 3.20
#>  [4,]    1 1.927    0 1.61
#>  [5,]    1 2.057    0 0.43
#>  [6,]    1 1.637    0 7.49
#>  [7,]    1 1.927    0 2.89
#>  [8,]    1 1.927    0 3.49
#>  [9,]    1 2.217    0 2.19
#> [10,]    1 3.737    0 2.57
#> [11,]    1 3.911    0 2.41
#> [12,]    1 3.832    0 2.01
#> [13,]    1 0.687    1 4.06
#> [14,]    1 0.102    1 3.11
#> [15,]    1 0.322    1 4.49
#> [16,]    1 0.952    0 4.60
#> [17,]    1 2.007    0 1.46
#> [18,]    1 1.922    0 1.89
#> [19,]    1 2.327    0 0.00
#> [20,]    1 0.627    1 1.29
#> [21,]    1 0.000    1 1.49
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.44947 
```
