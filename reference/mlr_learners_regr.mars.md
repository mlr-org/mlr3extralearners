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
#> [1] 11.74145
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    1   0    0    0    0  0    0  0  0
#>  [7,]  0   -1   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    1    0  0    0  0  0
#>  [9,]  0    0   0    0   -1    0  0    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  1    0   0    0    0    0  0    0  0  0
#> [13,] -1    0   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [5,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [6,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [11,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [15,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [17,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.5788017
#>  [2,] -0.8478585
#>  [3,] -4.1825598
#>  [4,]  0.5267326
#>  [5,]  2.0155074
#>  [6,] -2.0709886
#>  [7,] -2.0118549
#>  [8,] -0.0887534
#>  [9,] -1.8034112
#> [10,] -2.4283175
#> [11,]  1.5213672
#> [12,] -1.0962287
#> [13,]  3.4760835
#> [14,]  5.0734669
#> [15,]  1.3965970
#> [16,]  5.5272147
#> [17,] -1.4988249
#> [18,]  3.6764173
#> [19,] -1.4985198
#> [20,] -1.6584326
#> [21,] -2.4488351
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.57880
#>  [2,] 21.84786
#>  [3,] 26.98256
#>  [4,] 20.87327
#>  [5,] 16.68449
#>  [6,] 20.17099
#>  [7,] 16.31185
#>  [8,] 24.48875
#>  [9,] 24.60341
#> [10,] 20.22832
#> [11,] 14.87863
#> [12,] 11.49623
#> [13,] 11.22392
#> [14,] 27.32653
#> [15,] 29.00340
#> [16,] 28.37279
#> [17,] 16.69882
#> [18,] 15.52358
#> [19,] 27.49852
#> [20,] 17.45843
#> [21,] 22.14884
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 29.003403
#> [2,] -1.771912
#> [3,] -2.866444
#> 
#> $x
#>       [,1] [,2]  [,3]
#>  [1,]    1    2 1.005
#>  [2,]    1    2 1.260
#>  [3,]    1    0 0.705
#>  [4,]    1    2 1.600
#>  [5,]    1    4 1.825
#>  [6,]    1    2 1.845
#>  [7,]    1    4 1.955
#>  [8,]    1    0 1.575
#>  [9,]    1    0 1.535
#> [10,]    1    2 1.825
#> [11,]    1    4 2.455
#> [12,]    1    4 3.635
#> [13,]    1    4 3.730
#> [14,]    1    0 0.585
#> [15,]    1    0 0.000
#> [16,]    1    0 0.220
#> [17,]    1    4 1.820
#> [18,]    1    4 2.230
#> [19,]    1    0 0.525
#> [20,]    1    4 1.555
#> [21,]    1    2 1.155
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  5.25755 
```
