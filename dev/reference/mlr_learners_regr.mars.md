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
#>  [1]  1  2  4  6  8 10 12 14 16 18
#> 
#> $selected.terms
#> [1]  1  2 10 12
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
#> [1] 11.70153
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    0    0    0  0    0  0  1
#>  [3,]  0    0   0    0    0    0  0    0  0 -1
#>  [4,]  0    0   1    0    0    0  0    0  0  0
#>  [5,]  0    0  -1    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    1    0  0    0  0  0
#>  [7,]  0    0   0    0   -1    0  0    0  0  0
#>  [8,]  0    1   0    0    0    0  0    0  0  0
#>  [9,]  0   -1   0    0    0    0  0    0  0  0
#> [10,]  1    0   0    0    0    0  0    0  0  0
#> [11,] -1    0   0    0    0    0  0    0  0  0
#> [12,]  0    0   0    0    0    0  0    1  0  0
#> [13,]  0    0   0    0    0    0  0   -1  0  0
#> [14,]  0    0   0    0    0    0  1    0  0  0
#> [15,]  0    0   0    0    0    0 -1    0  0  0
#> [16,]  0    0   0    0    0    1  0    0  0  0
#> [17,]  0    0   0    0    0   -1  0    0  0  0
#> [18,]  0    0   0    0    0    0  0    0  1  0
#> [19,]  0    0   0    0    0    0  0    0 -1  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#>  [2,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [3,]    0    0    0    0 0.00    0    0  0.0    0 1.615
#>  [4,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [5,]    0    0    4    0 0.00    0    0  0.0    0 0.000
#>  [6,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#>  [7,]    0    0    0    0 2.76    0    0  0.0    0 0.000
#>  [8,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#>  [9,]    0    1    0    0 0.00    0    0  0.0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [11,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [12,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [13,]    0    0    0    0 0.00    0    0 14.6    0 0.000
#> [14,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [15,]    0    0    0    0 0.00    0   52  0.0    0 0.000
#> [16,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [17,]    0    0    0    0 0.00    3    0  0.0    0 0.000
#> [18,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> [19,]    0    0    0    0 0.00    0    0  0.0    0 0.000
#> 
#> $residuals
#>             [,1]
#>  [1,] -0.8909428
#>  [2,] -3.6594257
#>  [3,]  0.9817064
#>  [4,] -2.9343908
#>  [5,]  1.3980905
#>  [6,] -1.0304530
#>  [7,]  1.9949300
#>  [8,]  1.5514977
#>  [9,] -1.0870532
#> [10,] -1.5267122
#> [11,] -0.7403701
#> [12,]  4.0128368
#> [13,]  4.1131811
#> [14,]  2.0201145
#> [15,]  3.8019014
#> [16,] -2.1025815
#> [17,]  0.3848843
#> [18,] -0.9023847
#> [19,] -0.7895698
#> [20,] -0.9067072
#> [21,] -3.6885515
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 21.89094
#>  [2,] 26.45943
#>  [3,] 20.41829
#>  [4,] 21.03439
#>  [5,] 17.80191
#>  [6,] 18.83045
#>  [7,] 14.40507
#>  [8,] 15.74850
#>  [9,] 16.28705
#> [10,] 11.92671
#> [11,] 11.14037
#> [12,] 10.68716
#> [13,] 28.28682
#> [14,] 28.37989
#> [15,] 30.09810
#> [16,] 23.60258
#> [17,] 15.11512
#> [18,] 16.10238
#> [19,] 28.08957
#> [20,] 15.90671
#> [21,] 25.08855
#> 
#> $lenb
#> [1] 19
#> 
#> $coefficients
#>           [,1]
#> [1,] 16.830008
#> [2,] -2.942895
#> [3,]  4.830059
#> [4,]  1.714239
#> 
#> $x
#>       [,1]  [,2] [,3] [,4]
#>  [1,]    1 1.005    1 1.86
#>  [2,]    1 0.705    1 4.01
#>  [3,]    1 1.600    0 4.84
#>  [4,]    1 1.845    0 5.62
#>  [5,]    1 1.825    0 3.70
#>  [6,]    1 1.825    0 4.30
#>  [7,]    1 2.455    0 2.80
#>  [8,]    1 2.115    0 3.00
#>  [9,]    1 2.165    0 3.40
#> [10,]    1 3.635    0 3.38
#> [11,]    1 3.809    0 3.22
#> [12,]    1 3.730    0 2.82
#> [13,]    1 0.585    1 4.87
#> [14,]    1 0.000    1 3.92
#> [15,]    1 0.220    1 5.30
#> [16,]    1 0.850    0 5.41
#> [17,]    1 1.905    0 2.27
#> [18,]    1 1.820    0 2.70
#> [19,]    1 0.320    1 4.30
#> [20,]    1 1.955    1 0.00
#> [21,]    1 1.165    1 4.00
#> 
#> attr(,"class")
#> [1] "mars"


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#>   8.1465 
```
