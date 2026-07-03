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
#> [1]  1  8 10
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
#> [1] 11.38941
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  0    0   0    1    0    0  0    0  0  0
#>  [7,]  0    0   0   -1    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    1  0    0  0  0
#>  [9,]  0    0   0    0    0   -1  0    0  0  0
#> [10,]  0    1   0    0    0    0  0    0  0  0
#> [11,]  0   -1   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    0    0    0  0    0  1  0
#> [15,]  0    0   0    0    0    0  0    0 -1  0
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
#>  [6,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [7,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 0.00    3    0  0.0    0 0.000
#> [10,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [11,]    0    1    0  0.0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0  0.0 0.00    0    0 15.5    0 0.000
#> [17,]    0    0    0  0.0 0.00    0    0 15.5    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  2.02872139
#>  [2,] -4.71692667
#>  [3,]  0.55649512
#>  [4,] -2.89205424
#>  [5,]  1.85359382
#>  [6,] -0.26837731
#>  [7,] -1.86837731
#>  [8,] -1.17127861
#>  [9,]  1.10504447
#> [10,]  2.00504447
#> [11,] -0.09495553
#> [12,] -2.04640618
#> [13,]  4.88307333
#> [14,]  6.38307333
#> [15,]  0.50794576
#> [16,] -2.94350488
#> [17,]  1.05649512
#> [18,] -0.21692667
#> [19,] -0.79324974
#> [20,] -0.09905234
#> [21,] -3.26837731
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 18.97128
#>  [2,] 27.51693
#>  [3,] 18.14350
#>  [4,] 20.99205
#>  [5,] 12.44641
#>  [6,] 24.66838
#>  [7,] 24.66838
#>  [8,] 18.97128
#>  [9,] 15.29496
#> [10,] 15.29496
#> [11,] 15.29496
#> [12,] 12.44641
#> [13,] 27.51693
#> [14,] 27.51693
#> [15,] 20.99205
#> [16,] 18.14350
#> [17,] 18.14350
#> [18,] 27.51693
#> [19,] 31.19325
#> [20,] 19.79905
#> [21,] 24.66838
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 20.992054
#> [2,]  6.524872
#> [3,] -2.848549
#> 
#> $x
#>       [,1] [,2] [,3]
#>  [1,]    1    1    3
#>  [2,]    1    1    0
#>  [3,]    1    0    1
#>  [4,]    1    0    0
#>  [5,]    1    0    3
#>  [6,]    1    1    1
#>  [7,]    1    1    1
#>  [8,]    1    1    3
#>  [9,]    1    0    2
#> [10,]    1    0    2
#> [11,]    1    0    2
#> [12,]    1    0    3
#> [13,]    1    1    0
#> [14,]    1    1    0
#> [15,]    1    0    0
#> [16,]    1    0    1
#> [17,]    1    0    1
#> [18,]    1    1    0
#> [19,]    1    2    1
#> [20,]    1    2    5
#> [21,]    1    1    1
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 15.99644 
```
