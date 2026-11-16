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
#> [1] 7.905612
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
#> [10,]  0    0   0    0    0    0  1    0  0  0
#> [11,]  0    0   0    0    0    0 -1    0  0  0
#> [12,]  0    1   0    0    0    0  0    0  0  0
#> [13,]  0   -1   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> [18,]  0    0   0    0    1    0  0    0  0  0
#> [19,]  0    0   0    0   -1    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#> [12,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> [19,]    0    0    0  0.0 2.93    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -0.50880140
#>  [2,] -2.03255022
#>  [3,]  0.48264263
#>  [4,]  0.94434155
#>  [5,] -1.80966201
#>  [6,] -1.31770121
#>  [7,]  0.38406197
#>  [8,] -1.51294408
#>  [9,] -1.61891647
#> [10,]  1.15742166
#> [11,]  2.18478668
#> [12,]  2.01639610
#> [13,]  5.50467652
#> [14,] -3.74653928
#> [15,] -2.81330811
#> [16,]  3.50228538
#> [17,]  1.82389944
#> [18,] -1.25676244
#> [19,] -0.24218648
#> [20,] -0.08251616
#> [21,] -1.05862407
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.508801
#>  [2,] 24.832550
#>  [3,] 20.917357
#>  [4,] 17.755658
#>  [5,] 16.109662
#>  [6,] 24.117701
#>  [7,] 18.815938
#>  [8,] 19.312944
#>  [9,] 16.818916
#> [10,]  9.242578
#> [11,]  8.215213
#> [12,] 28.383604
#> [13,] 28.395323
#> [14,] 25.246539
#> [15,] 18.013308
#> [16,] 15.697715
#> [17,] 24.176101
#> [18,] 17.056762
#> [19,] 19.942186
#> [20,] 15.082516
#> [21,] 22.458624
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 25.0536633
#> [2,] -5.1427015
#> [3,]  0.8283434
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.005 1.96
#>  [2,]    1 0.705 4.11
#>  [3,]    1 1.600 4.94
#>  [4,]    1 1.825 2.52
#>  [5,]    1 1.955 1.34
#>  [6,]    1 1.535 8.40
#>  [7,]    1 1.825 3.80
#>  [8,]    1 1.825 4.40
#>  [9,]    1 2.165 3.50
#> [10,]    1 3.635 3.48
#> [11,]    1 3.809 3.32
#> [12,]    1 0.000 4.02
#> [13,]    1 0.220 5.40
#> [14,]    1 0.850 5.51
#> [15,]    1 1.820 2.80
#> [16,]    1 2.230 2.55
#> [17,]    1 0.525 2.20
#> [18,]    1 1.555 0.00
#> [19,]    1 1.155 1.00
#> [20,]    1 1.955 0.10
#> [21,]    1 1.165 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.13865 
```
