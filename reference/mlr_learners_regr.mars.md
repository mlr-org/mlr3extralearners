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
#> [1]  1  2  4  6 10 12 14
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
#> [1] 5.625685
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    1  0    0  0  0
#>  [7,]  0    0   0    0    0   -1  0    0  0  0
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  1    0  0  0
#> [11,]  0    0   0    0    0    0 -1    0  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    1  0  0
#> [15,]  0    0   0    0    0    0  0   -1  0  0
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> [18,]  0    0   0    1    0    0  0    0  0  0
#> [19,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#> [12,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [16,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [17,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.66768521
#>  [2,] -1.82749116
#>  [3,] -0.46424657
#>  [4,] -0.26716032
#>  [5,]  0.60489038
#>  [6,]  0.09663081
#>  [7,]  0.26384507
#>  [8,] -0.03644894
#>  [9,]  0.85703259
#> [10,]  0.58636662
#> [11,]  0.07755131
#> [12,] -0.65586559
#> [13,] -0.03629088
#> [14,]  0.49522125
#> [15,]  0.37398672
#> [16,]  0.77936405
#> [17,] -1.45623035
#> [18,]  2.34175027
#> [19,]  0.19674112
#> [20,]  0.09838297
#> [21,] -0.36034412
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.66769
#>  [2,] 23.22749
#>  [3,] 19.16425
#>  [4,] 18.36716
#>  [5,] 23.79511
#>  [6,] 22.70337
#>  [7,] 18.93615
#>  [8,] 17.83645
#>  [9,] 15.54297
#> [10,] 16.71363
#> [11,] 10.32245
#> [12,] 11.05587
#> [13,] 14.73629
#> [14,] 31.90478
#> [15,] 33.52601
#> [16,] 14.72064
#> [17,] 16.65623
#> [18,] 16.85825
#> [19,] 30.20326
#> [20,] 15.70162
#> [21,] 15.36034
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>              [,1]
#> [1,]  47.33061991
#> [2,]  -4.52127835
#> [3,]  -6.57332022
#> [4,] -11.45127746
#> [5,]   0.08069706
#> [6,]   5.99848300
#> [7,]  -1.83284331
#> 
#> $x
#>       [,1]  [,2] [,3] [,4] [,5] [,6] [,7]
#>  [1,]    1 1.362    2    1   48 1.14 2.52
#>  [2,]    1 1.702    2    0   48 0.32 4.94
#>  [3,]    1 1.927    4    0  113 0.39 2.52
#>  [4,]    1 1.947    2    0   43 0.00 5.72
#>  [5,]    1 1.677    0    1    0 0.93 5.50
#>  [6,]    1 1.637    0    1   33 1.16 8.40
#>  [7,]    1 1.927    2    1   61 1.16 3.80
#>  [8,]    1 1.927    2    1   61 1.16 4.40
#>  [9,]    1 2.557    4    0  118 0.31 2.90
#> [10,]    1 2.217    4    0  118 0.31 3.10
#> [11,]    1 3.737    4    0  143 0.17 3.48
#> [12,]    1 3.911    4    0  153 0.24 3.32
#> [13,]    1 3.832    4    0  168 0.47 2.92
#> [14,]    1 0.687    0    1    4 1.32 4.97
#> [15,]    1 0.322    0    1    3 1.46 5.40
#> [16,]    1 2.007    4    0   88 0.00 2.37
#> [17,]    1 1.922    4    0   88 0.39 2.80
#> [18,]    1 2.332    4    0  113 0.32 2.55
#> [19,]    1 0.000    0    2   51 1.01 2.40
#> [20,]    1 1.657    4    2  202 1.46 0.00
#> [21,]    1 2.057    4    2  273 0.78 0.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 117.8846 
```
