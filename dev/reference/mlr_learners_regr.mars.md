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
#> [1]  1  2  4  6  8 10 12 14 16
#> 
#> $selected.terms
#> [1]  1 10 12
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
#> [1] 8.627298
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    1   0    0    0    0  0    0  0  0
#>  [5,]  0   -1   0    0    0    0  0    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    1  0    0  0  0
#>  [9,]  0    0   0    0    0   -1  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  0  1
#> [11,]  0    0   0    0    0    0  0    0  0 -1
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  0    0   0    0    0    0  0    0  1  0
#> [17,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#>  [3,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#>  [4,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#>  [5,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [10,]    0    0    0  0.0    0    0    0  0.0    0 1.935
#> [11,]    0    0    0  0.0    0    0    0  0.0    0 1.935
#> [12,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [13,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [14,]    0    0    0  0.0    0    0   66  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0   66  0.0    0 0.000
#> [16,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.08287715
#>  [2,] -1.67119206
#>  [3,]  0.66259237
#>  [4,] -1.93361953
#>  [5,] -2.70978763
#>  [6,] -0.19656890
#>  [7,]  0.62840772
#>  [8,] -0.12454466
#>  [9,] -2.43743205
#> [10,] -0.98779033
#> [11,] -0.08065541
#> [12,]  4.30935869
#> [13,]  6.50718025
#> [14,] -3.15590921
#> [15,] -1.33303357
#> [16,]  2.84672611
#> [17,]  0.88962408
#> [18,] -0.70555161
#> [19,]  0.43779962
#> [20,]  0.08306795
#> [21,] -1.11154898
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.91712
#>  [2,] 24.47119
#>  [3,] 18.03741
#>  [4,] 16.23362
#>  [5,] 25.50979
#>  [6,] 19.39657
#>  [7,] 15.77159
#>  [8,] 17.42454
#>  [9,] 17.63743
#> [10,] 11.38779
#> [11,] 10.48066
#> [12,] 10.39064
#> [13,] 25.89282
#> [14,] 18.35591
#> [15,] 14.63303
#> [16,] 16.35327
#> [17,] 26.41038
#> [18,] 16.50555
#> [19,] 19.26220
#> [20,] 14.91693
#> [21,] 22.51155
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 21.738259
#> [2,] -4.237010
#> [3,]  1.061845
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.685 1.96
#>  [2,]    1 0.385 4.11
#>  [3,]    1 1.505 2.52
#>  [4,]    1 1.635 1.34
#>  [5,]    1 1.215 8.40
#>  [6,]    1 1.505 3.80
#>  [7,]    1 2.135 2.90
#>  [8,]    1 1.795 3.10
#>  [9,]    1 1.845 3.50
#> [10,]    1 3.315 3.48
#> [11,]    1 3.489 3.32
#> [12,]    1 3.410 2.92
#> [13,]    1 0.265 4.97
#> [14,]    1 1.500 2.80
#> [15,]    1 1.905 0.91
#> [16,]    1 1.910 2.55
#> [17,]    1 0.000 4.40
#> [18,]    1 1.235 0.00
#> [19,]    1 0.835 1.00
#> [20,]    1 1.635 0.10
#> [21,]    1 0.845 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>  13.2006 
```
