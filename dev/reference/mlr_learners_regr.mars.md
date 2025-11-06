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
#> [1] 1 2 8
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
#> [1] 7.474621
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   0    0    0    0  1    0  0  0
#>  [5,]  0    0   0    0    0    0 -1    0  0  0
#>  [6,]  1    0   0    0    0    0  0    0  0  0
#>  [7,] -1    0   0    0    0    0  0    0  0  0
#>  [8,]  0    0   0    0    0    0  0    1  0  0
#>  [9,]  0    0   0    0    0    0  0   -1  0  0
#> [10,]  0    0   0    1    0    0  0    0  0  0
#> [11,]  0    0   0   -1    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  0    0   1    0    0    0  0    0  0  0
#> [17,]  0    0  -1    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [2,]    0    0    0  0.0    0    0    0  0.0    0 1.935
#>  [3,]    0    0    0  0.0    0    0    0  0.0    0 1.935
#>  [4,]    0    0    0  0.0    0    0   66  0.0    0 0.000
#>  [5,]    0    0    0  0.0    0    0   66  0.0    0 0.000
#>  [6,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [7,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#>  [8,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#>  [9,]    0    0    0  0.0    0    0    0 14.5    0 0.000
#> [10,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#> [11,]    0    0    0 78.7    0    0    0  0.0    0 0.000
#> [12,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [13,]    0    0    0  0.0    0    0    0  0.0    0 0.000
#> [14,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [15,]    0    1    0  0.0    0    0    0  0.0    0 0.000
#> [16,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> [17,]    0    0    4  0.0    0    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.2426054
#>  [2,]  0.3762331
#>  [3,] -2.1790788
#>  [4,]  0.7763437
#>  [5,] -1.7385371
#>  [6,]  1.0800824
#>  [7,]  0.1410244
#>  [8,] -2.1484531
#>  [9,]  0.0980347
#> [10,]  1.1009433
#> [11,]  5.9263319
#> [12,] -4.2856188
#> [13,] -1.8806802
#> [14,] -0.9876615
#> [15,]  3.1796893
#> [16,]  0.1704144
#> [17,]  2.2064401
#> [18,] -0.7148949
#> [19,]  0.2024590
#> [20,]  0.2895815
#> [21,] -1.3700480
#> 
#> $fitted.values
#>            [,1]
#>  [1,] 21.242605
#>  [2,] 20.623767
#>  [3,] 24.979079
#>  [4,] 17.923656
#>  [5,] 16.038537
#>  [6,] 15.319918
#>  [7,] 17.158976
#>  [8,] 17.348453
#>  [9,] 10.301965
#> [10,]  9.299057
#> [11,] 26.473668
#> [12,] 25.785619
#> [13,] 17.380680
#> [14,] 14.287661
#> [15,] 16.020311
#> [16,] 27.129586
#> [17,] 23.793560
#> [18,] 16.514895
#> [19,] 19.497541
#> [20,] 14.710418
#> [21,] 22.770048
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 22.416907
#> [2,] -4.778957
#> [3,]  1.071063
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.685 1.96
#>  [2,]    1 0.940 2.52
#>  [3,]    1 0.385 4.11
#>  [4,]    1 1.505 2.52
#>  [5,]    1 1.635 1.34
#>  [6,]    1 2.135 2.90
#>  [7,]    1 1.795 3.10
#>  [8,]    1 1.845 3.50
#>  [9,]    1 3.315 3.48
#> [10,]    1 3.489 3.32
#> [11,]    1 0.265 4.97
#> [12,]    1 0.530 5.51
#> [13,]    1 1.585 2.37
#> [14,]    1 1.905 0.91
#> [15,]    1 1.910 2.55
#> [16,]    1 0.000 4.40
#> [17,]    1 0.205 2.20
#> [18,]    1 1.235 0.00
#> [19,]    1 0.835 1.00
#> [20,]    1 1.635 0.10
#> [21,]    1 0.845 4.10
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 12.83002 
```
