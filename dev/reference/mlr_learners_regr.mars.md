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
#> [1] 1 4 6
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
#> [1] 8.307579
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  0    1  0  0
#>  [7,]  0    0   0    0    0    0  0   -1  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
#> [16,]  0    0   0    0    0    0  1    0  0  0
#> [17,]  0    0   0    0    0    0 -1    0  0  0
#> [18,]  0    1   0    0    0    0  0    0  0  0
#> [19,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [3,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [5,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [6,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [10,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [11,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [13,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [14,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [18,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [19,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.5078629
#>  [2,] -2.2372756
#>  [3,] -1.8320278
#>  [4,] -0.2524678
#>  [5,] -1.4933024
#>  [6,]  0.3103873
#>  [7,] -3.3036646
#>  [8,] -0.6645252
#>  [9,]  0.4663287
#> [10,]  5.0033994
#> [11,]  3.6004671
#> [12,]  2.5784282
#> [13,] -2.5195023
#> [14,] -0.7886972
#> [15,]  2.5323646
#> [16,] -1.9297821
#> [17,]  1.2965698
#> [18,]  2.2195175
#> [19,] -0.2198743
#> [20,]  0.8369512
#> [21,] -3.0954315
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.507863
#>  [2,] 23.637276
#>  [3,] 16.132028
#>  [4,] 24.652468
#>  [5,] 20.693302
#>  [6,] 16.089613
#>  [7,] 18.503665
#>  [8,] 11.064525
#>  [9,]  9.933671
#> [10,]  9.696601
#> [11,] 28.799533
#> [12,] 31.321572
#> [13,] 18.019502
#> [14,] 14.088697
#> [15,] 16.667635
#> [16,] 29.229782
#> [17,] 24.703430
#> [18,] 28.180482
#> [19,] 16.019874
#> [20,] 14.163049
#> [21,] 24.495432
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 24.369556
#> [2,] -5.039035
#> [3,]  1.587886
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.362 2.52
#>  [2,]    1 1.702 4.94
#>  [3,]    1 2.057 1.34
#>  [4,]    1 1.677 5.50
#>  [5,]    1 1.927 3.80
#>  [6,]    1 2.557 2.90
#>  [7,]    1 2.267 3.50
#>  [8,]    1 3.737 3.48
#>  [9,]    1 3.911 3.32
#> [10,]    1 3.832 2.92
#> [11,]    1 0.687 4.97
#> [12,]    1 0.322 5.40
#> [13,]    1 2.007 2.37
#> [14,]    1 2.327 0.91
#> [15,]    1 2.332 2.55
#> [16,]    1 0.422 4.40
#> [17,]    1 0.627 2.20
#> [18,]    1 0.000 2.40
#> [19,]    1 1.657 0.00
#> [20,]    1 2.057 0.10
#> [21,]    1 1.267 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 15.41646 
```
