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
#> [1] 8.145147
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  0    1  0  0
#>  [7,]  0    0   0    0    0    0  0   -1  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    0    0    0  1    0  0  0
#> [13,]  0    0   0    0    0    0 -1    0  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#>  [3,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0    0    0    0  0.0    0 1.835
#>  [5,]    0    0    0  0.0    0    0    0  0.0    0 1.835
#>  [6,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [11,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [13,]    0    0    0  0.0    0    0   62  0.0    0 0.000
#> [14,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.5957291
#>  [2,]  0.1890648
#>  [3,] -2.8830761
#>  [4,] -0.2495057
#>  [5,]  1.0256304
#>  [6,]  1.9808841
#>  [7,] -3.1079413
#>  [8,] -1.9921363
#>  [9,]  1.7949805
#> [10,]  0.5821954
#> [11,] -1.6908211
#> [12,]  2.8385167
#> [13,]  5.0819851
#> [14,]  4.0713255
#> [15,] -1.5612834
#> [16,] -2.8175389
#> [17,] -0.3401730
#> [18,] -0.8470586
#> [19,] -0.5345509
#> [20,]  0.7733793
#> [21,] -1.7181474
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.595729
#>  [2,] 20.810935
#>  [3,] 25.683076
#>  [4,] 21.649506
#>  [5,] 17.674370
#>  [6,] 22.419116
#>  [7,] 25.907941
#>  [8,] 19.792136
#>  [9,] 14.605020
#> [10,] 16.717805
#> [11,] 16.890821
#> [12,]  7.561483
#> [13,] 27.318015
#> [14,] 29.828675
#> [15,] 17.061283
#> [16,] 18.017539
#> [17,] 13.640173
#> [18,] 28.147059
#> [19,] 16.334551
#> [20,] 14.226621
#> [21,] 23.118147
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 23.745728
#> [2,] -5.551443
#> [3,]  1.126472
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.785 1.96
#>  [2,]    1 1.040 2.52
#>  [3,]    1 0.485 4.11
#>  [4,]    1 1.380 4.94
#>  [5,]    1 1.605 2.52
#>  [6,]    1 1.355 5.50
#>  [7,]    1 1.315 8.40
#>  [8,]    1 1.605 4.40
#>  [9,]    1 2.235 2.90
#> [10,]    1 1.895 3.10
#> [11,]    1 1.945 3.50
#> [12,]    1 3.589 3.32
#> [13,]    1 0.365 4.97
#> [14,]    1 0.000 5.40
#> [15,]    1 1.685 2.37
#> [16,]    1 1.600 2.80
#> [17,]    1 2.005 0.91
#> [18,]    1 0.100 4.40
#> [19,]    1 1.335 0.00
#> [20,]    1 1.735 0.10
#> [21,]    1 0.945 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 11.45408 
```
