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
#> [1] 10.42571
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    1    0  0    0  0  0
#> [11,]  0    0   0    0   -1    0  0    0  0  0
#> [12,]  0    0   1    0    0    0  0    0  0  0
#> [13,]  0    0  -1    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    1  0  0
#> [15,]  0    0   0    0    0    0  0   -1  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#>  [5,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#>  [6,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 2.93    0    0  0.0    0 0.000
#> [11,]    0    0    0    0 2.93    0    0  0.0    0 0.000
#> [12,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [15,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [16,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.73364659
#>  [2,] -2.62098863
#>  [3,] -0.53303734
#>  [4,]  0.42819879
#>  [5,]  0.19044517
#>  [6,] -0.01751181
#>  [7,] -1.45606798
#>  [8,] -2.85606798
#>  [9,] -1.01877907
#> [10,] -0.03370151
#> [11,]  4.71499526
#> [12,]  5.37787861
#> [13,]  0.96561372
#> [14,]  5.72745190
#> [15,] -3.29877956
#> [16,] -0.55171770
#> [17,] -0.52407341
#> [18,] -0.05741333
#> [19,]  0.79187989
#> [20,] -0.59937801
#> [21,] -1.89530043
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 23.733647
#>  [2,] 25.420989
#>  [3,] 21.933037
#>  [4,] 18.271801
#>  [5,] 24.209555
#>  [6,] 22.817512
#>  [7,] 20.656068
#>  [8,] 20.656068
#>  [9,] 11.418779
#> [10,] 10.433702
#> [11,]  9.985005
#> [12,] 27.022121
#> [13,] 29.434386
#> [14,] 28.172548
#> [15,] 24.798780
#> [16,] 13.851718
#> [17,] 27.824073
#> [18,] 26.057413
#> [19,] 15.008120
#> [20,] 20.299378
#> [21,] 23.295300
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.43438628
#> [2,] -3.02623404
#> [3,] -0.04585128
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005   58
#>  [2,]    1 0.705   41
#>  [3,]    1 1.600   58
#>  [4,]    1 1.825  123
#>  [5,]    1 1.575   10
#>  [6,]    1 1.535   43
#>  [7,]    1 1.825   71
#>  [8,]    1 1.825   71
#>  [9,]    1 3.635  153
#> [10,]    1 3.809  163
#> [11,]    1 3.730  178
#> [12,]    1 0.585   14
#> [13,]    1 0.000    0
#> [14,]    1 0.220   13
#> [15,]    1 0.850   45
#> [16,]    1 2.225  193
#> [17,]    1 0.320   14
#> [18,]    1 0.525   39
#> [19,]    1 1.555  212
#> [20,]    1 1.155  123
#> [21,]    1 1.165   57
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  8.04467 
```
