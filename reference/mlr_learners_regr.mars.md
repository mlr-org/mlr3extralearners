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
#> [1] 1 4 6
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
#> [1] 4.640385
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
#>  [8,]  0    0   0    1    0    0  0    0  0  0
#>  [9,]  0    0   0   -1    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    1  0    0  0  0
#> [11,]  0    0   0    0    0   -1  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    1   0    0    0    0  0    0  0  0
#> [15,]  0   -1   0    0    0    0  0    0  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> [18,]  0    0   0    0    1    0  0    0  0  0
#> [19,]  0    0   0    0   -1    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0    0    0    0    0    0 0.000
#>  [2,]    0    0    4    0    0    0    0    0    0 0.000
#>  [3,]    0    0    4    0    0    0    0    0    0 0.000
#>  [4,]    0    0    0    0    0    0    0    0    0 1.935
#>  [5,]    0    0    0    0    0    0    0    0    0 1.935
#>  [6,]    0    0    0    0    0    0   62    0    0 0.000
#>  [7,]    0    0    0    0    0    0   62    0    0 0.000
#>  [8,]    0    0    0   79    0    0    0    0    0 0.000
#>  [9,]    0    0    0   79    0    0    0    0    0 0.000
#> [10,]    0    0    0    0    0    3    0    0    0 0.000
#> [11,]    0    0    0    0    0    3    0    0    0 0.000
#> [12,]    0    0    0    0    0    0    0    0    0 0.000
#> [13,]    0    0    0    0    0    0    0    0    0 0.000
#> [14,]    0    1    0    0    0    0    0    0    0 0.000
#> [15,]    0    1    0    0    0    0    0    0    0 0.000
#> [16,]    0    0    0    0    0    0    0    0    0 0.000
#> [17,]    0    0    0    0    0    0    0    0    0 0.000
#> [18,]    0    0    0    0    3    0    0    0    0 0.000
#> [19,]    0    0    0    0    3    0    0    0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -1.0953566
#>  [2,] -0.5533719
#>  [3,] -0.6229478
#>  [4,] -0.2970871
#>  [5,]  1.5680105
#>  [6,]  1.2223314
#>  [7,] -0.6248856
#>  [8,] -2.0248856
#>  [9,]  0.2275378
#> [10,] -1.5888370
#> [11,] -1.4741193
#> [12,]  3.2667618
#> [13,] -1.4524164
#> [14,] -3.5396906
#> [15,] -0.7232209
#> [16,]  2.3463859
#> [17,]  1.9629394
#> [18,]  2.1133027
#> [19,]  1.1238748
#> [20,]  0.5615483
#> [21,] -0.3958738
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 22.09536
#>  [2,] 21.55337
#>  [3,] 23.42295
#>  [4,] 14.59709
#>  [5,] 22.83199
#>  [6,] 21.57767
#>  [7,] 19.82489
#>  [8,] 19.82489
#>  [9,] 16.17246
#> [10,] 16.78884
#> [11,] 11.87412
#> [12,] 11.43324
#> [13,] 22.95242
#> [14,] 18.73969
#> [15,] 14.02322
#> [16,] 16.85361
#> [17,] 25.33706
#> [18,] 23.88670
#> [19,] 14.67613
#> [20,] 19.13845
#> [21,] 21.79587
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 25.499405
#> [2,] -2.125430
#> [3,] -0.040586
#> 
#> $x
#>       [,1]  [,2] [,3]
#>  [1,]    1 0.685   48
#>  [2,]    1 0.940   48
#>  [3,]    1 0.385   31
#>  [4,]    1 1.635  183
#>  [5,]    1 1.255    0
#>  [6,]    1 1.215   33
#>  [7,]    1 1.505   61
#>  [8,]    1 1.505   61
#>  [9,]    1 2.135  118
#> [10,]    1 1.845  118
#> [11,]    1 3.489  153
#> [12,]    1 3.410  168
#> [13,]    1 0.530   35
#> [14,]    1 1.500   88
#> [15,]    1 1.905  183
#> [16,]    1 1.910  113
#> [17,]    1 0.000    4
#> [18,]    1 0.205   29
#> [19,]    1 1.235  202
#> [20,]    1 0.835  113
#> [21,]    1 0.845   47
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 21.95834 
```
