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
#> [1] 1 4 6 8
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
#> [1] 9.849376
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
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  0    0   0    0    0    0  0    1  0  0
#> [17,]  0    0   0    0    0    0  0   -1  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [5,]    0    0    0    0 0.00    0    0  0.0    0 1.513
#>  [6,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [7,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [11,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [15,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [17,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.6808716
#>  [2,] -1.1010727
#>  [3,]  1.1192019
#>  [4,] -1.6237363
#>  [5,] -0.8392710
#>  [6,]  2.3651452
#>  [7,]  0.9528043
#>  [8,]  1.0797391
#>  [9,] -0.9194193
#> [10,] -0.5237918
#> [11,]  3.5965843
#> [12,]  4.4298094
#> [13,] -2.6425277
#> [14,] -3.1357940
#> [15,] -1.2253663
#> [16,]  1.7964317
#> [17,] -0.6618285
#> [18,]  2.3125482
#> [19,]  0.2497572
#> [20,]  0.2583049
#> [21,] -3.8066469
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.68087
#>  [2,] 22.10107
#>  [3,] 20.28080
#>  [4,] 19.72374
#>  [5,] 15.13927
#>  [6,] 15.43485
#>  [7,] 15.44720
#>  [8,] 16.22026
#>  [9,] 11.31942
#> [10,] 10.92379
#> [11,] 11.10342
#> [12,] 27.97019
#> [13,] 18.14253
#> [14,] 18.33579
#> [15,] 14.52537
#> [16,] 17.40357
#> [17,] 26.66183
#> [18,] 28.08745
#> [19,] 19.45024
#> [20,] 14.74170
#> [21,] 25.20665
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 24.150672
#> [2,] -2.273721
#> [3,] -1.444785
#> [4,]  5.381565
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.107    3    1
#>  [2,]    1 1.362    3    1
#>  [3,]    1 1.702    0    0
#>  [4,]    1 1.947    0    0
#>  [5,]    1 2.057    3    0
#>  [6,]    1 1.927    3    0
#>  [7,]    1 2.557    2    0
#>  [8,]    1 2.217    2    0
#>  [9,]    1 3.737    3    0
#> [10,]    1 3.911    3    0
#> [11,]    1 3.832    3    0
#> [12,]    1 0.687    0    1
#> [13,]    1 2.007    1    0
#> [14,]    1 1.922    1    0
#> [15,]    1 2.327    3    0
#> [16,]    1 2.332    1    0
#> [17,]    1 0.627    1    1
#> [18,]    1 0.000    1    1
#> [19,]    1 1.257    5    1
#> [20,]    1 2.057    7    1
#> [21,]    1 1.267    1    1
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 13.64138 
```
