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
  <https://mlr3book.mlr-org.com/basics.html#learners>

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
#> • Other settings: use_weights = 'error'

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
#> [1] 6.788652
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
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  0    1   0    0    0    0  0    0  0  0
#> [11,]  0   -1   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    1    0    0  0    0  0  0
#> [13,]  0    0   0   -1    0    0  0    0  0  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> [18,]  0    0   1    0    0    0  0    0  0  0
#> [19,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   52  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [10,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0 75.7 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -2.36036443
#>  [2,]  0.34017496
#>  [3,]  0.58961536
#>  [4,] -1.08121738
#>  [5,]  1.72413083
#>  [6,]  1.00746909
#>  [7,] -0.55326680
#>  [8,] -1.95326680
#>  [9,]  0.50222006
#> [10,] -1.39870490
#> [11,]  0.44394861
#> [12,]  1.45266864
#> [13,]  5.90882050
#> [14,]  1.13732805
#> [15,] -2.95667125
#> [16,] -3.08171176
#> [17,] -0.24627724
#> [18,]  0.05977764
#> [19,] -0.57353387
#> [20,]  2.46223251
#> [21,] -1.42337181
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 25.160364
#>  [2,] 21.059825
#>  [3,] 18.110385
#>  [4,] 15.381217
#>  [5,] 22.675869
#>  [6,] 21.792531
#>  [7,] 19.753267
#>  [8,] 19.753267
#>  [9,] 16.797780
#> [10,] 16.598705
#> [11,]  9.956051
#> [12,]  8.947331
#> [13,] 26.491180
#> [14,] 29.262672
#> [15,] 24.456671
#> [16,] 18.581712
#> [17,] 27.546277
#> [18,] 25.940222
#> [19,] 16.373534
#> [20,] 12.537767
#> [21,] 22.823372
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>             [,1]
#> [1,] 29.26267195
#> [2,] -3.98150089
#> [3,] -0.03159389
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.705   41
#>  [2,]    1 1.600   58
#>  [3,]    1 1.825  123
#>  [4,]    1 1.955  193
#>  [5,]    1 1.575   10
#>  [6,]    1 1.535   43
#>  [7,]    1 1.825   71
#>  [8,]    1 1.825   71
#>  [9,]    1 2.115  128
#> [10,]    1 2.165  128
#> [11,]    1 3.635  153
#> [12,]    1 3.809  163
#> [13,]    1 0.585   14
#> [14,]    1 0.000    0
#> [15,]    1 0.850   45
#> [16,]    1 1.905   98
#> [17,]    1 0.320   14
#> [18,]    1 0.525   39
#> [19,]    1 1.555  212
#> [20,]    1 1.955  283
#> [21,]    1 1.165   57
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.55939 
```
