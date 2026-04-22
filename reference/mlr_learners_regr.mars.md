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
#> [1] 8.361123
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
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> [18,]  1    0   0    0    0    0  0    0  0  0
#> [19,] -1    0   0    0    0    0  0    0  0  0
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
#> [16,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [17,]    0    1    0  0.0 0.00    0    0  0.00    0 0.000
#> [18,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> [19,]    0    0    0  0.0 0.00    0    0  0.00    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.26317730
#>  [2,] -3.19938419
#>  [3,] -1.17819783
#>  [4,]  0.86762282
#>  [5,] -4.35882401
#>  [6,] -1.11292869
#>  [7,]  0.86416147
#>  [8,]  1.27775317
#>  [9,]  0.11634530
#> [10,]  0.54862042
#> [11,]  1.68879145
#> [12,]  4.50613306
#> [13,]  0.87229406
#> [14,]  3.47489825
#> [15,] -1.69516996
#> [16,] -3.07224687
#> [17,] -0.07506888
#> [18,]  3.42661166
#> [19,] -1.12753612
#> [20,]  0.63493044
#> [21,] -2.19562825
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.263177
#>  [2,] 25.999384
#>  [3,] 22.578198
#>  [4,] 17.832377
#>  [5,] 22.458824
#>  [6,] 15.412929
#>  [7,] 23.535839
#>  [8,] 15.122247
#>  [9,] 17.183655
#> [10,]  9.851380
#> [11,]  8.711209
#> [12,] 27.893867
#> [13,] 29.527706
#> [14,] 30.425102
#> [15,] 17.195170
#> [16,] 18.272247
#> [17,] 13.375069
#> [18,] 15.773388
#> [19,] 28.427536
#> [20,] 19.065070
#> [21,] 23.595628
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 24.930431
#> [2,] -5.193421
#> [3,]  1.478224
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005 1.05
#>  [2,]    1 0.705 3.20
#>  [3,]    1 1.600 4.03
#>  [4,]    1 1.825 1.61
#>  [5,]    1 1.845 4.81
#>  [6,]    1 1.955 0.43
#>  [7,]    1 1.575 4.59
#>  [8,]    1 2.455 1.99
#>  [9,]    1 2.115 2.19
#> [10,]    1 3.635 2.57
#> [11,]    1 3.809 2.41
#> [12,]    1 0.585 4.06
#> [13,]    1 0.000 3.11
#> [14,]    1 0.220 4.49
#> [15,]    1 1.905 1.46
#> [16,]    1 1.820 1.89
#> [17,]    1 2.225 0.00
#> [18,]    1 2.230 1.64
#> [19,]    1 0.320 3.49
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
#> 11.65877 
```
