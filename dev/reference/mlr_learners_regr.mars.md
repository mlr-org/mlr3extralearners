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
#> [1] 8.777439
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
#>  [8,]  0    0   0    1    0    0  0    0  0  0
#>  [9,]  0    0   0   -1    0    0  0    0  0  0
#> [10,]  0    0   0    0    1    0  0    0  0  0
#> [11,]  0    0   0    0   -1    0  0    0  0  0
#> [12,]  0    0   0    0    0    1  0    0  0  0
#> [13,]  0    0   0    0    0   -1  0    0  0  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> [18,]  0    0   0    0    0    0  0    0  1  0
#> [19,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 14.6    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [14,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.1642420
#>  [2,] -0.5654284
#>  [3,]  0.1300123
#>  [4,] -3.3650704
#>  [5,] -0.5682010
#>  [6,] -2.5298635
#>  [7,]  0.6384850
#>  [8,] -2.5797104
#>  [9,]  1.0458236
#> [10,]  5.3234855
#> [11,]  1.2597434
#> [12,]  4.5728757
#> [13,] -2.5277699
#> [14,] -1.7538491
#> [15,]  2.6360528
#> [16,] -0.5887674
#> [17,]  1.2002798
#> [18,]  2.2639342
#> [19,] -0.8122029
#> [20,] -0.6516872
#> [21,] -1.9639004
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.164242
#>  [2,] 21.965428
#>  [3,] 18.569988
#>  [4,] 21.465070
#>  [5,] 19.768201
#>  [6,] 20.329863
#>  [7,] 15.761515
#>  [8,] 17.779710
#>  [9,]  9.354176
#> [10,]  9.376514
#> [11,] 29.140257
#> [12,] 29.327124
#> [13,] 18.027770
#> [14,] 15.053849
#> [15,] 16.563947
#> [16,] 27.888767
#> [17,] 24.799720
#> [18,] 28.136066
#> [19,] 20.512203
#> [20,] 15.651687
#> [21,] 23.363900
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 25.9830263
#> [2,] -5.0225275
#> [3,]  0.9361041
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107 1.86
#>  [2,]    1 1.702 4.84
#>  [3,]    1 1.927 2.42
#>  [4,]    1 1.947 5.62
#>  [5,]    1 1.927 3.70
#>  [6,]    1 1.927 4.30
#>  [7,]    1 2.557 2.80
#>  [8,]    1 2.267 3.40
#>  [9,]    1 3.911 3.22
#> [10,]    1 3.832 2.82
#> [11,]    1 0.102 3.92
#> [12,]    1 0.322 5.30
#> [13,]    1 2.007 2.27
#> [14,]    1 2.327 0.81
#> [15,]    1 2.332 2.45
#> [16,]    1 0.422 4.30
#> [17,]    1 0.627 2.10
#> [18,]    1 0.000 2.30
#> [19,]    1 1.257 0.90
#> [20,]    1 2.057 0.00
#> [21,]    1 1.267 4.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.481543 
```
