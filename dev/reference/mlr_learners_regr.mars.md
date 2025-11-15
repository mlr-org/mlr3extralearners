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
#> [1]  1  4  8 12
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
#> [1] 12.07048
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
#>  [8,]  1    0   0    0    0    0  0    0  0  0
#>  [9,] -1    0   0    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  1  0
#> [11,]  0    0   0    0    0    0  0    0 -1  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    0   0    0    0    1  0    0  0  0
#> [15,]  0    0   0    0    0   -1  0    0  0  0
#> [16,]  0    1   0    0    0    0  0    0  0  0
#> [17,]  0   -1   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    4    0    0    0    0  0.0    0 0.000
#>  [3,]    0    0    4    0    0    0    0  0.0    0 0.000
#>  [4,]    0    0    0    0    0    0    0  0.0    0 1.513
#>  [5,]    0    0    0    0    0    0    0  0.0    0 1.513
#>  [6,]    0    0    0    0    0    0   52  0.0    0 0.000
#>  [7,]    0    0    0    0    0    0   52  0.0    0 0.000
#>  [8,]    0    0    0    0    0    0    0  0.0    0 0.000
#>  [9,]    0    0    0    0    0    0    0  0.0    0 0.000
#> [10,]    0    0    0    0    0    0    0  0.0    0 0.000
#> [11,]    0    0    0    0    0    0    0  0.0    0 0.000
#> [12,]    0    0    0    0    0    0    0 14.5    0 0.000
#> [13,]    0    0    0    0    0    0    0 14.5    0 0.000
#> [14,]    0    0    0    0    0    3    0  0.0    0 0.000
#> [15,]    0    0    0    0    0    3    0  0.0    0 0.000
#> [16,]    0    1    0    0    0    0    0  0.0    0 0.000
#> [17,]    0    1    0    0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.8844337
#>  [2,] -1.8415234
#>  [3,] -4.1773814
#>  [4,]  0.6313797
#>  [5,]  2.1632462
#>  [6,] -0.1057413
#>  [7,] -3.1646368
#>  [8,]  0.8210674
#>  [9,]  0.8938831
#> [10,] -0.6836244
#> [11,]  3.9290752
#> [12,]  3.7854396
#> [13,]  1.2052888
#> [14,]  3.4515427
#> [15,] -2.5856230
#> [16,] -0.5545634
#> [17,] -1.7563748
#> [18,]  0.4119123
#> [19,]  3.1972509
#> [20,] -2.4327154
#> [21,] -1.3034682
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.88443
#>  [2,] 22.84152
#>  [3,] 26.97738
#>  [4,] 20.76862
#>  [5,] 16.53675
#>  [6,] 14.40574
#>  [7,] 25.96464
#>  [8,] 18.37893
#>  [9,] 16.40612
#> [10,] 11.08362
#> [11,] 10.77092
#> [12,] 28.61456
#> [13,] 29.19471
#> [14,] 30.44846
#> [15,] 24.08562
#> [16,] 16.05456
#> [17,] 16.95637
#> [18,] 12.88809
#> [19,] 27.20275
#> [20,] 18.23272
#> [21,] 21.00347
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 19.324710
#> [2,] -3.328877
#> [3,]  4.423954
#> [4,]  1.439202
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.107    1 1.96
#>  [2,]    1 1.362    1 2.52
#>  [3,]    1 0.807    1 4.11
#>  [4,]    1 1.702    0 4.94
#>  [5,]    1 1.927    0 2.52
#>  [6,]    1 2.057    0 1.34
#>  [7,]    1 1.637    0 8.40
#>  [8,]    1 1.927    0 3.80
#>  [9,]    1 2.217    0 3.10
#> [10,]    1 3.911    0 3.32
#> [11,]    1 3.832    0 2.92
#> [12,]    1 0.687    1 4.97
#> [13,]    1 0.102    1 4.02
#> [14,]    1 0.322    1 5.40
#> [15,]    1 0.952    0 5.51
#> [16,]    1 2.007    0 2.37
#> [17,]    1 1.922    0 2.80
#> [18,]    1 2.327    0 0.91
#> [19,]    1 0.000    1 2.40
#> [20,]    1 1.657    1 0.00
#> [21,]    1 1.257    1 1.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 5.885854 
```
