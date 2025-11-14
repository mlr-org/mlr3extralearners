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
#> [1] 8.794581
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    1   0    0    0    0  0    0  0  0
#>  [7,]  0   -1   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    0  1  0
#>  [9,]  0    0   0    0    0    0  0    0 -1  0
#> [10,]  0    0   0    0    0    0  1    0  0  0
#> [11,]  0    0   0    0    0    0 -1    0  0  0
#> [12,]  1    0   0    0    0    0  0    0  0  0
#> [13,] -1    0   0    0    0    0  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   0    0    1    0  0    0  0  0
#> [17,]  0    0   0    0   -1    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0    0    0 1.513
#>  [4,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0    0    0 0.000
#>  [6,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#>  [7,]    0    1    0  0.0 0.00    0    0    0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0   66    0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0   66    0    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0    0    0 0.000
#> [14,]    0    0    0 78.7 0.00    0    0    0    0 0.000
#> [15,]    0    0    0 78.7 0.00    0    0    0    0 0.000
#> [16,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#> [17,]    0    0    0  0.0 2.76    0    0    0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.3465320
#>  [2,]  0.7902720
#>  [3,]  1.9215929
#>  [4,] -1.7945734
#>  [5,] -2.0989374
#>  [6,] -1.1740091
#>  [7,] -2.1529534
#>  [8,]  1.4605618
#>  [9,]  1.3681024
#> [10,] -1.0950202
#> [11,] -0.5871145
#> [12,]  3.4822846
#> [13,]  5.6529425
#> [14,] -1.0448873
#> [15,] -1.5930021
#> [16,]  3.6037872
#> [17,] -0.2205921
#> [18,]  1.6475906
#> [19,] -1.7665367
#> [20,] -1.3989374
#> [21,] -3.6540385
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.34653
#>  [2,] 20.60973
#>  [3,] 16.77841
#>  [4,] 19.89457
#>  [5,] 16.39894
#>  [6,] 23.97401
#>  [7,] 19.95295
#>  [8,] 14.93944
#>  [9,] 15.93190
#> [10,] 11.49502
#> [11,] 10.98711
#> [12,] 11.21772
#> [13,] 26.74706
#> [14,] 16.54489
#> [15,] 16.79300
#> [16,] 15.59621
#> [17,] 27.52059
#> [18,] 28.75241
#> [19,] 17.56654
#> [20,] 16.39894
#> [21,] 25.05404
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 28.752409
#> [2,] -2.918998
#> [3,] -1.587273
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107    2
#>  [2,]    1 1.702    2
#>  [3,]    1 1.927    4
#>  [4,]    1 1.947    2
#>  [5,]    1 2.057    4
#>  [6,]    1 1.637    0
#>  [7,]    1 1.927    2
#>  [8,]    1 2.557    4
#>  [9,]    1 2.217    4
#> [10,]    1 3.737    4
#> [11,]    1 3.911    4
#> [12,]    1 3.832    4
#> [13,]    1 0.687    0
#> [14,]    1 2.007    4
#> [15,]    1 1.922    4
#> [16,]    1 2.332    4
#> [17,]    1 0.422    0
#> [18,]    1 0.000    0
#> [19,]    1 1.657    4
#> [20,]    1 2.057    4
#> [21,]    1 1.267    0
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 7.857029 
```
