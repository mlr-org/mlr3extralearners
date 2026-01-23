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
#> [1] 7.052959
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  0    1  0  0
#>  [5,]  0    0   0    0    0    0  0   -1  0  0
#>  [6,]  0    1   0    0    0    0  0    0  0  0
#>  [7,]  0   -1   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    1  0    0  0  0
#>  [9,]  0    0   0    0    0   -1  0    0  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  1    0  0  0
#> [13,]  0    0   0    0    0    0 -1    0  0  0
#> [14,]  1    0   0    0    0    0  0    0  0  0
#> [15,] -1    0   0    0    0    0  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> [18,]  0    0   0    0    0    0  0    0  1  0
#> [19,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [3,]    0    0    0  0.0    0    0    0  0.0    0 1.513
#>  [4,]    0    0    0  0.0    0    0    0 15.5    0 0.000
#>  [5,]    0    0    0  0.0    0    0    0 15.5    0 0.000
#>  [6,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#>  [7,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0    0    3    0  0.0    0 0.000
#> [10,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [11,]    0    0    0 71.1    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#> [13,]    0    0    0  0.0    0    0   52  0.0    0 0.000
#> [14,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [18,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [19,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,] -1.20541518
#>  [2,] -0.34362716
#>  [3,] -2.94383524
#>  [4,] -0.29855727
#>  [5,]  0.38103337
#>  [6,] -2.26245094
#>  [7,]  2.06428393
#>  [8,] -2.35635192
#>  [9,] -2.20869806
#> [10,]  1.11212223
#> [11,]  0.01221387
#> [12,]  0.90781224
#> [13,]  1.98310754
#> [14,]  0.96292223
#> [15,]  4.40033138
#> [16,] -3.39739567
#> [17,]  3.02218906
#> [18,]  1.00925132
#> [19,]  1.87292248
#> [20,] -0.83956638
#> [21,] -1.87229183
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 22.205415
#>  [2,] 21.343627
#>  [3,] 25.743835
#>  [4,] 21.698557
#>  [5,] 18.318967
#>  [6,] 16.562451
#>  [7,] 22.335716
#>  [8,] 25.156352
#>  [9,] 20.008698
#> [10,] 15.287878
#> [11,] 17.287786
#> [12,]  9.492188
#> [13,]  8.416892
#> [14,] 29.437078
#> [15,] 29.499669
#> [16,] 18.597396
#> [17,] 16.177811
#> [18,] 24.990749
#> [19,] 28.527078
#> [20,] 20.539566
#> [21,] 23.272292
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>            [,1]
#> [1,] 27.2687669
#> [2,] -5.3533815
#> [3,]  0.8987933
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.107 0.96
#>  [2,]    1 1.362 1.52
#>  [3,]    1 0.807 3.11
#>  [4,]    1 1.702 3.94
#>  [5,]    1 1.927 1.52
#>  [6,]    1 2.057 0.34
#>  [7,]    1 1.677 4.50
#>  [8,]    1 1.637 7.40
#>  [9,]    1 1.927 3.40
#> [10,]    1 2.557 1.90
#> [11,]    1 2.217 2.10
#> [12,]    1 3.737 2.48
#> [13,]    1 3.911 2.32
#> [14,]    1 0.102 3.02
#> [15,]    1 0.322 4.40
#> [16,]    1 1.922 1.80
#> [17,]    1 2.332 1.55
#> [18,]    1 0.627 1.20
#> [19,]    1 0.000 1.40
#> [20,]    1 1.257 0.00
#> [21,]    1 1.267 3.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.77514 
```
