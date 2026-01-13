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
#> [1] 4.155804
#> 
#> $factor
#>       am carb cyl disp drat gear hp qsec vs wt
#>  [1,]  0    0   0    0    0    0  0    0  0  0
#>  [2,]  0    0   0    1    0    0  0    0  0  0
#>  [3,]  0    0   0   -1    0    0  0    0  0  0
#>  [4,]  0    1   0    0    0    0  0    0  0  0
#>  [5,]  0   -1   0    0    0    0  0    0  0  0
#>  [6,]  0    0   0    0    0    1  0    0  0  0
#>  [7,]  0    0   0    0    0   -1  0    0  0  0
#>  [8,]  0    0   1    0    0    0  0    0  0  0
#>  [9,]  0    0  -1    0    0    0  0    0  0  0
#> [10,]  0    0   0    0    0    0  0    0  0  1
#> [11,]  0    0   0    0    0    0  0    0  0 -1
#> [12,]  0    0   0    0    0    0  0    0  1  0
#> [13,]  0    0   0    0    0    0  0    0 -1  0
#> [14,]  0    0   0    0    1    0  0    0  0  0
#> [15,]  0    0   0    0   -1    0  0    0  0  0
#> [16,]  1    0   0    0    0    0  0    0  0  0
#> [17,] -1    0   0    0    0    0  0    0  0  0
#> 
#> $cuts
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#>  [1,]    0    0    0    0 0.00    0    0    0    0 0.000
#>  [2,]    0    0    0   79 0.00    0    0    0    0 0.000
#>  [3,]    0    0    0   79 0.00    0    0    0    0 0.000
#>  [4,]    0    1    0    0 0.00    0    0    0    0 0.000
#>  [5,]    0    1    0    0 0.00    0    0    0    0 0.000
#>  [6,]    0    0    0    0 0.00    3    0    0    0 0.000
#>  [7,]    0    0    0    0 0.00    3    0    0    0 0.000
#>  [8,]    0    0    4    0 0.00    0    0    0    0 0.000
#>  [9,]    0    0    4    0 0.00    0    0    0    0 0.000
#> [10,]    0    0    0    0 0.00    0    0    0    0 1.935
#> [11,]    0    0    0    0 0.00    0    0    0    0 1.935
#> [12,]    0    0    0    0 0.00    0    0    0    0 0.000
#> [13,]    0    0    0    0 0.00    0    0    0    0 0.000
#> [14,]    0    0    0    0 2.76    0    0    0    0 0.000
#> [15,]    0    0    0    0 2.76    0    0    0    0 0.000
#> [16,]    0    0    0    0 0.00    0    0    0    0 0.000
#> [17,]    0    0    0    0 0.00    0    0    0    0 0.000
#> 
#> $residuals
#>              [,1]
#>  [1,]  0.45171693
#>  [2,]  1.64124012
#>  [3,]  2.57341845
#>  [4,] -1.08983877
#>  [5,] -1.52470504
#>  [6,]  1.47348718
#>  [7,] -0.21939790
#>  [8,] -0.03628131
#>  [9,] -1.43628131
#> [10,]  1.73635847
#> [11,]  1.84683529
#> [12,] -0.13705836
#> [13,] -1.52353167
#> [14,] -1.11948157
#> [15,]  2.99707040
#> [16,] -0.93819218
#> [17,] -1.89773074
#> [18,]  1.45921779
#> [19,] -0.95355584
#> [20,] -0.82470504
#> [21,] -2.47858489
#> 
#> $fitted.values
#>           [,1]
#>  [1,] 20.54828
#>  [2,] 19.75876
#>  [3,] 16.12658
#>  [4,] 19.18984
#>  [5,] 15.82471
#>  [6,] 22.92651
#>  [7,] 23.01940
#>  [8,] 19.23628
#>  [9,] 19.23628
#> [10,] 14.66364
#> [11,] 15.45316
#> [12,] 15.33706
#> [13,] 11.92353
#> [14,] 11.51948
#> [15,] 11.70293
#> [16,] 16.13819
#> [17,] 15.19773
#> [18,] 25.84078
#> [19,] 16.75356
#> [20,] 15.82471
#> [21,] 23.87858
#> 
#> $lenb
#> [1] 17
#> 
#> $coefficients
#>           [,1]
#> [1,] 25.840782
#> [2,] -1.554850
#> [3,] -2.322127
#> 
#> $x
#>       [,1] [,2]  [,3]
#>  [1,]    1    2 0.940
#>  [2,]    1    2 1.280
#>  [3,]    1    4 1.505
#>  [4,]    1    2 1.525
#>  [5,]    1    4 1.635
#>  [6,]    1    0 1.255
#>  [7,]    1    0 1.215
#>  [8,]    1    2 1.505
#>  [9,]    1    2 1.505
#> [10,]    1    4 2.135
#> [11,]    1    4 1.795
#> [12,]    1    4 1.845
#> [13,]    1    4 3.315
#> [14,]    1    4 3.489
#> [15,]    1    4 3.410
#> [16,]    1    4 1.500
#> [17,]    1    4 1.905
#> [18,]    1    0 0.000
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
#> 17.29101 
```
