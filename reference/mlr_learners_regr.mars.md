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
#> [1] 9.989293
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    0   0    0    0    1  0    0  0  0
#>  [7,]  0    0   0    0    0   -1  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    1    0    0  0    0  0  0
#> [15,]  0    0   0   -1    0    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0 0.00    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#>  [5,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#>  [6,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#>  [8,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [14,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -3.1022409
#>  [2,] -2.0336376
#>  [3,] -0.2088332
#>  [4,] -2.6875298
#>  [5,] -0.2755346
#>  [6,]  0.7146204
#>  [7,]  0.3025960
#>  [8,] -0.9319238
#>  [9,]  1.2496453
#> [10,] -1.1656290
#> [11,]  1.2215241
#> [12,]  2.3614765
#> [13,]  4.7302404
#> [14,]  4.6595922
#> [15,] -3.7858082
#> [16,] -3.8437498
#> [17,] -0.1440723
#> [18,]  2.9013661
#> [19,]  1.7820000
#> [20,]  0.3287217
#> [21,] -2.0728235
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 24.102241
#>  [2,] 23.033638
#>  [3,] 21.608833
#>  [4,] 20.787530
#>  [5,] 14.575535
#>  [6,] 23.685380
#>  [7,] 22.497404
#>  [8,] 20.131924
#>  [9,] 15.150355
#> [10,] 16.365629
#> [11,]  9.178476
#> [12,]  8.038524
#> [13,] 27.669760
#> [14,] 29.240408
#> [15,] 25.285808
#> [16,] 19.043750
#> [17,] 13.444072
#> [18,] 16.298634
#> [19,] 28.618000
#> [20,] 15.471278
#> [21,] 23.472823
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>             [,1]
#> [1,] 30.71301772
#> [2,] -4.19060113
#> [3,] -0.04107878
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107   48
#>  [2,]    1 1.362   48
#>  [3,]    1 1.702   48
#>  [4,]    1 1.947   43
#>  [5,]    1 2.057  183
#>  [6,]    1 1.677    0
#>  [7,]    1 1.637   33
#>  [8,]    1 1.927   61
#>  [9,]    1 2.557  118
#> [10,]    1 2.267  118
#> [11,]    1 3.737  143
#> [12,]    1 3.911  153
#> [13,]    1 0.687    4
#> [14,]    1 0.322    3
#> [15,]    1 0.952   35
#> [16,]    1 1.922   88
#> [17,]    1 2.327  183
#> [18,]    1 2.332  113
#> [19,]    1 0.000   51
#> [20,]    1 1.657  202
#> [21,]    1 1.267   47
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 8.790616 
```
