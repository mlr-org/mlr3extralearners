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
#> [1] 4.263901
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   1    0    0    0  0    0  0  0
#>  [3,]  0    0  -1    0    0    0  0    0  0  0
#>  [4,]  0    0   0    0    0    0  0    0  0  1
#>  [5,]  0    0   0    0    0    0  0    0  0 -1
#>  [6,]  0    0   0    0    0    0  1    0  0  0
#>  [7,]  0    0   0    0    0    0 -1    0  0  0
#>  [8,]  0    0   0    0    0    0  0    0  1  0
#>  [9,]  0    0   0    0    0    0  0    0 -1  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    0   0    0    1    0  0    0  0  0
#> [13,]  0    0   0    0   -1    0  0    0  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> [18,]  0    0   0    1    0    0  0    0  0  0
#> [19,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [5,]    0    0    0    0 0.00    0    0  0.0    0 1.935
#>  [6,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [7,]    0    0    0    0 0.00    0   62  0.0    0 0.000
#>  [8,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [11,]    0    0    0    0 0.00    0    0 14.5    0 0.000
#> [12,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [13,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#> [14,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [15,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [18,]    0    0    0   79 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0   79 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.08160900
#>  [2,]  0.59379952
#>  [3,] -1.85514028
#>  [4,]  1.67672022
#>  [5,]  2.56282523
#>  [6,] -1.13117516
#>  [7,] -1.57605804
#>  [8,]  1.49233327
#>  [9,] -0.07134697
#> [10,] -1.47134697
#> [11,]  1.52823710
#> [12,]  1.74531641
#> [13,] -1.75213166
#> [14,]  2.38918971
#> [15,] -0.94721772
#> [16,] -2.03373866
#> [17,]  1.87155247
#> [18,]  0.98331347
#> [19,] -0.87949415
#> [20,] -0.87605804
#> [21,] -2.33118875
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.91839
#>  [2,] 20.40620
#>  [3,] 24.65514
#>  [4,] 19.72328
#>  [5,] 16.13717
#>  [6,] 19.23118
#>  [7,] 15.87606
#>  [8,] 22.90767
#>  [9,] 19.27135
#> [10,] 19.27135
#> [11,] 14.87176
#> [12,] 15.55468
#> [13,] 12.15213
#> [14,] 12.31081
#> [15,] 16.14722
#> [16,] 15.33374
#> [17,] 25.42845
#> [18,] 25.01669
#> [19,] 16.67949
#> [20,] 15.87606
#> [21,] 23.73119
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 25.428448
#> [2,] -1.567086
#> [3,] -2.008590
#> 
#> $x
#>       [,1] [,2]  [,3]
#>  [1,]    1    2 0.685
#>  [2,]    1    2 0.940
#>  [3,]    1    0 0.385
#>  [4,]    1    2 1.280
#>  [5,]    1    4 1.505
#>  [6,]    1    2 1.525
#>  [7,]    1    4 1.635
#>  [8,]    1    0 1.255
#>  [9,]    1    2 1.505
#> [10,]    1    2 1.505
#> [11,]    1    4 2.135
#> [12,]    1    4 1.795
#> [13,]    1    4 3.489
#> [14,]    1    4 3.410
#> [15,]    1    4 1.500
#> [16,]    1    4 1.905
#> [17,]    1    0 0.000
#> [18,]    1    0 0.205
#> [19,]    1    4 1.235
#> [20,]    1    4 1.635
#> [21,]    1    0 0.845
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 18.75635 
```
