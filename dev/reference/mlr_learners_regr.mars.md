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
#> [1]  1  4 10
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
#> [1] 10.62949
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
#>  [8,]  0    0   0    0    1    0  0    0  0  0
#>  [9,]  0    0   0    0   -1    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    1  0  0
#> [11,]  0    0   0    0    0    0  0   -1  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  1    0   0    0    0    0  0    0  0  0
#> [15,] -1    0   0    0    0    0  0    0  0  0
#> [16,]  0    0   0    1    0    0  0    0  0  0
#> [17,]  0    0   0   -1    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [3,]    0    0    4  0.0 0.00    0    0  0.0    0 0.000
#>  [4,]    0    0    0  0.0 0.00    0    0  0.0    0 1.835
#>  [5,]    0    0    0  0.0 0.00    0    0  0.0    0 1.835
#>  [6,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#>  [7,]    0    0    0  0.0 0.00    0   62  0.0    0 0.000
#>  [8,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#>  [9,]    0    0    0  0.0 2.76    0    0  0.0    0 0.000
#> [10,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [11,]    0    0    0  0.0 0.00    0    0 14.5    0 0.000
#> [12,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [14,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [15,]    0    0    0  0.0 0.00    0    0  0.0    0 0.000
#> [16,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> [17,]    0    0    0 71.1 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>               [,1]
#>  [1,]  0.523432116
#>  [2,] -1.720314741
#>  [3,] -0.015809726
#>  [4,] -3.022420974
#>  [5,] -1.929219919
#>  [6,]  2.310432464
#>  [7,] -2.081738962
#>  [8,]  0.003500848
#>  [9,] -0.587628018
#> [10,]  4.694285604
#> [11,]  5.946077515
#> [12,] -3.791247400
#> [13,] -1.986140549
#> [14,] -3.093172481
#> [15,]  2.963392876
#> [16,]  0.792911109
#> [17,]  2.609911626
#> [18,] -0.841251516
#> [19,]  0.291247130
#> [20,]  0.018977730
#> [21,] -1.085224732
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.47657
#>  [2,] 24.52031
#>  [3,] 21.41581
#>  [4,] 21.12242
#>  [5,] 16.22922
#>  [6,] 22.08957
#>  [7,] 19.88174
#>  [8,] 17.29650
#>  [9,] 10.98763
#> [10,] 10.00571
#> [11,] 27.95392
#> [12,] 25.29125
#> [13,] 17.48614
#> [14,] 18.29317
#> [15,] 16.23661
#> [16,] 26.50709
#> [17,] 23.39009
#> [18,] 16.64125
#> [19,] 19.40875
#> [20,] 14.98102
#> [21,] 22.48522
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 22.518223
#> [2,] -4.402226
#> [3,]  1.006611
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 1.040 2.52
#>  [2,]    1 0.485 4.11
#>  [3,]    1 1.380 4.94
#>  [4,]    1 1.625 5.72
#>  [5,]    1 1.735 1.34
#>  [6,]    1 1.355 5.50
#>  [7,]    1 1.605 4.40
#>  [8,]    1 1.895 3.10
#>  [9,]    1 3.415 3.48
#> [10,]    1 3.510 2.92
#> [11,]    1 0.000 5.40
#> [12,]    1 0.630 5.51
#> [13,]    1 1.685 2.37
#> [14,]    1 1.600 2.80
#> [15,]    1 2.010 2.55
#> [16,]    1 0.100 4.40
#> [17,]    1 0.305 2.20
#> [18,]    1 1.335 0.00
#> [19,]    1 0.935 1.00
#> [20,]    1 1.735 0.10
#> [21,]    1 0.945 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 9.137406 
```
