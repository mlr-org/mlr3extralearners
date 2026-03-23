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
#> [1]  1  2  8 10
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
#> [1] 8.636008
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    1   0    0    0    0  0    0  0  0
#> [13,]  0   -1   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> [18,]  0    0   0    0    0    0  0    0  1  0
#> [19,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0    0 0.00    0   65  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0   65  0.0    0 0.000
#>  [8,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [11,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [12,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [18,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.8083471
#>  [2,]  1.2819612
#>  [3,] -1.9073529
#>  [4,]  0.0642549
#>  [5,] -1.7831331
#>  [6,]  1.4291250
#>  [7,] -0.6966676
#>  [8,]  2.4286559
#>  [9,]  0.8045063
#> [10,]  1.7467597
#> [11,]  3.7235262
#> [12,]  3.1328077
#> [13,] -2.5347346
#> [14,] -0.1968353
#> [15,] -1.3827352
#> [16,]  0.7461957
#> [17,]  0.4160934
#> [18,]  1.8762294
#> [19,] -1.7214794
#> [20,] -1.8904515
#> [21,] -3.7283788
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.808347
#>  [2,] 20.118039
#>  [3,] 20.007353
#>  [4,] 14.235745
#>  [5,] 24.583133
#>  [6,] 17.770875
#>  [7,] 18.496668
#>  [8,] 13.971344
#>  [9,]  9.595494
#> [10,]  8.653240
#> [11,] 28.676474
#> [12,] 30.767192
#> [13,] 24.034735
#> [14,] 15.696835
#> [15,] 16.582735
#> [16,] 12.553804
#> [17,] 25.583907
#> [18,] 28.523771
#> [19,] 21.421479
#> [20,] 16.890451
#> [21,] 25.128379
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 21.586888
#> [2,] -4.302924
#> [3,]  4.154678
#> [4,]  1.209654
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.362    1 2.42
#>  [2,]    1 1.702    0 4.84
#>  [3,]    1 1.947    0 5.62
#>  [4,]    1 2.057    0 1.24
#>  [5,]    1 1.637    0 8.30
#>  [6,]    1 1.927    0 3.70
#>  [7,]    1 1.927    0 4.30
#>  [8,]    1 2.557    0 2.80
#>  [9,]    1 3.737    0 3.38
#> [10,]    1 3.911    0 3.22
#> [11,]    1 0.687    1 4.87
#> [12,]    1 0.322    1 5.30
#> [13,]    1 0.952    0 5.41
#> [14,]    1 2.007    0 2.27
#> [15,]    1 1.922    0 2.70
#> [16,]    1 2.327    0 0.81
#> [17,]    1 0.627    1 2.10
#> [18,]    1 0.000    1 2.30
#> [19,]    1 1.257    1 0.90
#> [20,]    1 2.057    1 0.00
#> [21,]    1 1.267    1 4.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.61979 
```
