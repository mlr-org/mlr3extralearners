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
#> [1]  1  4  8 10
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
#> [1] 10.00722
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
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  1    0  0  0
#> [17,]  0    0   0    0    0    0 -1    0  0  0
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
#>  [8,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [11,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [12,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.6967305
#>  [2,] -2.0130666
#>  [3,]  2.3754564
#>  [4,]  1.3278367
#>  [5,] -2.2843912
#>  [6,]  0.7294224
#>  [7,] -2.0129729
#>  [8,] -2.1403504
#>  [9,] -1.2720120
#> [10,]  3.5789915
#> [11,]  2.3599067
#> [12,]  0.4162343
#> [13,]  1.8496641
#> [14,] -3.8769600
#> [15,] -0.2724402
#> [16,] -1.7002782
#> [17,]  1.4559038
#> [18,]  4.0917940
#> [19,]  1.3105954
#> [20,] -1.2435947
#> [21,] -0.9830086
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.69673
#>  [2,] 23.01307
#>  [3,] 16.32454
#>  [4,] 23.07216
#>  [5,] 20.08439
#>  [6,] 16.57058
#>  [7,] 17.21297
#>  [8,] 12.54035
#>  [9,] 11.67201
#> [10,] 11.12101
#> [11,] 30.04009
#> [12,] 29.98377
#> [13,] 32.05034
#> [14,] 25.37696
#> [15,] 15.77244
#> [16,] 16.90028
#> [17,] 11.84410
#> [18,] 15.10821
#> [19,] 24.68940
#> [20,] 17.04359
#> [21,] 15.98301
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 17.036135
#> [2,] -3.151445
#> [3,]  4.907957
#> [4,]  1.999919
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.005    1 1.96
#>  [2,]    1 1.260    1 2.52
#>  [3,]    1 1.825    0 2.52
#>  [4,]    1 1.575    0 5.50
#>  [5,]    1 1.825    0 4.40
#>  [6,]    1 2.115    0 3.10
#>  [7,]    1 2.165    0 3.50
#>  [8,]    1 3.635    0 3.48
#>  [9,]    1 3.809    0 3.32
#> [10,]    1 3.730    0 2.92
#> [11,]    1 0.585    1 4.97
#> [12,]    1 0.000    1 4.02
#> [13,]    1 0.220    1 5.40
#> [14,]    1 0.850    0 5.51
#> [15,]    1 1.905    0 2.37
#> [16,]    1 1.820    0 2.80
#> [17,]    1 2.225    0 0.91
#> [18,]    1 2.230    0 2.55
#> [19,]    1 0.525    1 2.20
#> [20,]    1 1.555    1 0.00
#> [21,]    1 1.955    1 0.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 12.14748 
```
